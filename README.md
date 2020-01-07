## NGP Installer ##

Requires NSIS - https://nsis.sourceforge.io/Main_Page

Script usage

1. Put ngp files to install into files directory with coresponding folders structure, including updated physics files.
2. Put `CopyFiles /SILENT "$INSTDIR\physics\xy" "$INSTDIR\work-temp\physics"` command for every file or directory from files\physics dir to the script (see line 47).
3. Compile ngp-install.nsi script with NSIS.

File ngp-setup.exe is the output installer. 
