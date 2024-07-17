[Components]
Name: "BepInEx";                               Description: "BepInEx-Unity.IL2CPP win-x64 v6.0.0 be.692 (Plugin framework)"                        ; Types: full_en full extra_en extra custom bare; Flags: fixed
Name: "BepInEx\MessageCenter";                 Description: "Message Center v0.7 (Allows plugins to show messages in top left corner of the game)" ; Types: full_en full extra extra_en
Name: "BepInEx\ConfigurationManager_Il2Cpp";   Description: "BepInEx.ConfigurationManager v18.3 (Can change plugin settings. Press F1 to open)"    ; Types: full_en full extra extra_en
Name: "BepInEx\BepInEx_SplashScreen_BepInEx6"; Description: "BepInEx.SplashScreen_BepInEx6 v2.2.0.0 (A loading screen on game startup with information about patchers and plugins being currently loaded)"; Types: full_en full extra extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "IllusionLaunchers";                     Description: "IllusionLaunchers_HoneyCome v3.4.1.36297 (Custom game launcher)"                      ; Types: full_en full extra extra_en custom
Name: "KKManager";                             Description: "KKManager v1.3.0.0 (Manage and update mods, browse cards)"                            ; Types: full_en full extra extra_en custom
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "API";                                   Description: "APIs (Plugins required by other plugins and mods to function)"                        ; Types: full_en full extra extra_en custom bare; Flags: fixed
Name: "API\HC_BepisPlugins";                   Description: "HC_BepisPlugins v19.7 (Essential plugins required by many other plugins to function)" ; Types: full_en full extra extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "AT";                                    Description: "XUnity Auto Translator v5.3.1 (Translation loader, automatic web translations)"       ; Types: full extra full_en extra_en custom
Name: "AT\HC_HideLanguageSelector";            Description: "Hide language selection in title menu v1.1 (Prevents translation issues. Use the launcher to change language instead)"; Types: full_en full extra extra_en
Name: "AT\HC_Studio_HideLanguageSelector";     Description: "Hide language selection in studio title menu v1.0 (Prevents translation issues. Use the launcher to change language instead)"; Types: full_en full extra extra_en
; Name: "AT\TL";                                 Description: "{cm:CompTL}"                                                                          ; Types: full_en extra_en
Name: "AT\TL\HC_Subtitles";                    Description: "Subtitles v0.0.2 (Show subtitles for girl's voice in H-Scenes)"                       ; Types: full extra full_en extra_en custom
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "UNC";                                   Description: "{cm:CompUNC}"                                                                         ; Types: full_en full extra extra_en
Name: "UNC\UncensorHardmod";                   Description: "Hardmod Uncensor 2023/09/08 (Basic male and female uncensor, scrunchy)"               ; Types: full_en full extra extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#ifndef LITE
Name: "Content";                               Description: "Additional content (Needed to properly load most character cards and scenes)"         ; Types: full_en full extra extra_en
Name: "Content\Hardmods";                      Description: "Hardmod pack 2024/07/17 (Numerous clothing and accessory mods. Can't be uninstalled!)"; Types: extra extra_en
Name: "Content\Hardmods\HardmodCards";         Description: "Character and outfit cards (A lot of extra cards that came included with the hardmods. Will fill up your character list!)"
Name: "Content\HC_SliderUnlock";               Description: "SliderUnlock v1.0.69 (Unlocks slider ranges in maker(fragile and might break))"       ; Types: full_en full extra extra_en
#endif 
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "FIX";                                   Description: "{cm:CompFIX}"                                                                         ; Types: extra extra_en
Name: "FIX\IllusionFixes";                     Description: "IllusionFixes_IL2CPP v21.5.2 (A collection of essential fixes and improvements)"      ; Types: full_en full extra extra_en custom bare
Name: "FIX\WebRequestBlocker";                 Description: "Web Request Blocker v1.0.0 (Fixes the game requiring internet connection to start)"   ; Types: full_en full extra extra_en custom bare
Name: "FIX\HC_Fix_CraftWindow";                Description: "Fix_CraftWindow v1.0.1 (Enlarge some studio menus to show more items)"                ; Types: full_en full extra extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "Feature";                               Description: "Improvements and additional features"                                                 
Name: "Feature\HC_PovX";                       Description: "HC_PovX v1.0.0 (Adds first-person view in H scenes, check hotkeys in plugin settings)"; Types: full_en full extra extra_en
Name: "Feature\MuteInBackground";              Description: "Mute In Background v0.7 (Mute the game when it's not in focus, configure in plugin settings)"; Types: full_en full extra extra_en
Name: "Feature\HC_HGaugeAndSpeedCtrl";         Description: "HC_HGaugeAndSpeedCtrl v1.2.0 (Modifies how H scene gauges, speeds and climaxes work, check plugin settings)"; Types: full_en full extra extra_en
Name: "Feature\HC_HSceneBreastJiggle";         Description: "HC_HSceneBreastJiggle v1.1.0 (Temporarily change breast softness and weight in H scenes)"; Types: full_en full extra extra_en
Name: "Feature\HC_LogoRemover";                Description: "HC_LogoRemover v1.0.0 (Toggle the logo that appears on screenshots on or off)"        ; Types: full_en full extra extra_en
Name: "Feature\HC_StudioCharaSort";            Description: "Studio Character Sort v1.1.0 (Change default sort order of cards in studio)"          ; Types: full_en full extra extra_en
Name: "Feature\GraphicsSettings";              Description: "Graphics Settings v0.7 (More graphics settings, access from plugin settings)"         ; Types: extra extra_en
Name: "Feature\HC_FXsettings";                 Description: "HC_FXsettings v1.3.2 (Edit Unity and Beautify post processing settings in HoneyCome through ConfigurationManager)"; Types: extra extra_en
Name: "Feature\HC_FixationalEyeMovement";      Description: "FixationalEyeMovement v1.0.1.1 (Makes eyes slightly move around to mimic eyes focusing on different things)"; Types: extra extra_en
Name: "Feature\HC_DisplayofThumbnails";        Description: "DisplayofThumbnails v0.1.0.1 (Increase size of character and clothing save/load window in maker)"; Types: extra extra_en
Name: "Feature\EnableResize";                  Description: "Enable Resize v0.7 (Enable resizing of game window)"                                  ; Types: extra extra_en
Name: "Feature\EnableFullScreenToggle";        Description: "Enable Full Screen Toggle v0.7 (Allow toggling full screen with Alt+Enter)"           ; Types: extra extra_en
Name: "Feature\HC_CrossFader";                 Description: "CrossFader v0.1.2 (Replaces fades between animations with animated transitions)"      ; Types: extra extra_en
Name: "Feature\HC_Studio_TitleSkip";           Description: "Skip title screen in studio v1.0 (Skip title screen in studio)"                       ; Types: extra extra_en
Name: "Feature\HC_Ahegao";                     Description: "HC_Ahegao v1.0.0 (Allows changing various parameters for orgasms and faces during H)" ; Types: extra extra_en
Name: "Feature\HC_PlayerHCloth";               Description: "HC_PlayerHCloth v0.0.1 (Allows changing state of player clothes during H)"            ; Types: extra extra_en
Name: "Feature\HC_Hair";                       Description: "HC_Hair v0.0.2 (When eyes are set to show on top of hair, do not draw them over the hair but instead make the hair partially transparent. Doesn't work on some modded hair)"
Name: "Feature\LoveMachine";                   Description: "LoveMachine v3.19.0 (Adds support for some computer-controlled sex toys)"             
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "MISC";                                  Description: "{cm:CompMISC}"                                                                        
Name: "MISC\RuntimeUnityEditor_BepInEx6_IL2CPP"; Description: "Runtime Unity Editor v5.3.0 (Debugging tool for applications made with Unity3D game engine (IL2CPP runtime))"; Types: full_en full extra extra_en
Name: "MISC\RuntimeUnityEditor\Trainer";       Description: "Cheat Tools v3.3.2 (Trainer, press F12 to open, it's in the bottom left corner)"      ; Types: full_en full extra_en extra
Name: "MISC\FullSave";                         Description: "Full Save (Save file with everything unlocked in main game. Overwrites your current progress!)"
Name: "MISC\Memes";                            Description: "Custom intro voices v29.0 (What the fuck is that)"                                    ; Types: extra extra_en

