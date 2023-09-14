; Copyright (C) 2020  ManlyMarco
; This program is free software: you can redistribute it and/or modify
; it under the terms of the GNU General Public License as published by
; the Free Software Foundation, either version 3 of the License, or
; (at your option) any later version.

;-------------Full game name for naming patch itself and desktop icons
#define NAME "HoneyCome"
;---------------------------------------------Current HF Patch version
#define VERSION "1.0"
;--Don't include any files in the build to make it go fast for testing
;#define DEBUG
;---Skip file verification for easier testing, COMMENT OUT FOR RELEASE
#define NOVERIFY
;------------Don't include general, studio and map sideloader modpacks
;#define LITE
;---------------------------------------------------------------------

#include "Assets\Header.iss"
[Setup]
#ifndef LITE
AppName=HF Patch for HoneyCome
OutputBaseFilename=HoneyCome HF Patch v{#VERSION}
#else
AppName=HF Patch for HoneyCome (Light Version)
OutputBaseFilename=HoneyCome HF Patch v{#VERSION} Light Version
#endif
ArchitecturesInstallIn64BitMode=x64
CloseApplications=yes
RestartApplications=no
CloseApplicationsFilter=*.exe,*.dll
Compression=lzma2/ultra64
;lzma2/ultra64 | zip | lzma2/fast
LZMAUseSeparateProcess=yes
LZMADictionarySize=108576
;LZMADictionarySize=262144
LZMANumFastBytes=273
LZMANumBlockThreads=14
DiskSpanning=no
DefaultDirName={code:GetDefaultDirName}

WindowResizable=yes
WizardStyle=modern
WizardSizePercent=120,150

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"
Name: "jp"; MessagesFile: "compiler:Languages\Japanese.isl"

#include "Translations.iss"

[Types]
Name: "full_en";  Description: "{cm:fullInstall}"; Languages: en;
Name: "full";     Description: "{cm:fullInstall}"; Languages: jp; 
Name: "extra_en"; Description: "{cm:extraInstall}"; Languages: en;
Name: "extra";    Description: "{cm:extraInstall}"; Languages: jp; 
Name: "bare";     Description: "{cm:bareInstall}"
Name: "none";     Description: "{cm:noneInstall}"
Name: "custom";   Description: "{cm:customInstall}"; Flags: iscustom

#define CurrentDate GetDateTimeString('yyyy-mm-dd', '-', ':');

[Components]
Name: "Patch";                    Description: "All free updates, Steam version unlock, and common issue repair"                   ; Types: full_en full extra_en extra custom bare none; Flags: fixed
;Name: "Patch\VR";                 Description: "Install/Update VR Module"                                                         ; Types: extra_en extra
;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;Name: "Modpack"                 ; Description: "Sideloader Modpacks {#CurrentDate} (Add additional content to the game, needs at least BepisPlugins to work)"
;#ifndef LITE
;Name: "Modpack\General"         ; Description: "General (Content for making characters, always recommended)"                      ; Types: full_en full extra_en extra
;Name: "Modpack\Studio"          ; Description: "Studio (Additional content for making Studio scenes)"                           ; Types: full_en full extra_en extra
;;Name: "Modpack\MapsStudio"      ; Description: "Maps for use in Studio (Add > Map)"
;Name: "Modpack\MapsGame"        ; Description: "Maps for use in main game (H scenes)"                                             ; Types: full_en full extra_en extra
;;Name: "Modpack\Animations"      ; Description: "Animations (Additional adnimations for use in Studio and H scenes)"               ; Types: full_en full extra_en extra                          ; Types: full_en full extra_en extra
;#endif
;;Name: "Modpack\Fixes"           ; Description: "Fixes (Fixes to some of the official content, always recommended)"              ; Types: full_en full extra_en extra
;Name: "Modpack\MaterialEditor"  ; Description: "MaterialEditor (Materials for use with MaterialEditor)"                      ; Types: full_en full extra_en extra
;Name: "Modpack\UncensorSelector"; Description: "UncensorSelector (Uncensors for use with UncensorSelector)"                  ; Types: full_en full extra_en extra
;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

[Files]
Source: "HelperLib.dll";                  DestDir: "{app}";                       Flags: dontcopy
#ifndef DEBUG
Source: "Plugin Readme.md";               DestDir: "{app}"
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;Source: "Input\_Patch\empty_ud\*";                 DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs solidbreak; Components: Patch
;Source: "Input\_Patch\empty_ud_eng\*";             DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs;            Components: Patch; Languages: en
Source: "Input\_Patch\1_base\*";                   DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs;            Components: Patch
Source: "Input\_Patch\2_0908-full\*";              DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs;            Components: Patch

Source: "Input\_Patch\9_interop-libs\*";           DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs;            Components: Patch

; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
; Solidbreak at the start to split off the modpacks from other files in case they don't have to be installed. solidbreak splits before the files entry with it is processed
;#ifndef LITE
;Source: "{#ModsDir}\Sideloader Modpack\*"                          ; DestDir: "{app}\mods\Sideloader Modpack"                         ; Flags: ignoreversion recursesubdirs solidbreak; Components: Modpack\General;        
;Source: "{#ModsDir}\Sideloader Modpack - Exclusive HS2\*"          ; DestDir: "{app}\mods\Sideloader Modpack - Exclusive HS2"         ; Flags: ignoreversion recursesubdirs; Components: Modpack\General
;;Source: "{#ModsDir}\Sideloader Modpack - Bleeding Edge\*"         ; DestDir: "{app}\mods\Sideloader Modpack - Bleeding Edge"         ; Flags: ignoreversion recursesubdirs; Components: Modpack\Bleeding
;Source: "{#ModsDir}\Sideloader Modpack - Studio\*"                ; DestDir: "{app}\mods\Sideloader Modpack - Studio"                ; Flags: ignoreversion recursesubdirs; Components: Modpack\Studio
;;Source: "{#ModsDir}\Sideloader Modpack - Maps\*"                  ; DestDir: "{app}\mods\Sideloader Modpack - Maps"                  ; Flags: ignoreversion recursesubdirs; Components: Modpack\MapsStudio
;Source: "{#ModsDir}\Sideloader Modpack - Maps (HS2 Game)\*"       ; DestDir: "{app}\mods\Sideloader Modpack - Maps (HS2 Game)"       ; Flags: ignoreversion recursesubdirs; Components: Modpack\MapsGame
;#endif
;Source: "{#ModsDir}\Sideloader Modpack - MaterialEditor Shaders\*"; DestDir: "{app}\mods\Sideloader Modpack - MaterialEditor Shaders"; Flags: ignoreversion recursesubdirs solidbreak; Components: Modpack\MaterialEditor
;Source: "{#ModsDir}\Sideloader Modpack - Uncensor Selector\*"     ; DestDir: "{app}\mods\Sideloader Modpack - Uncensor Selector"     ; Flags: ignoreversion recursesubdirs; Components: Modpack\UncensorSelector
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;; Make sure this is never missing in case the plugin archive doesn't have it included. Also solidbreak to split off the modpacks
;Source: "Input\_Plugins\HS2_UncensorSelector Base.zipmod"; DestDir: "{app}\mods"; Flags: ignoreversion; Components: UNC\Selector
;; Always install critical fixes
;Source: "Input\_Plugins\_out\IllusionFixes_RoomGirl\BepInEx\patchers\*"; DestDir: "{app}\BepInEx\patchers"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Patch
;; If BP isn't installed, exclude BP uncensors from the random selection
;Source: "Input\US_config_noBP.cfg"; DestDir: "{app}\BepInEx\config"; DestName: "com.deathweasel.bepinex.uncensorselector.cfg"; Flags: solidbreak
;; This config only allows BP uncensors to be chosen by random
;Source: "Input\US_config_BP.cfg";   DestDir: "{app}\BepInEx\config"; DestName: "com.deathweasel.bepinex.uncensorselector.cfg"; Flags: solidbreak; Components: UNC\Selector\BetterPenetration
#endif

; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
; This include should be here because the patch files above can be overwritten by this include, and the Files section below overwrites some config files that this include extracts
#include "components.iss"

[Files]
#ifndef DEBUG
Source: "Input\BepInEx_config\*";  DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs solidbreak; Components: BepInEx
;Source: "Input\BepInEx_Dev\*";     DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs;            Components: BepInEx\Dev
Source: "Input\Default_configs\*"; DestDir: "{app}\BepInEx\config"; Flags: ignoreversion recursesubdirs onlyifdoesntexist; Components: BepInEx
;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Source: "Input\Config_eng\*";      DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Languages: en
Source: "Input\Config_jap\*";      DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Languages: jp
;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Source: "Input\Launcher_branding\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: IllusionLaunchers
;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Source: "Input\SteamPassthrough\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: Patch; Check: IsSteam

#endif

[InstallDelete]
; Clean up old translations
;Type: filesandordirs; Name: "{app}\BepInEx\translation"; Components: AT\TL\EnglishTranslation
Type: files; Name: "{app}\InitSetting.exe"
Type: files; Name: "{app}\InitSetting.exe.config"
;Type: files; Name: "{app}\Initial Settings.exe"
;Type: files; Name: "{app}\Initial Settings.exe.config"
; DO NOT remove HoneyComeccp.exe since the steam check relies on this existing
Type: files; Name: "{app}\HoneyComeccp.exe.config" 
Type: filesandordirs; Name: "{app}\BepInEx\LauncherEN"; Components: IllusionLaunchers
Type: filesandordirs; Name: "{app}\UserData\LauncherEN"; Components: IllusionLaunchers
; In past games was used by stock launcher in steam release, remove to declutter if using custom launcher
Type: filesandordirs; Name: "{app}\ja-JP"; Components: IllusionLaunchers   
Type: filesandordirs; Name: "{app}\zh-CN"; Components: IllusionLaunchers
Type: filesandordirs; Name: "{app}\zh-TW"; Components: IllusionLaunchers

; Clean up old modpacks. Large modpacks might not be fully included so don't remove here, instead they get cleaned up from old versions later
#ifndef LITE
;Type: filesandordirs; Name: "{app}\mods\Sideloader Modpack"                       ; Components: Modpack
;Type: filesandordirs; Name: "{app}\mods\Sideloader Modpack - Bleeding Edge"       ; Components: Modpack
;Type: filesandordirs; Name: "{app}\mods\Sideloader Modpack - Maps"                ; Components: Modpack\MapsStudio
;Type: filesandordirs; Name: "{app}\mods\Sideloader Modpack - Maps (HS2 Game)"     ; Components: Modpack\MapsGame
;Type: filesandordirs; Name: "{app}\mods\Sideloader Modpack - MaterialEditor Shaders" ; Components: Modpack\MaterialEditor
;Type: filesandordirs; Name: "{app}\mods\Sideloader Modpack - Studio"              ; Components: Modpack\Studio
;Type: filesandordirs; Name: "{app}\mods\Sideloader Modpack - Uncensor Selector"   ; Components: Modpack\UncensorSelector
#endif

; Clean up old patches and packs
Type: files; Name: "{app}\start.bat"
Type: files; Name: "{app}\desktop.ini"
Type: files; Name: "{app}\*.ico"
Type: files; Name: "{app}\[BR]*"
Type: files; Name: "{app}\abdata_original"
Type: files; Name: "{app}\BepInEx\config\SpockBauru*"

; Always not necessary
Type: files; Name: "{app}\0Harmony.dll"
Type: files; Name: "{app}\BepInEx.dll"
Type: files; Name: "{app}\Mono.Cecil.dll"

; Junk
Type: filesandordirs; Name: "{app}\BepInEx\bepinex4_backup"
Type: filesandordirs; Name: "{app}\BepInEx_Shim_Backup"
Type: filesandordirs; Name: "{app}\BepInEx\ErrorLog*"
Type: filesandordirs; Name: "{app}\BepInEx\LogOutput*"
Type: filesandordirs; Name: "{app}\temp"
Type: files; Name: "{app}\README.*"
Type: files; Name: "{app}\*.log"
Type: files; Name: "{app}\*.pdb"
Type: files; Name: "{app}\changelog.txt"
Type: files; Name: "{app}\HF_Patch_log.txt"
Type: files; Name: "{app}\output_log.txt"
;Type: files; Name: "{app}\Studio\changelog.txt"
;Type: files; Name: "{app}\Studio\output_log.txt"
; Yikes, someone extracted a sideloader mod...
Type: files; Name: "{app}\manifest.xml"

; Just in case. Also resets any hash caches
Type: filesandordirs; Name: "{app}\[UTILITY] KKManager"; Components: KKManager
Type: filesandordirs; Name: "{app}\temp"

; Will get replaced, makes sure there are no stale files left
Type: filesandordirs; Name: "{app}\BepInEx\cache"; Components: BepInEx
Type: filesandordirs; Name: "{app}\BepInEx\core"; Components: BepInEx
;Type: filesandordirs; Name: "{app}\BepInEx\RoomGirl"; Components: BepInEx
;Type: filesandordirs; Name: "{app}\BepInEx\RoomStudio"; Components: BepInEx
Type: filesandordirs; Name: "{app}\BepInEx\unhollowed"; Components: BepInEx
Type: filesandordirs; Name: "{app}\BepInEx\unity-libs"; Components: BepInEx
Type: filesandordirs; Name: "{app}\BepInEx\dummy"; Components: BepInEx
Type: filesandordirs; Name: "{app}\mono"; Components: BepInEx
Type: filesandordirs; Name: "{app}\dotnet"; Components: BepInEx
Type: files; Name: "{app}\version.dll"; Components: BepInEx
Type: files; Name: "{app}\winhttp.dll"; Components: BepInEx
Type: files; Name: "{app}\doorstop_config.ini"; Components: BepInEx
;Type: filesandordirs; Name: "{app}\Studio\BepInEx"; Components: BepInEx
;Type: filesandordirs; Name: "{app}\Studio\mono"; Components: BepInEx
;Type: files; Name: "{app}\Studio\version.dll"; Components: BepInEx
;Type: files; Name: "{app}\Studio\winhttp.dll"; Components: BepInEx
;Type: files; Name: "{app}\Studio\doorstop_config.ini"; Components: BepInEx

; Convert steam ver to global ver
Type: filesandordirs; Name: "{app}\DefaultData";       Components: Patch; Check: IsUnconvertedSteam
Type: filesandordirs; Name: "{app}\abdata\list";       Components: Patch; Check: IsUnconvertedSteam
Type: files;          Name: "{app}\abdata\abdata*";    Components: Patch; Check: IsUnconvertedSteam
Type: files;          Name: "{app}\abdata\add0";       Components: Patch; Check: IsUnconvertedSteam
Type: files;          Name: "{app}\abdata\lang*";      Components: Patch; Check: IsUnconvertedSteam
Type: filesandordirs; Name: "{app}\HoneyComeccp_Data"; Components: Patch; Check: IsUnconvertedSteam


[Registry]
Root: HKCU; Subkey: "Software\ILLGAMES"
Root: HKCU; Subkey: "Software\ILLGAMES\HoneyCome"
Root: HKCU; Subkey: "Software\ILLGAMES\HoneyCome"; ValueType: string; ValueName: "INSTALLDIR_HFP"; ValueData: "{app}\"

[Tasks]
Name: desktopicon; Description: "{cm:TaskIcon}"; Flags: unchecked
Name: delete; Description: "{cm:TaskDelete}";
;Name: delete\Sidemods; Description: "{cm:TaskDeleteSide}"
Name: delete\Plugins; Description: "{cm:TaskDeletePlugins}";
Name: delete\Config; Description: "{cm:TaskDeletePluginSettings}"; Flags: unchecked
;Name: delete\scripts; Description: "Delete old scripts"
Name: delete\Listfiles; Description: "{cm:TaskDeleteLst}"; Flags: unchecked
;Name: fixSideloaderDupes; Description: "{cm:TaskSideDupes}";

[Icons]
Name: "{userdesktop}\{cm:IconGame}"; Filename: "{app}\InitSetting.exe"; IconFilename: "{app}\InitSetting.exe"; WorkingDir: "{app}\"; Flags: createonlyiffileexists; Tasks: desktopicon; Comment: "{cm:IconGame}"

[Run]
;Filename: "{tmp}\hfp\DirectXRedist2010\DXSETUP.exe"; Parameters: "/silent"; Description: "Installing DirectX redistributables"; Flags: skipifdoesntexist runascurrentuser

Filename: "{app}\InitSetting.exe"; Description: "{cm:RunGame}"; Flags: postinstall runasoriginaluser nowait skipifsilent skipifdoesntexist

Filename: "https://wiki.anime-sharing.com/hgames/index.php?title=HoneyCome"; Description: "{cm:RunWiki}"; Flags: shellexec runasoriginaluser postinstall unchecked nowait skipifsilent

Filename: "https://discord.gg/hevygx6"; Description: "{cm:RunDiscord}"; Flags: shellexec runasoriginaluser postinstall unchecked nowait skipifsilent;

Filename: "https://github.com/ManlyMarco/HC-HF_Patch"; Description: "Latest HF Patch releases and source code"; Flags: shellexec runasoriginaluser postinstall unchecked nowait skipifsilent

Filename: "https://www.patreon.com/ManlyMarco"; Description: "ManlyMarco Patreon (Creator of this patch)"; Flags: shellexec runasoriginaluser postinstall unchecked nowait skipifsilent;

;Filename: "{app}\[UTILITY] KKManager\StandaloneUpdater.exe"; Parameters: """{app}"""; Description: "{cm:StartUpdate}"; Flags: postinstall runascurrentuser unchecked nowait skipifsilent skipifdoesntexist

[Code]
procedure FindInstallLocation(path: String; gameName: String; gameNameSteam: String; out strout: WideString);
external 'FindInstallLocation@files:HelperLib.dll stdcall';

procedure CreateBackup(path: String);
external 'CreateBackup@files:HelperLib.dll stdcall';

procedure FixConfig(path: String);
external 'FixConfig@files:HelperLib.dll stdcall';

procedure PostInstallCleanUp(path: String);
external 'PostInstallCleanUp@files:HelperLib.dll stdcall';

procedure WriteVersionFile(path, version: String);
external 'WriteVersionFile@files:HelperLib.dll stdcall';

procedure SetConfigDefaults(path: String);
external 'SetConfigDefaults@files:HelperLib.dll stdcall';

procedure FixPermissions(path: String);
external 'FixPermissions@files:HelperLib.dll stdcall';

procedure RemoveJapaneseCards(path: String);
external 'RemoveJapaneseCards@files:HelperLib.dll stdcall';

procedure RemoveNonstandardListfiles(path: String);
external 'RemoveNonstandardListfiles@files:HelperLib.dll stdcall';

procedure RemoveSideloaderDuplicates(path: String);
external 'RemoveSideloaderDuplicates@files:HelperLib.dll stdcall';

procedure RemoveModsExceptModpacks(path: String);
external 'RemoveModsExceptModpacks@files:HelperLib.dll stdcall';

function ParadiseInstalled(): Boolean;
begin
  Result := FileExists(ExpandConstant('{app}\abdata\add030_00'));
end;

function GetDefaultDirName(Param: string): string;
var
  str: WideString;
begin
  FindInstallLocation(ExpandConstant('{src}'), 'HoneyCome', 'HoneyComeccp', str);
  Result := str;
end;

function IsSteam(): Boolean;
begin
  Result := FileExists(ExpandConstant('{app}\HoneyComeccp.exe'));
end;

function IsUnconvertedSteam(): Boolean;
begin
  Result := DirExists(ExpandConstant('{app}\HoneyComeccp_Data'));
end;

function IsConvertedSteam(): Boolean;
begin
  Result := IsSteam() and not IsUnconvertedSteam();
end;

function DirectXRedistNeedsInstall(): Boolean;
begin
  Result := not RegKeyExists(HKLM, 'SOFTWARE\WOW6432Node\Valve\Steam\Apps\CommonRedist\DirectX\Jun2010')
end;

procedure CurPageChanged(CurPageID: Integer);
begin
  if CurPageID = wpSelectTasks then
  begin
    //// If garbage plugins are detected, delete all old mods by default
    //if(FileExists(ExpandConstant('{app}\Studio\BepInEx\config\BepInEx.cfg')) or DirExists(ExpandConstant('{app}\BepInEx\unhollowed'))) then
    //begin
    //  WizardForm.TasksList.CheckItem(2, coCheckWithChildren);
    //end;
    
  end;
end;

procedure CurStepChanged(CurStep: TSetupStep);
var
  ResultCode: Integer;
begin
  // After install completes
  if (CurStep = ssPostInstall) then
  begin
    // Delete Japanese versions of cards and bgs if English versions are installed (only those with different names)
    //if IsComponentSelected('AT\TL\EnglishTranslation\UserData') then
    //    RemoveJapaneseCards(ExpandConstant('{app}'));

    // Always clean up sideloader mods in case user already messed up
    //if IsTaskSelected('fixSideloaderDupes') then
    //    RemoveSideloaderDuplicates(ExpandConstant('{app}'));

    FixConfig(ExpandConstant('{app}'));
    WriteVersionFile(ExpandConstant('{app}'), '{#VERSION}');
    
    // Prevent trying to install the redist again
    //Exec('reg', 'add HKEY_LOCAL_MACHINE\SOFTWARE\Valve\Steam\Apps\CommonRedist\DirectX\Jun2010 /v dxsetup /t REG_DWORD /d 1 /f /reg:32', ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode);
    
    PostInstallCleanUp(ExpandConstant('{app}'));
  end;
end;

function IsCharValid(Value: Char): Boolean;
begin
  Result := Ord(Value) <= $007F;
end;

function IsDirNameValid(const Value: string): Boolean;
var
  I: Integer;
begin
  Result := False;
  for I := 1 to Length(Value) do
    if not IsCharValid(Value[I]) then
      Exit;
  Result := True;
end;

function NextButtonClick(CurPageID: Integer): Boolean;
var
  ResultCode: Integer;
begin
  // allow the setup turning to the next page
  Result := True;

  if (CurPageID = wpSelectDir) then
  begin
    if (not FileExists(ExpandConstant('{app}\HoneyCome_Data\resources.assets')) and not FileExists(ExpandConstant('{app}\HoneyComeccp_Data\resources.assets'))) then
    begin
      if(SuppressibleMsgBox(ExpandConstant('{cm:MsgExeNotFound}'), mbError, MB_YESNO, 0) = IDNO) then
        Result := False;
    end;

    if Result = True then
    begin
      if (Length(ExpandConstant('{app}')) > 100) then
      begin
        MsgBox(ExpandConstant('{cm:MsgPathTooLong}'), mbError, MB_OK);
        Result := False;
      end
    end;

    if Result = True then
    begin
      if not IsDirNameValid(ExpandConstant('{app}')) then
      begin
        MsgBox(ExpandConstant('{cm:MsgPathNonLatin}'), mbError, MB_OK);
      end;
    end;

    if Result = True then
    begin
      if (Pos(LowerCase(ExpandConstant('{app}\')), LowerCase(ExpandConstant('{src}\'))) > 0) then
      begin
        MsgBox('This patch is inside of the game directory you are attempting to install to. You have to move the patch files outside of the game directory and try again.', mbError, MB_OK);
        Result := False;
      end
    end;

    if Result = True then
    begin
      if (FileExists(ExpandConstant('{app}\EmotionCreators.exe'))
      or FileExists(ExpandConstant('{app}\Koikatu.exe'))
      or FileExists(ExpandConstant('{app}\Koikatsu Party.exe'))
      or FileExists(ExpandConstant('{app}\PlayHome.exe'))
      or FileExists(ExpandConstant('{app}\AI-Syoujyo.exe'))
      or FileExists(ExpandConstant('{app}\AI-Shoujo.exe'))
      or FileExists(ExpandConstant('{app}\RoomGirl.exe'))
      or FileExists(ExpandConstant('{app}\HoneySelect2.exe'))) then
      begin
        MsgBox(ExpandConstant('{cm:MsgDifferentGameDetected}'), mbError, MB_OK);
        Result := False;
      end
    end;

    if Result = True then
    begin
      if (FileExists(ExpandConstant('{app}\RoomStudio.exe'))) then
      begin
        MsgBox('It looks like the Studio is installed to the same directory as the game, most likely breaking the game install. Studio executable should be in a "Studio" subfolder. You will have to reinstall the game and run this patch again.', mbError, MB_OK);
        Result := False;
      end
    end;

    if Result = True then
    begin
      // Check for file corruptions
      if (not FileExists(ExpandConstant('{app}\abdata\animator\00\female\00.unity3d'))
      or not FileExists(ExpandConstant('{app}\abdata\sound\setting\sound3dsettingdata\00.unity3d'))
      or not FileExists(ExpandConstant('{app}\abdata\sound\setting\soundsettingdata\00.unity3d'))) then
      begin
        MsgBox(ExpandConstant('{cm:MsgMissingGameFiles}'), mbError, MB_OK);
        Result := False;
      end
      else
      begin
        //// Check for missing paid DLC
        //if not ParadiseInstalled() then
        //begin
        //  SuppressibleMsgBox(ExpandConstant('{cm:MsgMissingDLC1}'), mbInformation, MB_OK, 0);
        //end;
      end;
    end;

    if Result = True then
    begin
      // Check for extracted zipmods
      if FileExists(ExpandConstant('{app}\manifest.xml')) then
      begin
        SuppressibleMsgBox(ExpandConstant('{cm:MsgExtractedZipmod}'), mbError, MB_OK, 0);
      end;
    end;
  end;
end;

procedure VerifyFiles(srcexe: String; out errormsg: WideString);
external 'VerifyFiles@files:HelperLib.dll stdcall';

// Set up a custom prepare to install page with progress
var
  PrepareToInstallWithProgressPage : TOutputProgressWizardPage;
procedure InitializeWizard;
var
  A: AnsiString;
  S: String;
begin
  // The string msgWizardPreparing has the placeholder '[name]' inside that I have to replace with the name of my app, stored in a define constant of my script.
  S := SetupMessage(msgPreparingDesc); 
  StringChange(S, '[name]', '{#NAME} HF Patch');
  A := S;
  PrepareToInstallWithProgressPage := CreateOutputProgressPage(SetupMessage(msgWizardPreparing), A);
end;

function PrepareToInstall(var NeedsRestart: Boolean): String;
var
  ResultCode: Integer;
  VerifyResult: WideString;
begin
  NeedsRestart := false;

  PrepareToInstallWithProgressPage.Show;
  
  PrepareToInstallWithProgressPage.SetProgress(0, 10);
  PrepareToInstallWithProgressPage.SetText('Verifying HF Patch files, this can take a few minutes', '');
  
#ifndef NOVERIFY
  VerifyFiles(ExpandConstant('{srcexe}'), VerifyResult);
#endif

  // If verification failed, set return of this method to it and innosetup will automatically fail the install. Still need to skip rest of the code though.
  if not (VerifyResult = '') then
  begin
    Result := VerifyResult;
  end
  else
  begin
    try
      PrepareToInstallWithProgressPage.SetProgress(4, 10);
      PrepareToInstallWithProgressPage.SetText('Exiting running game processes', '');
      
      // Close the game if it's running
      Exec('taskkill', '/F /IM HoneyCome.exe', ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode);
      Exec('taskkill', '/F /IM HoneyComeccp.exe', ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode);
      Exec('taskkill', '/F /IM InitSetting.exe', ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode);
      Exec('taskkill', '/F /IM KKManager.exe', ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode);
      Exec('taskkill', '/F /IM StandaloneUpdater.exe', ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode);

        // Often needed after fixing permissions to unlock the files so the permissions can be written, without this access to them is always denied
        //Exec('taskkill', '/F /IM explorer.exe', ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode);
    
      PrepareToInstallWithProgressPage.SetProgress(5, 10);
      PrepareToInstallWithProgressPage.SetText('Fixing file permissions of game directory', '');
      
      // Fix file permissions
      //Exec('takeown', ExpandConstant('/f "{app}" /r /SKIPSL /d y'), ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode);
      //Exec('icacls', ExpandConstant('"{app}" /grant everyone:F /t /c /l'), ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode);
      FixPermissions(ExpandConstant('{app}'));
      
      //try
      //  ExecAsOriginalUser('explorer.exe', '', '', 0, ewNoWait, ResultCode);
      //except
      //  ShowExceptionMessage();
      //end;
    except
      ShowExceptionMessage();
    end;

    PrepareToInstallWithProgressPage.SetProgress(6, 10);
    PrepareToInstallWithProgressPage.SetText('Creating a plugin backup', '');
      
    CreateBackup(ExpandConstant('{app}'));

    PrepareToInstallWithProgressPage.SetProgress(8, 10);
    PrepareToInstallWithProgressPage.SetText('Changing plugin configuration', '');
    
    // Remove BepInEx folder
    if (IsTaskSelected('delete\Config') and IsTaskSelected('delete\Plugins')) then begin
      DelTree(ExpandConstant('{app}\BepInEx'), True, True, True);
    end
    else
    begin
      // Or only remove plugins
      if (IsTaskSelected('delete\Plugins')) then begin
        DelTree(ExpandConstant('{app}\BepInEx\plugins'), True, True, True);
        DelTree(ExpandConstant('{app}\BepInEx\patchers'), True, True, True);
      end;
      
      if (IsTaskSelected('delete\Config')) then begin
        DelTree(ExpandConstant('{app}\BepInEx\config'), True, True, True);
      end;
    end;
    
    PrepareToInstallWithProgressPage.SetProgress(9, 10);
    PrepareToInstallWithProgressPage.SetText('Cleaning up old mods and scripts', '');
    
    if (IsTaskSelected('delete\Sidemods')) then
      RemoveModsExceptModpacks(ExpandConstant('{app}'));

    //if (IsTaskSelected('delete\Listfiles')) then
    //  RemoveNonstandardListfiles(ExpandConstant('{app}'));
    
    if (IsTaskSelected('delete\scripts')) then
      DelTree(ExpandConstant('{app}\scripts'), True, True, True);

    SetConfigDefaults(ExpandConstant('{app}'));
  end;
  
  PrepareToInstallWithProgressPage.SetProgress(10, 10);
  PrepareToInstallWithProgressPage.Hide;
end;
