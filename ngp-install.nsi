!include "MUI2.nsh"
!include LogicLib.nsh

Unicode True

;-------------------------------------
; The installer file name
OutFile "ngp-setup.exe"

;--------------------------------------
; The name of the installer
Name "NGP physics installation"
DirText "$(DIR_TEXT)"
InstallDirRegKey  HKLM "SOFTWARE\SCi Games\Richard Burns Rally\InstallPath" ""

RequestExecutionLevel admin

;--------------------------------
; Pages install
!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES

!include "langmacros.nsh"

!insertmacro LANG_LOAD "English" ;default
!insertmacro LANG_LOAD "Czech"

Function .onInit
  !insertmacro MUI_LANGDLL_DISPLAY
FunctionEnd

!define WORK_DIR "$TEMP\ngp-installer-work-temp"

Section "Install"
  SectionIn RO
  SetOutPath "$INSTDIR"

  Var /GLOBAL physicsDirExists
  StrCpy $physicsDirExists "false"
  IfFileExists "$INSTDIR\physics" 0 +2
    StrCpy $physicsDirExists "true"

  File /r "files\"

  CreateDirectory "${WORK_DIR}"
  CopyFiles /SILENT "$INSTDIR\physics.rbz" "${WORK_DIR}"
  Rename "$INSTDIR\7za.exe" "${WORK_DIR}\7za.exe"
  CreateDirectory "${WORK_DIR}\physics"
;--- Include CopyFiles /SILENT "$INSTDIR\physics\xy" "${WORK_DIR}\physics" for every file or directory from physics dir here
  CopyFiles /SILENT "$INSTDIR\physics\physics.lsp" "${WORK_DIR}\physics"

  SetFileAttributes "${WORK_DIR}\physics.rbz" NORMAL
  ExecWait '"${WORK_DIR}\7za.exe" u ${WORK_DIR}\physics.rbz ${WORK_DIR}\Physics'

  CopyFiles /SILENT "${WORK_DIR}\physics.rbz" "$INSTDIR"

  ${If} $physicsDirExists == "false"
    RmDir /r "$INSTDIR\physics"
  ${EndIf}

  RmDir /r "${WORK_DIR}"

SectionEnd