[Files]
Source: "Input\_Plugins\_out\BepInEx-Unity.IL2CPP-win-x64\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs solidbreak; Components: BepInEx; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\BepInEx.ConfigurationManager.Il2Cpp\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: BepInEx\ConfigurationManager_Il2Cpp; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\BepInEx.SplashScreen_BepInEx6\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: BepInEx\BepInEx_SplashScreen_BepInEx6; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\EnableFullScreenToggleIL2CPP_net6\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\EnableFullScreenToggle; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\EnableResizeIL2CPP_net6\*";    DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\EnableResize; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\FullSave\*";                   DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: MISC\FullSave; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\GraphicsSettingsIL2CPP_net6\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\GraphicsSettings; Excludes: "manifest.xml"
#ifndef LITE
Source: "Input\_Plugins\_out\Hardmods\*";                   DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Content\Hardmods; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\Hardmods_cards\*";             DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Content\Hardmods\HardmodCards; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\HC_SliderUnlock\*";            DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Content\HC_SliderUnlock; Excludes: "manifest.xml"; Check: DolceNotInstalled
Source: "Input\_Plugins\_out\HC_SliderUnlock_Dolce\*";      DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Content\HC_SliderUnlock; Excludes: "manifest.xml"; Check: DolceInstalled
#endif 
Source: "Input\_Plugins\_out\HC_BepisPlugins\*";            DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: API\HC_BepisPlugins; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\HC_CrossFader\*";              DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\HC_CrossFader; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\HC_DisplayofThumbnails\*";     DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\HC_DisplayofThumbnails; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\HC_FXsettings\*";              DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\HC_FXsettings; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\HC_Fix_CraftWindow\*";         DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: FIX\HC_Fix_CraftWindow; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\HC_FixationalEyeMovement\*";   DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\HC_FixationalEyeMovement; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\HC_HGaugeAndSpeedCtrl\*";      DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\HC_HGaugeAndSpeedCtrl; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\HC_HSceneBreastJiggle\*";      DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\HC_HSceneBreastJiggle; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\HC_Hair\*";                    DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\HC_Hair; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\HC_HideLanguageSelector\*";    DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: AT\HC_HideLanguageSelector; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\HC_PovX\*";                    DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\HC_PovX; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\HC_Studio_HideLanguageSelector\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: AT\HC_Studio_HideLanguageSelector; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\HC_Studio_TitleSkip\*";        DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\HC_Studio_TitleSkip; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\IllusionFixes_IL2CPP\*";       DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: FIX\IllusionFixes; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\IllusionLaunchers_HoneyCome\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: IllusionLaunchers; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\KKManager\*";                  DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: KKManager; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\LoveMachine_for_HoneyCome\*";  DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\LoveMachine; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\MessageCenterIL2CPP_net6\*";   DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: BepInEx\MessageCenter; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\MuteInBackgroundIL2CPP_net6\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\MuteInBackground; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\HC_Ahegao\*";                  DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\HC_Ahegao; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\HC_LogoRemover\*";             DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\HC_LogoRemover; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\HC_PlayerHCloth\*";            DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\HC_PlayerHCloth; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\HC_StudioCharaSort\*";         DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\HC_StudioCharaSort; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\RuntimeUnityEditor_BepInEx6.IL2CPP\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: MISC\RuntimeUnityEditor_BepInEx6_IL2CPP; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\HC_CheatTools\*";              DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: MISC\RuntimeUnityEditor\Trainer; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\Memes\*";                      DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: MISC\Memes; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\Uncensor_Hardmod_zodgame\*";   DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: UNC\UncensorHardmod; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\WebRequestBlocker\*";          DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: FIX\WebRequestBlocker; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\XUnity.AutoTranslator-BepInEx-IL2CPP\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: AT; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\HC_Subtitles\*";               DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: AT\TL\HC_Subtitles; Excludes: "manifest.xml"