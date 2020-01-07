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

Section "Install"
  SectionIn RO
  SetOutPath "$INSTDIR"

  Var /GLOBAL physicsDirExists
  StrCpy $physicsDirExists "false"
  IfFileExists "$INSTDIR\physics" 0 +2
    StrCpy $physicsDirExists "true"

  File /r "files\"

  CopyFiles /SILENT "$INSTDIR\physics.rbz" "$INSTDIR\work-temp"
  CreateDirectory "$INSTDIR\work-temp\physics"
;--- Include CopyFiles /SILENT "$INSTDIR\physics\xy" "$INSTDIR\work-temp\physics" for every file or directory from physics dir here
  CopyFiles /SILENT "$INSTDIR\physics\physics.lsp" "$INSTDIR\work-temp\physics"

  ExecWait '"$INSTDIR\work-temp\7za.exe" u $INSTDIR\work-temp\physics.rbz $INSTDIR\work-temp\Physics'

  CopyFiles /SILENT "$INSTDIR\work-temp\physics.rbz" "$INSTDIR"

  ${If} $physicsDirExists == "false"
    RmDir /r "$INSTDIR\physics"
  ${EndIf}

  RmDir /r "$INSTDIR\work-temp"

SectionEnd
