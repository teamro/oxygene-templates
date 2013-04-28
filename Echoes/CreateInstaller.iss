[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the Igerman.)
AppVersion=1.0
AppId={{780D1BA1-20DD-4498-BD84-E07D6B4DA530}
AppName=Oxygene Template Installer
AppPublisher=Team RO
DefaultDirName={userdocs}
DisableDirPage=yes
DisableProgramGroupPage=yes
OutputBaseFilename=OxygeneTemplates
Compression=lzma/ultra
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64
SetupIconFile=Oxygene.ico

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"

[Components]
Name: "vs2010"; Description: "Install into Visual Studio 2010"; Types: full;
Name: "vs2010\reporting"; Description: "Templates for reporting"; Types: full
Name: "vs2010\reporting\XtraReports2012_1"; Description: "XtraReports 2012.1"; Types: full
Name: "vs2010\reporting\XtraReports2012_2"; Description: "XtraReports 2012.2"; Types: full
Name: "vs2012"; Description: "Install into Visual Studio 2012"; Types: full;
Name: "vs2012\Reporting"; Description: "Templates for reporting"; Types: full
Name: "vs2012\Reporting\XtraReports2012_1"; Description: "XtraReports 2012.1"; Types: full
Name: "vs2012\Reporting\XtraReports2012_2"; Description: "XtraReports 2012.2"; Types: full

[Files]
Source: "BuildOutput\XtraReports2012.1.zip"; DestDir: "{app}\Visual Studio 2010\Templates\ItemTemplates\Oxygene\Reporting\1033"; Components: vs2010\reporting\XtraReports2012_1
Source: "BuildOutput\XtraReports2012.2.zip"; DestDir: "{app}\Visual Studio 2010\Templates\ItemTemplates\Oxygene\Reporting\1033"; Components: vs2010\reporting\XtraReports2012_2
Source: "BuildOutput\XtraReports2012.1.zip"; DestDir: "{app}\Visual Studio 2012\Templates\ItemTemplates\Oxygene\Reporting\1033"; Components: vs2012\reporting\XtraReports2012_1
Source: "BuildOutput\XtraReports2012.2.zip"; DestDir: "{app}\Visual Studio 2012\Templates\ItemTemplates\Oxygene\Reporting\1033"; Components: vs2012\reporting\XtraReports2012_2
