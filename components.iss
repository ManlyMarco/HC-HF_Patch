[Components]
Name: "BepInEx";                               Description: "BepInEx-Unity.IL2CPP-win-x64 v6.0.0.0 (Plugin framework)"                             ; Types: full_en full extra_en extra custom bare; Flags: fixed
Name: "BepInEx\MessageCenter";                 Description: "Message Center v0.7 (Allows plugins to show messages in top left corner of the game)" ; Types: full_en full extra extra_en
Name: "BepInEx\ConfigurationManager_Il2Cpp";   Description: "BepInEx.ConfigurationManager v18.0 (Can change plugin settings. Press F1 to open)"    ; Types: full_en full extra extra_en
Name: "BepInEx\BepInEx_SplashScreen_BepInEx6"; Description: "BepInEx.SplashScreen_BepInEx6 v2.0.0.0 (A loading screen on game startup with information about patchers and plugins being currently loaded)"; Types: full_en full extra extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "IllusionLaunchers";                     Description: "IllusionLaunchers_HoneyCome v3.4.1.22526 (Custom game launcher)"                      ; Types: full_en full extra extra_en custom
Name: "KKManager";                             Description: "KKManager v0.23.0.0 (Manage and update mods, browse cards)"                           ; Types: full_en full extra extra_en custom
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
; Name: "API";                                   Description: "APIs (Plugins required by other plugins and mods to function)"                        ; Types: full_en full extra extra_en custom bare; Flags: fixed
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "AT";                                    Description: "XUnity Auto Translator v5.3.0 (Translation loader, automatic web translations)"       ; Types: full extra full_en extra_en custom
Name: "AT\HC_HideLanguageSelector";            Description: "Hide language selection in title menu v1.0 (Hides Language button from title menu, use the launcher to change language instead)"; Types: full_en full extra extra_en
; Name: "AT\TL";                                 Description: "{cm:CompTL}"                                                                          ; Types: full_en extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "UNC";                                   Description: "{cm:CompUNC}"                                                                         ; Types: full_en full extra extra_en
Name: "UNC\UncensorHardmod";                   Description: "Hardmod Uncensor 2023/09/08 (Basic male and female uncensor, scrunchy)"               ; Types: full_en full extra extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
; Name: "Content";                               Description: "Additional content (Needed to properly load most character cards and scenes)"         ; Types: full_en full extra extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "FIX";                                   Description: "{cm:CompFIX}"                                                                         ; Types: extra extra_en
Name: "FIX\IllusionFixes";                     Description: "IllusionFixes_IL2CPP v21.0.1 (A collection of essential fixes and improvements)"      ; Types: full_en full extra extra_en custom bare
Name: "FIX\WebRequestBlocker";                 Description: "Web Request Blocker v1.0.0 (Fixes the game requiring internet connection to start)"   ; Types: full_en full extra extra_en custom bare
Name: "FIX\IMGUIModule_Il2Cpp_CoreCLR_Patcher"; Description: "IMGUIModule.Il2Cpp.CoreCLR.Patcher v1.0.0.0 (Fixes some plugin interfaces not working correctly)"; Types: full_en full extra extra_en custom bare
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "Feature";                               Description: "Improvements and additional features"                                                 
Name: "Feature\HC_ConfigurationManager";       Description: "HC_ConfigurationManager v19.1 (Adds 'Plugin Settings' button inside the game settings screen)"; Types: full_en full extra extra_en
Name: "Feature\HC_PovX";                       Description: "HC_PovX v1.0.0 (Adds first-person view in H scenes, check hotkeys in plugin settings)"; Types: full_en full extra extra_en
Name: "Feature\MuteInBackground";              Description: "Mute In Background v0.7 (Mute the game when it's not in focus, configure in plugin settings)"; Types: full_en full extra extra_en
Name: "Feature\HC_FixationalEyeMovement";      Description: "FixationalEyeMovement v1.0.1 (Makes eyes slightly move around to mimic eyes focusing on different things)"; Types: extra extra_en
Name: "Feature\HC_DisplayofThumbnails";        Description: "DisplayofThumbnails v0.1.0 (Increase size of character and clothing save/load window in maker)"; Types: extra extra_en
Name: "Feature\GraphicsSettings";              Description: "Graphics Settings v0.7 (More graphics settings, access from plugin settings)"         ; Types: extra extra_en
Name: "Feature\EnableResize";                  Description: "Enable Resize v0.7 (Enable resizing of game window)"                                  ; Types: extra extra_en
Name: "Feature\EnableFullScreenToggle";        Description: "Enable Full Screen Toggle v0.7 (Allow toggling full screen with Alt+Enter)"           ; Types: extra extra_en
Name: "Feature\LoveMachine";                   Description: "LoveMachine v3.14.0 (Adds support for some computer-controlled sex toys)"             
Name: "Feature\HC_HGaugeCtrl";                 Description: "HGaugeCtrl v0.3.0 (Plugin to get operation similar to KK's H auto mode)"              ; Types: extra extra_en
Name: "Feature\HC_CrossFader";                 Description: "CrossFader v0.1.1 (Replaces fades between animations with animated transitions)"      ; Types: extra extra_en
Name: "Feature\Hardmods";                      Description: "Hardmods 2023/10/17 (Numerous hardmods)"                                              ; Types: extra extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "MISC";                                  Description: "{cm:CompMISC}"                                                                        
Name: "MISC\FullSave";                         Description: "Full Save (Save file with everything unlocked in main game. Overwrites your current progress!)"

