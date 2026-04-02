; Copyright (C) 2020  ManlyMarco
; This program is free software: you can redistribute it and/or modify
; it under the terms of the GNU General Public License as published by
; the Free Software Foundation, either version 3 of the License, or
; (at your option) any later version.

;-------------Full game name for naming patch itself and desktop icons
#define NAME "HoneyCome"
;---------------------------------------------Current HF Patch version
#define VERSION "1.18"
;-----------------------------------------Sideloader modpack directory
;#define GameDir N/A
;--Don't include any files in the build to make it go fast for testing
#define DEBUG
;---Skip file verification for easier testing, COMMENT OUT FOR RELEASE
;#define NOVERIFY
;------------Don't include general, studio and map sideloader modpacks
;#define LITE
;--------------------------------------------------------Configuration
; The main executable name without the .exe
#define GameName "HoneyCome"
; Set to empty if the game has no steam version
#define GameNameSteam "HoneyComeccp"
; Set CompanyName to empty if the game has no registry keys
#define CompanyName "ILLGAMES"
;---------------------------------------------------------------------
#include "HelperLib\Common.iss"
;---------------------------------------------------------------------
; Used for post install run links, comment out to hide
#define WikiLink "https://wiki.anime-sharing.com/hgames/index.php?title=HoneyCome"
#define RepoLink "https://github.com/ManlyMarco/HC-HF_Patch"
; Can be KoiDiscordLink, IsDiscordLink, or a normal link
#define DiscordLink KoiDiscordLink
;---------------------------------------------------------------------

