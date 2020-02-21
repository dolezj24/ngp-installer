!include "MUI2.nsh"
!include LogicLib.nsh

Unicode True

;-------------------------------------
; The installer file name
OutFile "ngp-setup.exe"

;--------------------------------------
; The name of the installer
Name "NGP physics"
DirText "$(DIR_TEXT)"
InstallDirRegKey  HKLM "SOFTWARE\SCi Games\Richard Burns Rally\InstallPath" ""

RequestExecutionLevel admin

;--------------------------------
; Pages install
!insertmacro MUI_PAGE_WELCOME
Page Directory "" "" onLeaveInstDir
!insertmacro MUI_PAGE_INSTFILES

!include "langmacros.nsh"

!insertmacro LANG_LOAD "English" ;default
!insertmacro LANG_LOAD "Czech"

Function .onInit
  !insertmacro MUI_LANGDLL_DISPLAY
FunctionEnd

!define WORK_DIR "$TEMP\ngp-installer-work-temp"
!define BACKUP_DIR "$INSTDIR\ngp-installer-backup"

Function onLeaveInstDir
  IfFileExists $INSTDIR\RichardBurnsRally.exe PathGood
    MessageBox MB_OK|MB_ICONEXCLAMATION "$(RBR_NOT_FOUND)"
    Abort
  PathGood:
FunctionEnd

Section "Install"
  SectionIn RO
  SetOutPath "$INSTDIR"
  Var /GLOBAL errMessage
  Var /GLOBAL physicsDirExists
  Var /GLOBAL ngpInstalled

  Call CreateBackup

  StrCpy $errMessage "$(CANT_INSTALL) $INSTDIR."
  File /r "files\"
  Call checkErrors

  StrCpy $errMessage "$(CANT_CREATE_DIR) ${WORK_DIR}."
  CreateDirectory "${WORK_DIR}"
  Call checkErrors

  StrCpy $errMessage "$(CANT_COPY_FILE) $INSTDIR\physics.rbz -> ${WORK_DIR}."
  CopyFiles /SILENT "$INSTDIR\physics.rbz" "${WORK_DIR}"
  Call checkErrors

  Rename "$INSTDIR\7za.exe" "${WORK_DIR}\7za.exe"

  StrCpy $errMessage "$(CANT_CREATE_DIR) ${WORK_DIR}\physics."
  CreateDirectory "${WORK_DIR}\physics"
  Call checkErrors
;--- Include CopyFiles /SILENT "$INSTDIR\physics\xy" "${WORK_DIR}\physics" for every file or directory from physics dir here
  StrCpy $errMessage "$(CANT_COPY_FILE) $INSTDIR\physics\physics.lsp -> ${WORK_DIR}\physics."
  CopyFiles /SILENT "$INSTDIR\physics\physics.lsp" "${WORK_DIR}\physics"
  Call checkErrors

  StrCpy $errMessage "$(CANT_SET_ATTR) ${WORK_DIR}\physics.rbz."
  SetFileAttributes "${WORK_DIR}\physics.rbz" NORMAL
  Call checkErrors

  Var /GLOBAL zipReturnVal
  StrCpy $errMessage "$(PHYSICS_UNKNOWN_ERR)"
  ExecWait '"${WORK_DIR}\7za.exe" a ${WORK_DIR}\physics.rbz ${WORK_DIR}\Physics' $zipReturnVal
  Call checkErrors

  ${If} $zipReturnVal != 0
    DetailPrint "$(SEV_ZIP_ERR) $zipReturnVal."
    Call onErr
  ${EndIf}

  StrCpy $errMessage "$(CANT_COPY_FILE) ${WORK_DIR}\physics.rbz -> $INSTDIR."
  CopyFiles /SILENT "${WORK_DIR}\physics.rbz" "$INSTDIR"
  Call CheckErrors

  Call cleanUp

SectionEnd

Function CreateBackup
  StrCpy $errMessage "$(CANT_CREATE_BACKUP) $(CANT_CREATE_DIR) ${BACKUP_DIR}."
  CreateDirectory "${BACKUP_DIR}"
  Call checkErrors

  StrCpy $ngpInstalled "false"
  StrCpy $errMessage "$(CANT_CREATE_BACKUP) $(CANT_COPY_FILE) $INSTDIR\plugins\physicsNG ${BACKUP_DIR}\plugins."
  IfFileExists "$INSTDIR\plugins\physicsNG" 0 +4
    CopyFiles /SILENT "$INSTDIR\plugins\physicsNG" "${BACKUP_DIR}\plugins\physicsNG"
    StrCpy $ngpInstalled "true"
    Call checkErrors

  StrCpy $errMessage "$(CANT_CREATE_BACKUP) $(CANT_COPY_FILE) $INSTDIR\plugins\physicsNG.dll ${BACKUP_DIR}\plugins."
  IfFileExists "$INSTDIR\plugins\physicsNG.dll" 0 +4
    CopyFiles /SILENT "$INSTDIR\plugins\physicsNG.dll" "${BACKUP_DIR}\plugins"
    StrCpy $ngpInstalled "true"
    Call checkErrors

  StrCpy $physicsDirExists "false"
  IfFileExists "$INSTDIR\physics" 0 phys_dir_not
    StrCpy $physicsDirExists "true"
    StrCpy $errMessage "$(CANT_CREATE_BACKUP) $(CANT_COPY_FILE) $INSTDIR\physics ${BACKUP_DIR}."
    CopyFiles /SILENT $INSTDIR\physics "${BACKUP_DIR}"
    Call checkErrors

  phys_dir_not:
FunctionEnd

Function checkErrors
  IfErrors 0 +3
    DetailPrint "$errMessage"
    Call onErr
FunctionEnd

Function onErr
  MessageBox MB_OK|MB_ICONEXCLAMATION "$(INSTALL_FAILED)"
  ${If} $ngpInstalled == "true"
    CopyFiles /SILENT "${BACKUP_DIR}\plugins\physicsNG" "$INSTDIR\plugins"
    CopyFiles /SILENT "${BACKUP_DIR}\plugins\physicsNG.dll" "$INSTDIR\plugins"
  ${EndIf}
  CopyFiles /SILENT "${BACKUP_DIR}\physics" $INSTDIR
  Call cleanUp
  Abort
FunctionEnd

Function cleanUp
  ${If} $physicsDirExists == "false"
    RmDir /r "$INSTDIR\physics"
  ${EndIf}
  RmDir /r "${WORK_DIR}"
  RmDir /r "${BACKUP_DIR}"
FunctionEnd
