; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{90499FC8-EBF4-4D5D-BF8E-85531F3BC517}
AppName=Superior Launcher
AppVersion=1.2
;AppVerName=Superior Launcher 1.2
AppPublisher=ITS NIGHTOWL
AppPublisherURL=https://forum.superiorservers.co/topic/43977-cross-platform-sup-launcher
AppSupportURL=https://forum.superiorservers.co/topic/43977-cross-platform-sup-launcher
AppUpdatesURL=https://forum.superiorservers.co/topic/43977-cross-platform-sup-launcher
DefaultDirName={autopf}\Superior Launcher
DisableDirPage=yes
DisableProgramGroupPage=yes
; The [Icons] "quicklaunchicon" entry uses {userappdata} but its [Tasks] entry has a proper IsAdminInstallMode Check.
UsedUserAreasWarning=no
; Remove the following line to run in administrative install mode (install for all users.)
PrivilegesRequired=lowest
OutputDir=C:\Users\Chris\OneDrive\Documents\sup-launcher\distributions
OutputBaseFilename=SuperiorLauncher
SetupIconFile=C:\Users\Chris\OneDrive\Documents\sup-launcher\core\app.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 6.1; Check: not IsAdminInstallMode

[Files]
Source: "C:\Users\Chris\OneDrive\Documents\sup-launcher\core\dist\main\main.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Chris\OneDrive\Documents\sup-launcher\core\dist\main\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\Superior Launcher"; Filename: "{app}\main.exe"
Name: "{autodesktop}\Superior Launcher"; Filename: "{app}\main.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\Superior Launcher"; Filename: "{app}\main.exe"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\main.exe"; Description: "{cm:LaunchProgram,Superior Launcher}"; Flags: nowait postinstall skipifsilent