[Setup]
#ifndef LITE
AppName=HF Patch for HoneyCome and DigitalCraft
OutputBaseFilename=HoneyCome & DigitalCraft HF Patch v{#VERSION}
#else
AppName=HF Patch for HoneyCome (Light Version)
OutputBaseFilename=HoneyCome & DigitalCraft HF Patch v{#VERSION} Light Version
#endif

;lzma2/ultra64 | zip | lzma2/fast
Compression=lzma2/ultra64
LZMAUseSeparateProcess=yes
;Usual settings: 208576 273
LZMADictionarySize=208576
LZMANumFastBytes=273
LZMANumBlockThreads=8
DiskSpanning=yes
DiskSliceSize=4294967295

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"
Name: "jp"; MessagesFile: "compiler:Languages\Japanese.isl"

[Types]
Name: "full_en";  Description: "{cm:fullInstall}"; Languages: en;
Name: "full";     Description: "{cm:fullInstall}";  Languages: jp;
Name: "extra_en"; Description: "{cm:extraInstall}"; Languages: en;
Name: "extra";    Description: "{cm:extraInstall}"; Languages: jp;
Name: "bare";     Description: "{cm:bareInstall}"
Name: "none";     Description: "{cm:noneInstall}"
Name: "custom";   Description: "{cm:customInstall}"; Flags: iscustom

[Components]
Name: "Patch";     Description: "Repair common issues";     Types: full_en full extra_en extra custom bare none; Flags: fixed
;Name: "Patch\VR"; Description: "Install/Update VR Module"; Types: extra_en extra
;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

[Files]
#ifndef DEBUG
;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Source: "Input\_Patch\1_base\*";                   DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Patch; Check: HoneyComeInstalled
Source: "Input\_Patch\2_1215-full\*";              DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Patch; Check: HoneyComeInstalled
Source: "Input\_Patch\4_dolce_diff\*";             DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Patch; Check: HoneyComeInstalled and DolceInstalled
Source: "Input\_Patch\5_dolce_0123-full\*";        DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Patch; Check: HoneyComeInstalled and DolceInstalled
Source: "Input\_Patch\8_man\*";                    DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Patch; Check: HoneyComeInstalled
Source: "Input\_Patch\9_unhollowed-1215\*";        DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Patch; Check: HoneyComeInstalled
Source: "Input\_Patch\9_unhollowed-dolce_0123\*";  DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Patch; Check: HoneyComeInstalled and DolceInstalled

//todo stand-alone studio, needs any updates? probably shouldn't install hardmod pack??
Source: "Input\_Patch\6_craft_0123\*";             DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Patch; Check: DigitalCraftInstalled and not HoneyComeInstalled
Source: "Input\_Patch\9_unhollowed-studio_0123\*";  DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Patch; Check: DigitalCraftInstalled and not HoneyComeInstalled

#endif

; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
; This include should be here because the patch files above can be overwritten by this include, and the Files section below overwrites some config files that this include extracts
#include "components.iss"

[Files]
#ifndef DEBUG
Source: "Input\BepInEx_config\*";         DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs solidbreak; Components: BepInEx
Source: "Input\BepInEx_config_studio\*";  DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs solidbreak; Components: BepInEx; Check: DigitalCraftInstalled
;Source: "Input\BepInEx_Dev\*";           DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs;            Components: BepInEx\Dev
Source: "Input\Default_configs\*";        DestDir: "{app}\BepInEx\config"; Flags: ignoreversion recursesubdirs onlyifdoesntexist; Components: BepInEx
;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Source: "Input\_TL\*";             DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: AT\TL
Source: "Input\Config_eng\*";      DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Languages: en
Source: "Input\Config_jap\*";      DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Languages: jp
;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Source: "Input\Launcher_branding\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: IllusionLaunchers

Source: "Input\SteamPassthrough\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: Patch; Check: IsSteam

#endif

[InstallDelete]
; Unnecessary
Type: files; Name: "{app}\HoneyCome.exe.config" 
Type: filesandordirs; Name: "{app}\HoneyCome_Data\Managed"
Type: filesandordirs; Name: "{app}\mono"; Components: BepInEx

; Will get replaced, makes sure there are no stale files left
Type: filesandordirs; Name: "{app}\BepInEx\DigitalCraft"; Components: BepInEx
Type: filesandordirs; Name: "{app}\BepInEx\HoneyCome"; Components: BepInEx

; Clean up old translations
Type: filesandordirs; Name: "{app}\BepInEx\translation"; Components: AT\TL
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

; Just in case. Also resets any hash caches
Type: filesandordirs; Name: "{app}\[UTILITY] KKManager"; Components: KKManager

; Remove incompatible / broken old mods
Type: files; Name: "{app}\BepInEx\patchers\IMGUIModule.Il2Cpp.CoreCLR.Patcher.dll"; Components: BepInEx\ConfigurationManager_Il2Cpp
Type: files; Name: "{app}\BepInEx\plugins\ConfigurationManager.dll";                Components: BepInEx\ConfigurationManager_Il2Cpp
Type: files; Name: "{app}\BepInEx\plugins\BepInEx.KeyboardShortcut.dll";            Components: BepInEx\ConfigurationManager_Il2Cpp
Type: files; Name: "{app}\abdata\sardinetail.unity3d";                              Components: Content\Fishbone\SardineTail

; Clean up old modpacks
Type: files; Name: "{app}\abdata\list\characustom\300_50_tofusalomoto.unity3d";     Components: Content\Hardmods
Type: files; Name: "{app}\abdata\list\characustom\1600_*";                          Components: Content\Hardmods
Type: filesandordirs; Name: "{app}\abdata\chara\TekitoMOD";                         Components: Content\Hardmods

Type: filesandordirs; Name: "{app}\DigitalCraft\BepInEx"; Components: BepInEx
Type: filesandordirs; Name: "{app}\DigitalCraft\dotnet"; Components: BepInEx
Type: files; Name: "{app}\DigitalCraft\hid.dll"; Components: BepInEx
Type: files; Name: "{app}\DigitalCraft\version.dll"; Components: BepInEx
Type: files; Name: "{app}\DigitalCraft\winhttp.dll"; Components: BepInEx
Type: files; Name: "{app}\DigitalCraft\doorstop_config.ini"; Components: BepInEx
Type: files; Name: "{app}\DigitalCraft\.doorstop_version"; Components: BepInEx

; Convert steam ver to global ver
Type: filesandordirs; Name: "{app}\DefaultData";       Components: Patch; Check: IsUnconvertedSteam
Type: filesandordirs; Name: "{app}\abdata\list";       Components: Patch; Check: IsUnconvertedSteam
Type: files;          Name: "{app}\abdata\abdata*";    Components: Patch; Check: IsUnconvertedSteam
Type: files;          Name: "{app}\abdata\add0";       Components: Patch; Check: IsUnconvertedSteam
Type: files;          Name: "{app}\abdata\add012_00";  Components: Patch; Check: IsUnconvertedSteam
Type: files;          Name: "{app}\abdata\add012_02";  Components: Patch; Check: IsUnconvertedSteam
Type: files;          Name: "{app}\abdata\craft012_00";Components: Patch; Check: IsUnconvertedSteam
Type: files;          Name: "{app}\abdata\craft012_01";Components: Patch; Check: IsUnconvertedSteam
Type: files;          Name: "{app}\abdata\lang*";      Components: Patch; Check: IsUnconvertedSteam
Type: filesandordirs; Name: "{app}\HoneyComeccp_Data"; Components: Patch; Check: IsUnconvertedSteam

; Bad default settings in older versions of the plugin
Type: files;          Name: "{app}\BepInEx\config\HC_FXsettings.cfg"; Components: Feature\HC_FXsettings
; version in filename
Type: files;          Name: "{app}\BepInEx\plugins\HC_Hair_*"; Components: Feature\HC_Hair
; Incompatible
Type: files;          Name: "{app}\BepInEx\plugins\HC_HGaugeCtrl.dll"; Components: Feature\HC_HGaugeAndSpeedCtrl
; Disabled by launcher
Type: files;          Name: "{app}\BepInEx\plugins\WebRequestBlocker.dl_"; Components: FIX\WebRequestBlocker

[Dirs]
Name: {app}\sardines; Components: Content\Fishbone\SardineTail

[CustomMessages]
MsgMissingDLC1=NOTICE - You are missing the optional "Dolce" expansion (2023-12-22 Paid DLC). It adds studio (DigitalCraft), 2 new personalities, new maps, new H positions, and new clothes.%n%nThis expansion is optional, the patch will work fine without it. If you want to use it, install it BEFORE running HF Patch.
jp.MsgMissingDLC1=注意 - 「ハニカム ドルチェ+DIGITAL CRAFT」(2023-12-22)のオプションのアップデートが欠けています。%n%n使用したい場合は、HF Patchを実行する前にインストールしてください。

IconGame=HoneyCome
jp.IconGame=ハニカム

[Tasks]
Name: desktopicon; Description: "{cm:TaskIcon}"; Flags: unchecked
Name: delete; Description: "{cm:TaskDelete}";
Name: delete\Plugins; Description: "{cm:TaskDeletePlugins}";
Name: delete\Config; Description: "{cm:TaskDeletePluginSettings}"; Flags: unchecked
Name: delete\scripts; Description: "Delete old scripts (ScriptLoader, frida)"
Name: delete\Listfiles; Description: "{cm:TaskDeleteLst}"; Flags: unchecked

[Icons]
Name: "{userdesktop}\{cm:IconGame}"; Filename: "{app}\InitSetting.exe"; IconFilename: "{app}\InitSetting.exe"; WorkingDir: "{app}\"; Flags: createonlyiffileexists; Tasks: desktopicon; Comment: "{cm:IconGame}"
;Name: "{userdesktop}\{cm:IconGame} VR"; Filename: "{app}\AicomiVR\AicomiVR.exe"; IconFilename: "{app}\AicomiVR\AicomiVR.exe"; WorkingDir: "{app}\AicomiVR\"; Flags: createonlyiffileexists; Tasks: desktopicon; Comment: "{cm:IconGame}"; Components: Patch\VR

[Run]
Filename: "{app}\InitSetting.exe"; Description: "{cm:RunGame}"; Flags: postinstall runasoriginaluser nowait skipifsilent skipifdoesntexist
;Filename: "{app}\[UTILITY] KKManager\StandaloneUpdater.exe"; Parameters: """{app}"""; Description: "{cm:StartUpdate}"; Flags: postinstall runascurrentuser unchecked nowait skipifsilent skipifdoesntexist
#include "HelperLib\CommonRun.iss"

[Registry]
; The rest of regkeys is added in CommonRun.iss
Root: HKCU; Subkey: "Software\ILLGAMES\HoneyCome"; Check: HoneyComeInstalled
Root: HKCU; Subkey: "Software\ILLGAMES\HoneyCome"; Check: HoneyComeInstalled; ValueType: string; ValueName: "INSTALLDIR_HFP"; ValueData: "{app}\"
Root: HKCU; Subkey: "Software\ILLGAMES\HoneyCome"; Check: HoneyComeInstalled; ValueType: string; ValueName: "INSTALLDIR"; ValueData: "{app}\"; Tasks: regfix
Root: HKCU; Subkey: "Software\ILLGAMES\HoneyCome"; Check: HoneyComeInstalled; ValueType: string; ValueName: "PRODUCTNAME"; ValueData: "ハニカム"; Tasks: regfix
Root: HKCU; Subkey: "Software\ILLGAMES\DigitalCraft"; Check: DigitalCraftInstalled
Root: HKCU; Subkey: "Software\ILLGAMES\DigitalCraft"; Check: DigitalCraftInstalled; ValueType: string; ValueName: "INSTALLDIR_HFP"; ValueData: "{app}\"
Root: HKCU; Subkey: "Software\ILLGAMES\DigitalCraft"; Check: DigitalCraftInstalled; ValueType: string; ValueName: "INSTALLDIR"; ValueData: "{app}\"; Tasks: regfix
Root: HKCU; Subkey: "Software\ILLGAMES\DigitalCraft"; Check: DigitalCraftInstalled; ValueType: string; ValueName: "PRODUCTNAME"; ValueData: "DigitalCraft"; Tasks: regfix

[Code]
// --------------------------------------------------------------------------------------- Helper methods
// During installation HoneyCome_Data and HoneyComeccp_Data are removed so can't be relied on
function HoneyComeInstalled(): Boolean;
begin
  result := FileExists(ExpandConstant('{app}\abdata\hscene\obiparamator\000_01.unity3d'));
end;

function DigitalCraftInstalled(): Boolean;
begin
  Result := FileExists(ExpandConstant('{app}\DigitalCraft\DigitalCraft.exe'));
end;

function DolceInstalled(): Boolean;
begin
  Result := FileExists(ExpandConstant('{app}\DigitalCraft\DigitalCraft.exe'));
end;

function DolceNotInstalled(): Boolean;
begin
  Result := not FileExists(ExpandConstant('{app}\DigitalCraft\DigitalCraft.exe'));
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

// --------------------------------------------------------------------------------------- Installation Events

function OnInstallLocationTest(): Boolean; // Additional validity checks (.exe checks are already passed)
begin
  if (not FileExists(ExpandConstant('{app}\HoneyCome_Data\resources.assets')) 
  and not FileExists(ExpandConstant('{app}\HoneyComeccp_Data\resources.assets')) 
  and not DigitalCraftInstalled()) then
  begin
    // Cancel, there's file corruptions that we can't fix
    MsgBox(ExpandConstant('{cm:MsgMissingGameFiles}'), mbCriticalError, MB_OK);
    Result := False;
    Exit;
  end;
  
  if FileExists(ExpandConstant('{app}\DigitalCraft.exe')) then
  begin
    MsgBox('It looks like the Studio is installed to the same directory as the game, most likely breaking the game install. Studio should be installed outside of the this game''s folder. You will have to reinstall the game and run this patch again.', mbError, MB_OK);
    Result := False;
    Exit;
  end;
  
  Result := True;
  
    if Result = True then
    begin
      if (HoneyComeInstalled()) then
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
          // Check for missing paid DLC
          if not DolceInstalled() then
          begin
            SuppressibleMsgBox(ExpandConstant('{cm:MsgMissingDLC1}'), mbInformation, MB_OK, 0);
          end;
        end;
      end
      else
      begin
        // Check for file corruptions
        if (not FileExists(ExpandConstant('{app}\abdata\craft\anime\000_00.unity3d'))
        or not FileExists(ExpandConstant('{app}\abdata\sound\setting\sound3dsettingdata\00.unity3d'))
        or not FileExists(ExpandConstant('{app}\abdata\sound\setting\soundsettingdata\00.unity3d'))) then
        begin
          MsgBox(ExpandConstant('{cm:MsgMissingGameFiles}'), mbError, MB_OK);
          Result := False;
        end;
      end;
    end;
end;

procedure OnTasksPageOpen(); // Use to change which tasks are on by default
begin
end;

procedure OnPrepKillTasks(); // Close the game if it's running
begin
  MassTaskKill(['HoneyCome.exe', 'HoneyComeccp.exe', 'DigitalCraft.exe', 'UnityCrashHandler64.exe',
                'InitSetting.exe', 'KKManager.exe', 'StandaloneUpdater.exe']);
end;

procedure OnPrepDoCleanup(); // Remove any additional mods outside of the Bepinex folder
begin
  if WizardIsTaskSelected('delete\Listfiles') then
    RemoveNonstandardListfiles(ExpandConstant('{app}'), ExpandConstant('{src}'));

  if WizardIsTaskSelected('delete\scripts') then
  begin
    DelTree(ExpandConstant('{app}\scripts'), True, True, True);
    DelTree(ExpandConstant('{app}\frida-scripts'), True, True, True);
    DeleteFile(ExpandConstant('{app}\dxgi.dll'));
    DeleteFile(ExpandConstant('{app}\frida-gadget.config'));
    DeleteFile(ExpandConstant('{app}\frida-gadget.dll'));
  end;
end;

procedure OnInstallCompleted(); // Final installation step, use to modify files installed by the patch
begin
  if DigitalCraftInstalled() then
    FileCopy(ExpandConstant('{app}\winhttp.dll'), ExpandConstant('{app}\DigitalCraft\winhttp.dll'), false);
end;
