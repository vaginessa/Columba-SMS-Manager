; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Columba"
#define MyAppVersion "1.0"
#define MyAppPublisher "AD Company, Inc."
#define MyAppExeName "columba.exe"
#define ProjectRoot  "C:\Users\Aram\Documents\Visual Studio 2013\Projects\ColumbaSMSManager"
#define AppBuildRoot "C:\Users\Aram\Documents\Visual Studio 2013\Projects\ColumbaSMSManager\build\Release-x64\bin"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{3DB9F9FE-5B96-417A-8188-096038524252}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
OutputDir={#ProjectRoot}\setup\ColumbaSetup
OutputBaseFilename=Setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "armenian"; MessagesFile: "compiler:Languages\Armenian.islu"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "{#AppBuildRoot}\redist\vcredist_x64.exe";  DestDir: "{tmp}"; Flags: deleteafterinstall
Source: "{#AppBuildRoot}\columba.exe";              DestDir: "{app}"; Flags: ignoreversion
Source: "{#AppBuildRoot}\Qt5Core.dll";              DestDir: "{app}"; Flags: ignoreversion
Source: "{#AppBuildRoot}\Qt5Gui.dll";               DestDir: "{app}"; Flags: ignoreversion
Source: "{#AppBuildRoot}\Qt5Multimedia.dll";        DestDir: "{app}"; Flags: ignoreversion
Source: "{#AppBuildRoot}\Qt5Network.dll";           DestDir: "{app}"; Flags: ignoreversion
Source: "{#AppBuildRoot}\Qt5SerialPort.dll";        DestDir: "{app}"; Flags: ignoreversion
Source: "{#AppBuildRoot}\Qt5Sql.dll";               DestDir: "{app}"; Flags: ignoreversion
Source: "{#AppBuildRoot}\Qt5Widgets.dll";           DestDir: "{app}"; Flags: ignoreversion
Source: "{#AppBuildRoot}\smsengine.dll";            DestDir: "{app}"; Flags: ignoreversion
Source: "{#AppBuildRoot}\module.dll";               DestDir: "{app}"; Flags: ignoreversion
Source: "{#AppBuildRoot}\phonebook.dll";            DestDir: "{app}"; Flags: ignoreversion
Source: "{#AppBuildRoot}\platforms\*";              DestDir: "{app}\platforms"; Flags: ignoreversion
Source: "{#AppBuildRoot}\sqldrivers\*";             DestDir: "{app}\sqldrivers"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}";  Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{tmp}\vcredist_x64.exe"; Check: VCRedistNeedsInstall
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Code]
// procedure RunInstallMsvcRedist;
// var
//  ResultCode: Integer;
// begin
//  if not Exec(ExpandConstant('{app}\redist\vcredist_x64.exe'), '', '', SW_SHOWNORMAL,
//    ewWaitUntilTerminated, ResultCode)
//  then
//    MsgBox('Faild to install MSVC redistributable package, which can bring run issues!' + #13#10 +
//      SysErrorMessage(ResultCode), mbError, MB_OK);
//end;

#IFDEF UNICODE
  #DEFINE AW "W"
#ELSE
  #DEFINE AW "A"
#ENDIF
type
  INSTALLSTATE = Longint;
const
  INSTALLSTATE_INVALIDARG = -2;  // An invalid parameter was passed to the function.
  INSTALLSTATE_UNKNOWN = -1;     // The product is neither advertised or installed.
  INSTALLSTATE_ADVERTISED = 1;   // The product is advertised but not installed.
  INSTALLSTATE_ABSENT = 2;       // The product is installed for a different user.
  INSTALLSTATE_DEFAULT = 5;      // The product is installed for the current user.

  VC_2010_REDIST_X86 = '{196BB40D-1578-3D01-B289-BEFC77A11A1E}';
  VC_2010_REDIST_X64 = '{DA5E371C-6333-3D8A-93A4-6FD5B20BCC6E}';
  VC_2010_REDIST_IA64 = '{C1A35166-4301-38E9-BA67-02823AD72A1B}';
  VC_2010_SP1_REDIST_X86 = '{F0C3E5D1-1ADE-321E-8167-68EF0DE699A5}';
  VC_2010_SP1_REDIST_X64 = '{1D8E6291-B0D5-35EC-8441-6616F567A0F7}';
  VC_2010_SP1_REDIST_IA64 = '{88C73C1C-2DE5-3B01-AFB8-B46EF4AB41CD}';

  // Microsoft Visual C++ 2012 x86 Minimum Runtime - 11.0.61030.0 (Update 4) 
  VC_2012_REDIST_MIN_UPD4_X86 = '{BD95A8CD-1D9F-35AD-981A-3E7925026EBB}';
  VC_2012_REDIST_MIN_UPD4_X64 = '{CF2BEA3C-26EA-32F8-AA9B-331F7E34BA97}';
  // Microsoft Visual C++ 2012 x86 Additional Runtime - 11.0.61030.0 (Update 4) 
  VC_2012_REDIST_ADD_UPD4_X86 = '{B175520C-86A2-35A7-8619-86DC379688B9}';
  VC_2012_REDIST_ADD_UPD4_X64 = '{37B8F9C7-03FB-3253-8781-2517C99D7C00}';

  // Visual C++ 2013 Redistributable 12.0.21005
  VC_2013_REDIST_X86_MIN = '{13A4EE12-23EA-3371-91EE-EFB36DDFFF3E}';
  VC_2013_REDIST_X64_MIN = '{A749D8E6-B613-3BE3-8F5F-045C84EBA29B}';

  VC_2013_REDIST_X86_ADD = '{F8CFEB22-A2E7-3971-9EDA-4B11EDEFC185}';
  VC_2013_REDIST_X64_ADD = '{929FBD26-9020-399B-9A7A-751D61F0B942}';

  // Visual C++ 2015 Redistributable 14.0.23026
  VC_2015_REDIST_X86_MIN = '{A2563E55-3BEC-3828-8D67-E5E8B9E8B675}';
  VC_2015_REDIST_X64_MIN = '{0D3E9E15-DE7A-300B-96F1-B4AF12B96488}';

  VC_2015_REDIST_X86_ADD = '{BE960C1C-7BAD-3DE6-8B1A-2616FE532845}';
  VC_2015_REDIST_X64_ADD = '{BC958BD2-5DAC-3862-BB1A-C1BE0790438D}';

function MsiQueryProductState(szProduct: string): INSTALLSTATE; 
  external 'MsiQueryProductState{#AW}@msi.dll stdcall';

function VCVersionInstalled(const ProductID: string): Boolean;
begin
  Result := MsiQueryProductState(ProductID) = INSTALLSTATE_DEFAULT;
end;

function VCRedistNeedsInstall: Boolean;
begin
  // here the Result must be True when you need to install your VCRedist
  // or False when you don't need to, so now it's upon you how you build
  // this statement, the following won't install your VC redist only when
  // the Visual C++ 2013 Redist (x64)
  // are installed for the current user
  Result := not VCVersionInstalled(VC_2013_REDIST_X64_MIN);
end;