[Files]
Source: "Input\_Plugins\_out\BepInEx-Unity.IL2CPP-win-x64-6.0.0-be.674+82077ec\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs solidbreak; Components: BepInEx; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\BepInEx.ConfigurationManager.Il2Cpp.CoreCLR\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: BepInEx\ConfigurationManager_Il2Cpp; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\EnableFullScreenToggleIL2CPP_net6\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\EnableFullScreenToggle; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\EnableResizeIL2CPP_net6\*";    DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\EnableResize; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\FullSave\*";                   DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: MISC\FullSave; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\GraphicsSettingsIL2CPP_net6\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\GraphicsSettings; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\HC_ConfigurationManager\*";    DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\HC_ConfigurationManager; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\HC_PovX\*";                    DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\HC_PovX; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\IMGUIModule.Il2Cpp.CoreCLR.Patcher\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: FIX\IMGUIModule_Il2Cpp_CoreCLR_Patcher; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\IllusionFixes_IL2CPP\*";       DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: FIX\IllusionFixes; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\IllusionLaunchers_HoneyCome\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: IllusionLaunchers; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\KKManager\*";                  DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: KKManager; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\MessageCenterIL2CPP_net6\*";   DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: BepInEx\MessageCenter; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\BepInEx.SplashScreen_BepInEx6\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: BepInEx\BepInEx_SplashScreen_BepInEx6; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\MuteInBackgroundIL2CPP_net6\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\MuteInBackground; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\HC_DisplayofThumbnails\*";     DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\HC_DisplayofThumbnails; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\HC_FixationalEyeMovement\*";   DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\HC_FixationalEyeMovement; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\LoveMachine_for_HoneyCome\*";  DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\LoveMachine; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\HC_CrossFader\*";              DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\HC_CrossFader; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\HC_HGaugeCtrl\*";              DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\HC_HGaugeCtrl; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\Hardmods\*";                   DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\Hardmods; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\Uncensor_Hardmod_zodgame\*";   DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: UNC\UncensorHardmod; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\WebRequestBlocker\*";          DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: FIX\WebRequestBlocker; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\XUnity.AutoTranslator-BepInEx-IL2CPP\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: AT; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\HC_HideLanguageSelector\*";    DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: AT\HC_HideLanguageSelector; Excludes: "manifest.xml"