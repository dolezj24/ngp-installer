!include "MUI2.nsh"

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
  IfFileExists "$INSTDIR\physics" 0 skipPhysicsDir
    File /r "files\physics"

  skipPhysicsDir:
  File /r "files\plugins"
  File /r "files\work-temp"


  CopyFiles /SILENT "$INSTDIR\physics.rbz" "$INSTDIR\work-temp"

  ExecWait '"$INSTDIR\work-temp\7za.exe" u $INSTDIR\work-temp\physics.rbz $INSTDIR\work-temp\Physics'

  CopyFiles /SILENT "$INSTDIR\work-temp\physics.rbz" "$INSTDIR"

  RmDir /r "$INSTDIR\work-temp"

SectionEnd
