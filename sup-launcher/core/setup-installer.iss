; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{4B65016F-3F9E-4E9A-8E1B-BDF060641836}
AppName=Sup Launcher
AppVersion=1.2
;AppVerName=Sup Launcher 1.2
AppPublisher=ITS NIGHTOWL
AppPublisherURL=https://github.com/itsretr0n/suplauncher
AppSupportURL=https://github.com/itsretr0n/suplauncher
AppUpdatesURL=https://github.com/itsretr0n/suplauncher
DefaultDirName={autopf}\Sup Launcher
DisableDirPage=yes
DisableProgramGroupPage=yes
; The [Icons] "quicklaunchicon" entry uses {userappdata} but its [Tasks] entry has a proper IsAdminInstallMode Check.
UsedUserAreasWarning=no
; Remove the following line to run in administrative install mode (install for all users.)
PrivilegesRequired=lowest
OutputDir=C:\Users\Chris\OneDrive\Documents\python\sup-launcher\distributions
OutputBaseFilename=Sup Launcher
SetupIconFile=C:\Users\Chris\OneDrive\Documents\python\sup-launcher\core\app.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 6.1; Check: not IsAdminInstallMode

[Files]
Source: "C:\Users\Chris\OneDrive\Documents\python\sup-launcher\core\dist\main\main.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Chris\OneDrive\Documents\python\sup-launcher\core\dist\main\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\Sup Launcher"; Filename: "{app}\main.exe"
Name: "{autodesktop}\Sup Launcher"; Filename: "{app}\main.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\Sup Launcher"; Filename: "{app}\main.exe"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\main.exe"; Description: "{cm:LaunchProgram,Sup Launcher}"; Flags: nowait postinstall skipifsilent

