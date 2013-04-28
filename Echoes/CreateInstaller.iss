#include "scripts\products.iss"
#include "scripts\products\winversion.iss"
#include "scripts\products\fileversion.iss"
#include "scripts\products\msi31.iss"
#include "scripts\products\ie6.iss"
#include "scripts\products\dotnetfx35sp1.iss"
#define MyAppVer GetFileVersion(".\CompiledFiles\TestDesigner.exe")
[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the Igerman.)
AppVersion={#MyAppVer}
AppId={{1F8E716E-EEC0-43F5-9CD9-131752D0C773}
AppName=Thunderbolt EIA/CLIA Test Designer
AppPublisher=Gold Standard Diagnostics
AppPublisherURL=http://www.gsdx.us/
AppSupportURL=http://www.gsdx.us/
AppUpdatesURL=http://www.gsdx.us/
AppCopyright=Copyright (C) 2013 Gold Standard Diagnostics
DefaultDirName={pf}\Gold Standard Diagnostics\ThunderBolt\EIA\TestDesigner
DisableDirPage=yes
DefaultGroupName=Gold Standard Diagnostics\Thunderbolt EIA
DisableProgramGroupPage=yes
OutputBaseFilename=ThunderboltEIATestDesignerSetup_{#MyAppVer}
Compression=lzma/ultra
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64
SetupIconFile=GSD.ico

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"

[Files]
Source: ".\CompiledFiles\TestDesigner.exe"; DestDir: {code:GetCleanInstallFolder}; Flags: ignoreversion
Source: ".\CompiledFiles\*.dll"; DestDir: {code:GetCleanInstallFolder}; Flags: ignoreversion recursesubdirs
Source: ".\CompiledFiles\*.pdb"; DestDir: {code:GetCleanInstallFolder}; Flags: ignoreversion recursesubdirs
Source: ".\CompiledFiles\*.xml"; DestDir: {code:GetCleanInstallFolder}; Flags: ignoreversion recursesubdirs
Source: ".\Included Default Files\*.*"; DestDir: {code:GetCleanInstallFolder}; Flags: ignoreversion recursesubdirs createallsubdirs; Permissions: users-modify
;Source: "Test Designer Release Notes.html"; DestDir: {code:GetCleanInstallFolder}; Flags: ignoreversion
Source: ".\Included Files\*.*"; DestDir: {code:GetDataFolder}; Flags: ignoreversion recursesubdirs createallsubdirs; Permissions: users-full

[Icons]
Name: "{group}\Thunderbolt EIA Test Designer"; Filename: "{app}\TestDesigner.exe"
;Name: "{group}\Thunderbolt EIA Test Designer Release Notes"; Filename: "{app}\Test Designer Release Notes.html"
Name: "{group}\Data Folder"; Filename: {code:GetDataFolder}
Name: "{commondesktop}\Thunderbolt EIA Test Designer"; Filename: "{app}\TestDesigner.exe";


[Code]

var
  UsagePage: TInputOptionWizardPage;
  AppDirPage: TInputDirWizardPage;
  DataDirPage: TInputDirWizardPage;
  InstallFolderCleaned: Boolean;

procedure InitializeWizard;
begin
	initwinversion();
  if not minwinspversion(5, 1, 2) then
  begin
		MsgBox('Windows XP Service Pack 2 is the minimum supported system.', mbError, MB_OK);
		Abort();
	end;
	msi31('3.0');
	dotnetfx35sp1();
	InstallFolderCleaned := false;
end;

function ShouldSkipPage(PageID: Integer): Boolean;
begin

end;

function GetDataFolder(par: String): String;
begin
  result := ExpandConstant('{commonappdata}') + '\Gold Standard Diagnostics\ThunderBolt EIA\DataFolder';
end;

function GetCleanInstallFolder(par: String): String;
begin
  result := ExpandConstant('{app}');
  if not InstallFolderCleaned then
  begin
    DelTree(result + '\DefaultDispenses', true, true, true);
    DelTree(result + '\DefaultFluidPickups', true, true, true);
    DelTree(result + '\DefaultProbeWash', true, true, true);
    DelTree(result + '\DefaultWellWash', true, true, true);
    InstallFolderCleaned := true;
  end;
end;

procedure CurStepChanged(CurStep: TSetupStep);
begin

end;

