




```text

file is a merged representation of the entire codebase, combined into a single document by Repomix.
The content has been processed where line numbers have been added, security check has been disabled.

# File Summary

## Purpose
This file contains a packed representation of the entire repository's contents.
It is designed to be easily consumable by AI systems for analysis, code review,
or other automated processes.

## File Format
The content is organized as follows:
1. This summary section
2. Repository information
3. Directory structure
4. Multiple file entries, each consisting of:
  a. A header with the file path (## File: path/to/file)
  b. The full contents of the file in a code block

## Usage Guidelines
- This file should be treated as read-only. Any changes should be made to the
  original repository files, not this packed version.
- When processing this file, use the file path to distinguish
  between different files in the repository.
- Be aware that this file may contain sensitive information. Handle it with
  the same level of security as you would the original repository.

## Notes
- Some files may have been excluded based on .gitignore rules and Repomix's configuration
- Binary files are not included in this packed representation. Please refer to the Repository Structure section for a complete list of file paths, including binary files
- Files matching patterns in .gitignore are excluded
- Files matching default ignore patterns are excluded
- Line numbers have been added to the beginning of each line
- Security check has been disabled - content may contain sensitive information
- Files are sorted by Git change count (files with more changes are at the bottom)

## Additional Info

# Directory Structure
```
Enchanted/
  Application/
    EnchantedApp.swift
  Assets.xcassets/
    AccentColor.colorset/
      Contents.json
    AppIcon.appiconset/
      Contents.json
    AppIcon.solidimagestack/
      Back.solidimagestacklayer/
        Content.imageset/
          Contents.json
        Contents.json
      Front.solidimagestacklayer/
        Content.imageset/
          Contents.json
        Contents.json
      Middle.solidimagestacklayer/
        Content.imageset/
          Contents.json
        Contents.json
      Contents.json
    Colors/
      bgCustom.colorset/
        Contents.json
      gray2Custom.colorset/
        Contents.json
      gray3Custom.colorset/
        Contents.json
      gray4Custom.colorset/
        Contents.json
      gray5Custom.colorset/
        Contents.json
      grayCustom.colorset/
        Contents.json
      label.colorset/
        Contents.json
      Contents.json
    logo-nobg.imageset/
      Contents.json
    ollama.imageset/
      Contents.json
    Contents.json
  Extensions/
    AVSpeechSynthesisVoice+Extension.swift
    Binding+Extension.swift
    Button+Extension.swift
    Colours+Extension.swift
    Date+Extension.swift
    Image+Extension.swift
    KeyboardReadable+Extension.swift
    ModelContext+Extension.swift
    NSClipboardItem.swift
    SplashSyntaxHighlighter+Extension.swift
    UIImage+Extension.swift
    View+Extension.swift
  Helpers/
    Accessibility.swift
    AsyncQueue.swift
    DeallocPrinter.swift
    HotKeys.swift
    SleepTest.swift
  Models/
    AppColorScheme.swift
    ConversationState.swift
    LanguageModel.swift
    NotificationMessage.swift
    SamplePrompt.swift
  Preview Content/
    Preview Assets.xcassets/
      Contents.json
  Services/
    Clipboard.swift
    HapticsService.swift
    HotkeyService.swift
    OllamaService.swift
    SpeechService.swift
    SwiftDataService.swift
    Throttler.swift
  Stores/
    AppStore.swift
    CompletionsStore.swift
    ConversationStore.swift
    LanguageModelStore.swift
  SwiftData/
    Models/
      CompletionInstructionSD.swift
      ConversationSD.swift
      LanguageModelSD.swift
      MessageSD.swift
  UI/
    iOS/
      Components/
        SelectTextSheet.swift
      ChatView_iOS.swift
    macOS/
      Chat/
        Components/
          InputFields_macOS.swift
          Sidebar_macOS.swift
          ToolbarView_macOS.swift
        ChatView_macOS.swift
      CompletionsEditor/
        CompletionsEditor.swift
        CompletionsEditorView.swift
        UpsertCompletionView.swift
      Components/
        CompletionButtonView.swift
        CompletionPanelView.swift
        DragAndDrop.swift
        PromptPanelView.swift
      MenuBar/
        MenuBarControl_macOS.swift
        MenuBarControlView_macOS.swift
      PromptPanel/
        FloatingPanel.swift
        PanelCompletionsVM.swift
        PanelManager.swift
        PromptPanel.swift
      Menus.swift
    Shared/
      Chat/
        Components/
          ChatMessages/
            ChatMessageView.swift
            CodeBlockView.swift
            MarkdownColours.swift
          Recorder/
            RecordingView.swift
            SpeechRecogniser.swift
          ConversationStatusView.swift
          EmptyConversaitonView.swift
          Header.swift
          MessageListVIew.swift
          ModelSelectorView.swift
          OptionsMenuView.swift
          ReadingAloudView.swift
          RemovableImage.swift
          RunningBorder.swift
          SelectedImageView.swift
          UnreachableAPIView.swift
        Chat.swift
      Components/
        SimpleFloatingButton.swift
      Settings/
        Settings.swift
        SettingsView.swift
      Sidebar/
        Components/
          ConversationHistoryListView.swift
          KeyboardShortcuts.swift
          SidebarButton.swift
          SideBarMenuView.swift
        SidebarView.swift
      Voice/
        Voice.swift
        VoiceView.swift
      ApplicationEntry.swift
    Helpers.swift
  Accessibility.plist
  Enchanted.entitlements
  EnchantedDebug.entitlements
  Info.plist
Enchanted.xcodeproj/
  project.xcworkspace/
    xcshareddata/
      swiftpm/
        Package.resolved
      IDEWorkspaceChecks.plist
      WorkspaceSettings.xcsettings
    xcuserdata/
      wpc.xcuserdatad/
        WorkspaceSettings.xcsettings
    contents.xcworkspacedata
  xcshareddata/
    xcschemes/
      Enchanted.xcscheme
  xcuserdata/
    wpc.xcuserdatad/
      xcdebugger/
        Breakpoints_v2.xcbkptlist
      xcschemes/
        xcschememanagement.plist
  project.pbxproj
LICENSE
PRIVACY.md
README.md
SUPPORT.md
```

# Files

## File: Enchanted/Application/EnchantedApp.swift
````swift
 1: //
 2: //  EnchantedApp.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 09/12/2023.
 6: //
 7: 
 8: import SwiftUI
 9: import SwiftData
10: 
11: #if os(macOS)
12: import KeyboardShortcuts
13: extension KeyboardShortcuts.Name {
14:     static let togglePanelMode = Self("togglePanelMode1", default: .init(.k, modifiers: [.command, .option]))
15: }
16: #endif
17: 
18: @main
19: struct EnchantedApp: App {
20:     @State private var appStore = AppStore.shared
21: #if os(macOS)
22:     @NSApplicationDelegateAdaptor(PanelManager.self) var panelManager
23: #endif
24:     
25:     var body: some Scene {
26:         WindowGroup {
27:             ApplicationEntry()
28: #if os(macOS)
29:                 .onKeyboardShortcut(KeyboardShortcuts.Name.togglePanelMode, type: .keyDown) {
30:                     print("heya")
31:                     panelManager.togglePanel()
32:                 }
33:                 .onAppear {
34:                     NSWindow.allowsAutomaticWindowTabbing = false
35:                 }
36: #endif
37:         }
38: #if os(macOS)
39:         .commands {
40:             Menus()
41:         }
42: #endif
43: #if os(macOS)
44:         Window("Keyboard Shortcuts", id: "keyboard-shortcuts") {
45:             KeyboardShortcutsDemo()
46:         }
47: #endif
48:         
49: #if os(macOS)
50: #if false
51:         MenuBarExtra {
52:             MenuBarControl()
53:         } label: {
54:             if let iconName = appStore.menuBarIcon {
55:                 Image(systemName: iconName)
56:             } else {
57:                 MenuBarControlView.icon
58:             }
59:         }
60:         .menuBarExtraStyle(.window)
61: #endif
62: #endif
63:     }
64: }
````

## File: Enchanted/Assets.xcassets/AccentColor.colorset/Contents.json
````json
 1: {
 2:   "colors" : [
 3:     {
 4:       "idiom" : "universal"
 5:     }
 6:   ],
 7:   "info" : {
 8:     "author" : "xcode",
 9:     "version" : 1
10:   }
11: }
````

## File: Enchanted/Assets.xcassets/AppIcon.appiconset/Contents.json
````json
 1: {
 2:   "images" : [
 3:     {
 4:       "filename" : "ios 1.png",
 5:       "idiom" : "universal",
 6:       "platform" : "ios",
 7:       "size" : "1024x1024"
 8:     },
 9:     {
10:       "filename" : "latest-16.png",
11:       "idiom" : "mac",
12:       "scale" : "1x",
13:       "size" : "16x16"
14:     },
15:     {
16:       "filename" : "latest-32.png",
17:       "idiom" : "mac",
18:       "scale" : "2x",
19:       "size" : "16x16"
20:     },
21:     {
22:       "filename" : "latest-32.png",
23:       "idiom" : "mac",
24:       "scale" : "1x",
25:       "size" : "32x32"
26:     },
27:     {
28:       "filename" : "latest-64.png",
29:       "idiom" : "mac",
30:       "scale" : "2x",
31:       "size" : "32x32"
32:     },
33:     {
34:       "filename" : "latest-128.png",
35:       "idiom" : "mac",
36:       "scale" : "1x",
37:       "size" : "128x128"
38:     },
39:     {
40:       "filename" : "latest-256.png",
41:       "idiom" : "mac",
42:       "scale" : "2x",
43:       "size" : "128x128"
44:     },
45:     {
46:       "filename" : "latest-256.png",
47:       "idiom" : "mac",
48:       "scale" : "1x",
49:       "size" : "256x256"
50:     },
51:     {
52:       "filename" : "latest-512.png",
53:       "idiom" : "mac",
54:       "scale" : "2x",
55:       "size" : "256x256"
56:     },
57:     {
58:       "filename" : "latest-512.png",
59:       "idiom" : "mac",
60:       "scale" : "1x",
61:       "size" : "512x512"
62:     },
63:     {
64:       "filename" : "latest-1024.png",
65:       "idiom" : "mac",
66:       "scale" : "2x",
67:       "size" : "512x512"
68:     }
69:   ],
70:   "info" : {
71:     "author" : "xcode",
72:     "version" : 1
73:   }
74: }
````

## File: Enchanted/Assets.xcassets/AppIcon.solidimagestack/Back.solidimagestacklayer/Content.imageset/Contents.json
````json
 1: {
 2:   "images" : [
 3:     {
 4:       "filename" : "back.jpg",
 5:       "idiom" : "vision",
 6:       "scale" : "2x"
 7:     }
 8:   ],
 9:   "info" : {
10:     "author" : "xcode",
11:     "version" : 1
12:   }
13: }
````

## File: Enchanted/Assets.xcassets/AppIcon.solidimagestack/Back.solidimagestacklayer/Contents.json
````json
1: {
2:   "info" : {
3:     "author" : "xcode",
4:     "version" : 1
5:   }
6: }
````

## File: Enchanted/Assets.xcassets/AppIcon.solidimagestack/Front.solidimagestacklayer/Content.imageset/Contents.json
````json
 1: {
 2:   "images" : [
 3:     {
 4:       "filename" : "vision-front.png",
 5:       "idiom" : "vision",
 6:       "scale" : "2x"
 7:     }
 8:   ],
 9:   "info" : {
10:     "author" : "xcode",
11:     "version" : 1
12:   }
13: }
````

## File: Enchanted/Assets.xcassets/AppIcon.solidimagestack/Front.solidimagestacklayer/Contents.json
````json
1: {
2:   "info" : {
3:     "author" : "xcode",
4:     "version" : 1
5:   }
6: }
````

## File: Enchanted/Assets.xcassets/AppIcon.solidimagestack/Middle.solidimagestacklayer/Content.imageset/Contents.json
````json
 1: {
 2:   "images" : [
 3:     {
 4:       "filename" : "vision-front.png",
 5:       "idiom" : "vision",
 6:       "scale" : "2x"
 7:     }
 8:   ],
 9:   "info" : {
10:     "author" : "xcode",
11:     "version" : 1
12:   }
13: }
````

## File: Enchanted/Assets.xcassets/AppIcon.solidimagestack/Middle.solidimagestacklayer/Contents.json
````json
1: {
2:   "info" : {
3:     "author" : "xcode",
4:     "version" : 1
5:   }
6: }
````

## File: Enchanted/Assets.xcassets/AppIcon.solidimagestack/Contents.json
````json
 1: {
 2:   "info" : {
 3:     "author" : "xcode",
 4:     "version" : 1
 5:   },
 6:   "layers" : [
 7:     {
 8:       "filename" : "Front.solidimagestacklayer"
 9:     },
10:     {
11:       "filename" : "Middle.solidimagestacklayer"
12:     },
13:     {
14:       "filename" : "Back.solidimagestacklayer"
15:     }
16:   ]
17: }
````

## File: Enchanted/Assets.xcassets/Colors/bgCustom.colorset/Contents.json
````json
 1: {
 2:   "colors" : [
 3:     {
 4:       "color" : {
 5:         "color-space" : "extended-gray",
 6:         "components" : {
 7:           "alpha" : "1.000",
 8:           "white" : "1.000"
 9:         }
10:       },
11:       "idiom" : "universal"
12:     },
13:     {
14:       "appearances" : [
15:         {
16:           "appearance" : "luminosity",
17:           "value" : "dark"
18:         }
19:       ],
20:       "color" : {
21:         "platform" : "XR",
22:         "reference" : "systemBackgroundColor"
23:       },
24:       "idiom" : "universal"
25:     }
26:   ],
27:   "info" : {
28:     "author" : "xcode",
29:     "version" : 1
30:   }
31: }
````

## File: Enchanted/Assets.xcassets/Colors/gray2Custom.colorset/Contents.json
````json
 1: {
 2:   "colors" : [
 3:     {
 4:       "color" : {
 5:         "color-space" : "display-p3",
 6:         "components" : {
 7:           "alpha" : "1.000",
 8:           "blue" : "0.679",
 9:           "green" : "0.697",
10:           "red" : "0.676"
11:         }
12:       },
13:       "idiom" : "universal"
14:     },
15:     {
16:       "appearances" : [
17:         {
18:           "appearance" : "luminosity",
19:           "value" : "dark"
20:         }
21:       ],
22:       "color" : {
23:         "platform" : "XR",
24:         "reference" : "systemGray2Color"
25:       },
26:       "idiom" : "universal"
27:     }
28:   ],
29:   "info" : {
30:     "author" : "xcode",
31:     "version" : 1
32:   }
33: }
````

## File: Enchanted/Assets.xcassets/Colors/gray3Custom.colorset/Contents.json
````json
 1: {
 2:   "colors" : [
 3:     {
 4:       "color" : {
 5:         "color-space" : "display-p3",
 6:         "components" : {
 7:           "alpha" : "1.000",
 8:           "blue" : "0.814",
 9:           "green" : "0.790",
10:           "red" : "0.792"
11:         }
12:       },
13:       "idiom" : "universal"
14:     },
15:     {
16:       "appearances" : [
17:         {
18:           "appearance" : "luminosity",
19:           "value" : "dark"
20:         }
21:       ],
22:       "color" : {
23:         "platform" : "XR",
24:         "reference" : "systemGray3Color"
25:       },
26:       "idiom" : "universal"
27:     }
28:   ],
29:   "info" : {
30:     "author" : "xcode",
31:     "version" : 1
32:   }
33: }
````

## File: Enchanted/Assets.xcassets/Colors/gray4Custom.colorset/Contents.json
````json
 1: {
 2:   "colors" : [
 3:     {
 4:       "color" : {
 5:         "color-space" : "extended-srgb",
 6:         "components" : {
 7:           "alpha" : "1.000",
 8:           "blue" : "0.839",
 9:           "green" : "0.820",
10:           "red" : "0.820"
11:         }
12:       },
13:       "idiom" : "universal"
14:     },
15:     {
16:       "appearances" : [
17:         {
18:           "appearance" : "luminosity",
19:           "value" : "dark"
20:         }
21:       ],
22:       "color" : {
23:         "platform" : "ios",
24:         "reference" : "systemGray4Color"
25:       },
26:       "idiom" : "universal"
27:     }
28:   ],
29:   "info" : {
30:     "author" : "xcode",
31:     "version" : 1
32:   }
33: }
````

## File: Enchanted/Assets.xcassets/Colors/gray5Custom.colorset/Contents.json
````json
 1: {
 2:   "colors" : [
 3:     {
 4:       "color" : {
 5:         "color-space" : "extended-srgb",
 6:         "components" : {
 7:           "alpha" : "1.000",
 8:           "blue" : "0.918",
 9:           "green" : "0.898",
10:           "red" : "0.898"
11:         }
12:       },
13:       "idiom" : "universal"
14:     },
15:     {
16:       "appearances" : [
17:         {
18:           "appearance" : "luminosity",
19:           "value" : "dark"
20:         }
21:       ],
22:       "color" : {
23:         "color-space" : "extended-srgb",
24:         "components" : {
25:           "alpha" : "1.000",
26:           "blue" : "0.180",
27:           "green" : "0.173",
28:           "red" : "0.173"
29:         }
30:       },
31:       "idiom" : "universal"
32:     }
33:   ],
34:   "info" : {
35:     "author" : "xcode",
36:     "version" : 1
37:   }
38: }
````

## File: Enchanted/Assets.xcassets/Colors/grayCustom.colorset/Contents.json
````json
 1: {
 2:   "colors" : [
 3:     {
 4:       "color" : {
 5:         "color-space" : "extended-srgb",
 6:         "components" : {
 7:           "alpha" : "1.000",
 8:           "blue" : "0.576",
 9:           "green" : "0.557",
10:           "red" : "0.557"
11:         }
12:       },
13:       "idiom" : "universal"
14:     },
15:     {
16:       "appearances" : [
17:         {
18:           "appearance" : "luminosity",
19:           "value" : "dark"
20:         }
21:       ],
22:       "color" : {
23:         "color-space" : "extended-srgb",
24:         "components" : {
25:           "alpha" : "1.000",
26:           "blue" : "0.576",
27:           "green" : "0.557",
28:           "red" : "0.557"
29:         }
30:       },
31:       "idiom" : "universal"
32:     }
33:   ],
34:   "info" : {
35:     "author" : "xcode",
36:     "version" : 1
37:   }
38: }
````

## File: Enchanted/Assets.xcassets/Colors/label.colorset/Contents.json
````json
 1: {
 2:   "colors" : [
 3:     {
 4:       "color" : {
 5:         "platform" : "universal",
 6:         "reference" : "labelColor"
 7:       },
 8:       "idiom" : "universal"
 9:     },
10:     {
11:       "appearances" : [
12:         {
13:           "appearance" : "luminosity",
14:           "value" : "dark"
15:         }
16:       ],
17:       "color" : {
18:         "platform" : "universal",
19:         "reference" : "labelColor"
20:       },
21:       "idiom" : "universal"
22:     }
23:   ],
24:   "info" : {
25:     "author" : "xcode",
26:     "version" : 1
27:   }
28: }
````

## File: Enchanted/Assets.xcassets/Colors/Contents.json
````json
1: {
2:   "info" : {
3:     "author" : "xcode",
4:     "version" : 1
5:   }
6: }
````

## File: Enchanted/Assets.xcassets/logo-nobg.imageset/Contents.json
````json
 1: {
 2:   "images" : [
 3:     {
 4:       "filename" : "flatss.png",
 5:       "idiom" : "universal",
 6:       "scale" : "1x"
 7:     },
 8:     {
 9:       "idiom" : "universal",
10:       "scale" : "2x"
11:     },
12:     {
13:       "idiom" : "universal",
14:       "scale" : "3x"
15:     }
16:   ],
17:   "info" : {
18:     "author" : "xcode",
19:     "version" : 1
20:   }
21: }
````

## File: Enchanted/Assets.xcassets/ollama.imageset/Contents.json
````json
 1: {
 2:   "images" : [
 3:     {
 4:       "filename" : "ollama.png",
 5:       "idiom" : "universal",
 6:       "scale" : "1x"
 7:     },
 8:     {
 9:       "idiom" : "universal",
10:       "scale" : "2x"
11:     },
12:     {
13:       "idiom" : "universal",
14:       "scale" : "3x"
15:     }
16:   ],
17:   "info" : {
18:     "author" : "xcode",
19:     "version" : 1
20:   }
21: }
````

## File: Enchanted/Assets.xcassets/Contents.json
````json
1: {
2:   "info" : {
3:     "author" : "xcode",
4:     "version" : 1
5:   }
6: }
````

## File: Enchanted/Extensions/AVSpeechSynthesisVoice+Extension.swift
````swift
 1: //
 2: //  AVSpeechSynthesisVoice+Extension.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 27/05/2024.
 6: //
 7: 
 8: import Foundation
 9: import AVFoundation
10: 
11: extension AVSpeechSynthesisVoice {
12:     var prettyName: String {
13:         let name = self.name
14:         if name.lowercased().contains("default") || name.lowercased().contains("premium") || name.lowercased().contains("enhanced") {
15:             return name
16:         }
17:         
18:         let qualityString = {
19:             switch self.quality.rawValue {
20:             case 1: return "Default"
21:             case 2: return "Enhanced"
22:             case 3: return "Premium"
23:             default: return "Unknown"
24:             }
25:         }()
26:         
27:         return "\(name) (\(qualityString))"
28:     }
29: }
````

## File: Enchanted/Extensions/Binding+Extension.swift
````swift
 1: //
 2: //  Binding+Extension.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 22/12/2023.
 6: //
 7: 
 8: import SwiftUI
 9: 
10: extension Binding {
11:     func onChange(_ handler: @escaping (Value) -> Void) -> Binding<Value> {
12:         Binding(
13:             get: { self.wrappedValue },
14:             set: { newValue in
15:                 self.wrappedValue = newValue
16:                 handler(newValue)
17:             }
18:         )
19:     }
20: }
````

## File: Enchanted/Extensions/Button+Extension.swift
````swift
 1: //
 2: //  Button+Extension.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 11/02/2024.
 6: //
 7: 
 8: import SwiftUI
 9: 
10: struct GrowingButton: ButtonStyle {
11:     func makeBody(configuration: Configuration) -> some View {
12:         configuration.label
13:             .scaleEffect(configuration.isPressed ? 1.2 : 1)
14:             .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
15:     }
16: }
````

## File: Enchanted/Extensions/Colours+Extension.swift
````swift
 1: //
 2: //  Colours.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 09/12/2023.
 6: //
 7: 
 8: import SwiftUI
 9: 
10: // MARK: - Palette
11: extension Color {
12:     static let primary = Color(.label)
13:     static let secondary =  Color(.systemGray)
14:     
15:     static let labelCustom = Color("label")
16: }
17: 
18: // MARK: - hex
19: extension Color {
20:     init(hex: String) {
21:         let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
22:         var int: UInt64 = 0
23:         Scanner(string: hex).scanHexInt64(&int)
24:         let a, r, g, b: UInt64
25:         switch hex.count {
26:         case 3: // RGB (12-bit)
27:             (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
28:         case 6: // RGB (24-bit)
29:             (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
30:         case 8: // ARGB (32-bit)
31:             (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
32:         default:
33:             (a, r, g, b) = (1, 1, 1, 0)
34:         }
35: 
36:         self.init(
37:             .sRGB,
38:             red: Double(r) / 255,
39:             green: Double(g) / 255,
40:             blue:  Double(b) / 255,
41:             opacity: Double(a) / 255
42:         )
43:     }
44: }
````

## File: Enchanted/Extensions/Date+Extension.swift
````swift
 1: //
 2: //  Date.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 10/12/2023.
 6: //
 7: 
 8: import Foundation
 9: 
10: extension Date {
11:     func daysAgoString() -> String {
12:         let calendar = Calendar.current
13:         let now = Date()
14:         let components = calendar.dateComponents([.day], from: self, to: now)
15:         
16:         guard let daysAgo = components.day else {
17:             return "Today"
18:         }
19:         
20:         switch daysAgo {
21:         case 0:
22:             return "Today"
23:         case 1:
24:             return "1 day ago"
25:         default:
26:             return "\(daysAgo) days ago"
27:         }
28:     }
29: }
````

## File: Enchanted/Extensions/Image+Extension.swift
````swift
 1: //
 2: //  Image+Extension.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 27/05/2024.
 6: //
 7: 
 8: import SwiftUI
 9: 
10: #if os(iOS) || os(watchOS) || os(tvOS) || os(visionOS)
11: extension Image {
12:     init?(data: Data) {
13:         guard let uiImage = UIImage(data: data) else { return nil }
14:         self.init(uiImage: uiImage)
15:     }
16: }
17: #elseif os(macOS)
18: extension Image {
19:     init?(data: Data) {
20:         guard let nsImage = NSImage(data: data) else { return nil }
21:         self.init(nsImage: nsImage)
22:     }
23: }
24: #endif
````

## File: Enchanted/Extensions/KeyboardReadable+Extension.swift
````swift
 1: //
 2: //  KeyboardReadable+Extension.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 13/02/2024.
 6: //
 7: 
 8: import SwiftUI
 9: import Combine
10: 
11: #if os(iOS)
12: /// Publisher to read keyboard changes.
13: protocol KeyboardReadable {
14:     @MainActor var keyboardPublisher: AnyPublisher<Bool, Never> { get }
15: }
16: 
17: extension KeyboardReadable {
18:     @MainActor var keyboardPublisher: AnyPublisher<Bool, Never> {
19:         Publishers.Merge(
20:             NotificationCenter.default
21:                 .publisher(for: UIResponder.keyboardWillShowNotification)
22:                 .map { _ in true },
23:             
24:             NotificationCenter.default
25:                 .publisher(for: UIResponder.keyboardWillHideNotification)
26:                 .map { _ in false }
27:         )
28:         .eraseToAnyPublisher()
29:     }
30: }
31: #elseif os(macOS) || os(visionOS)
32: /// Mock protocol
33: protocol KeyboardReadable {}
34: #endif
````

## File: Enchanted/Extensions/ModelContext+Extension.swift
````swift
 1: //
 2: //  ModelContext.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 10/12/2023.
 6: //
 7: 
 8: import Foundation
 9: import SwiftData
10: 
11: extension ModelContext {
12:     func saveChanges() throws {
13:         if self.hasChanges {
14:             try self.save()
15:         }
16:     }
17: }
````

## File: Enchanted/Extensions/NSClipboardItem.swift
````swift
 1: //
 2: //  NSPasteboardItem.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 17/02/2024.
 6: //
 7: 
 8: #if os(macOS)
 9: import Foundation
10: import AppKit
11: 
12: extension NSPasteboardItem {
13:     func image(forType type: NSPasteboard.PasteboardType) -> Data? {
14:         guard let tiffData = data(forType: type) else { return nil }
15:         let image = NSImage(data: tiffData)
16:         return image?.tiffRepresentation
17:     }
18: }
19: #endif
````

## File: Enchanted/Extensions/SplashSyntaxHighlighter+Extension.swift
````swift
 1: //
 2: //  SplashSyntaxHighlighter+Extension.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 12/03/2024.
 6: //
 7: 
 8: import MarkdownUI
 9: import SwiftUI
10: import Splash
11: 
12: 
13: struct SplashCodeSyntaxHighlighter: CodeSyntaxHighlighter {
14:   private let syntaxHighlighter: SyntaxHighlighter<TextOutputFormat>
15: 
16:   init(theme: Splash.Theme) {
17:     self.syntaxHighlighter = SyntaxHighlighter(format: TextOutputFormat(theme: theme))
18:   }
19: 
20:   func highlightCode(_ content: String, language: String?) -> Text {
21:       guard language != nil else {
22:       return Text(content)
23:     }
24: 
25:     return self.syntaxHighlighter.highlight(content)
26:   }
27: }
28: 
29: extension CodeSyntaxHighlighter where Self == SplashCodeSyntaxHighlighter {
30:   static func splash(theme: Splash.Theme) -> Self {
31:     SplashCodeSyntaxHighlighter(theme: theme)
32:   }
33: }
34: 
35: struct TextOutputFormat: OutputFormat {
36:     private let theme: Splash.Theme
37: 
38:     init(theme: Splash.Theme) {
39:     self.theme = theme
40:   }
41: 
42:   func makeBuilder() -> Builder {
43:     Builder(theme: self.theme)
44:   }
45: }
46: 
47: extension TextOutputFormat {
48:   struct Builder: OutputBuilder {
49:       private let theme: Splash.Theme
50:     private var accumulatedText: [Text]
51: 
52:       fileprivate init(theme: Splash.Theme) {
53:       self.theme = theme
54:       self.accumulatedText = []
55:     }
56: 
57:     mutating func addToken(_ token: String, ofType type: TokenType) {
58:       let color = self.theme.tokenColors[type] ?? self.theme.plainTextColor
59:         self.accumulatedText.append(Text(token).foregroundColor(.init(color)))
60:     }
61: 
62:     mutating func addPlainText(_ text: String) {
63:       self.accumulatedText.append(
64:         Text(text).foregroundColor(.init(self.theme.plainTextColor))
65:       )
66:     }
67: 
68:     mutating func addWhitespace(_ whitespace: String) {
69:       self.accumulatedText.append(Text(whitespace))
70:     }
71: 
72:     func build() -> Text {
73:       self.accumulatedText.reduce(Text(""), +)
74:     }
75:   }
76: }
````

## File: Enchanted/Extensions/UIImage+Extension.swift
````swift
 1: //
 2: //  UIImage+Extension.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 21/12/2023.
 6: //
 7: 
 8: import SwiftUI
 9: 
10: #if os(iOS) || os(visionOS)
11: extension UIImage {
12:     func convertImageToBase64String() -> String {
13:         return self.jpegData(compressionQuality: 1)?.base64EncodedString() ?? ""
14:     }
15:     
16:     func aspectFittedToHeight(_ newHeight: CGFloat) -> UIImage {
17:         let scale = newHeight / self.size.height
18:         let newWidth = self.size.width * scale
19:         let newSize = CGSize(width: newWidth, height: newHeight)
20:         let renderer = UIGraphicsImageRenderer(size: newSize)
21:         
22:         return renderer.image { _ in
23:             self.draw(in: CGRect(origin: .zero, size: newSize))
24:         }
25:     }
26:     
27:     func compressImageData() -> Data? {
28:         let resizedImage = self.aspectFittedToHeight(200)
29:         return resizedImage.jpegData(compressionQuality: 0.2)
30:     }
31: }
32: #elseif os(macOS)
33: extension NSImage {
34:     func convertImageToBase64String() -> String {
35:         guard let tiffRepresentation = self.tiffRepresentation,
36:               let bitmapImage = NSBitmapImageRep(data: tiffRepresentation),
37:               let jpegData = bitmapImage.representation(using: .jpeg, properties: [:]) else {
38:             return ""
39:         }
40:         return jpegData.base64EncodedString()
41:     }
42:     
43:     func aspectFittedToHeight(_ newHeight: CGFloat) -> NSImage {
44:         let scale = newHeight / self.size.height
45:         let newWidth = self.size.width * scale
46:         let newSize = NSSize(width: newWidth, height: newHeight)
47:         
48:         let newImage = NSImage(size: newSize)
49:         newImage.lockFocus()
50:         self.draw(in: NSRect(origin: .zero, size: newSize), from: NSRect(origin: .zero, size: self.size), operation: .copy, fraction: 1.0)
51:         newImage.unlockFocus()
52:         
53:         return newImage
54:     }
55:     
56:     func compressImageData() -> Data? {
57:         let resizedImage = self.aspectFittedToHeight(200)
58:         guard let tiffRepresentation = resizedImage.tiffRepresentation,
59:               let bitmapImage = NSBitmapImageRep(data: tiffRepresentation) else {
60:             return nil
61:         }
62:         return bitmapImage.representation(using: .jpeg, properties: [.compressionFactor: 0.2])
63:     }
64: }
65: #endif
````

## File: Enchanted/Extensions/View+Extension.swift
````swift
  1: //
  2: //  View+Extension.swift
  3: //  Enchanted
  4: //
  5: //  Created by Augustinas Malinauskas on 21/12/2023.
  6: //
  7: 
  8: import SwiftUI
  9: 
 10: // MARK: - Conditional View
 11: extension View {
 12:     /// Whether the view should be empty.
 13:     /// - Parameter bool: Set to `true` to show the view (return EmptyView instead).
 14:     func showIf(_ bool: Bool) -> some View {
 15:         modifier(ConditionalView(show: [bool]))
 16:     }
 17:     
 18:     /// returns a original view only if all conditions are true
 19:     func showIf(_ conditions: Bool...) -> some View {
 20:         modifier(ConditionalView(show: conditions))
 21:     }
 22: }
 23: 
 24: struct ConditionalView: ViewModifier {
 25:     
 26:     let show: [Bool]
 27:     
 28:     func body(content: Content) -> some View {
 29:         Group {
 30:             if show.filter({ $0 == false }).count == 0 {
 31:                 content
 32:             } else {
 33:                 EmptyView()
 34:             }
 35:         }
 36:     }
 37: }
 38: 
 39: 
 40: extension View {
 41:     /// Usually you would pass  `@Environment(\.displayScale) var displayScale`
 42:     @MainActor func render(scale displayScale: CGFloat = 1.0) -> PlatformImage? {
 43:         let renderer = ImageRenderer(content: self)
 44:         
 45:         renderer.scale = displayScale
 46:         
 47: #if os(iOS) || os(visionOS)
 48:         let image = renderer.uiImage
 49: #elseif os(macOS)
 50:         let image = renderer.nsImage
 51: #endif
 52:         
 53:         return image
 54:     }
 55: }
 56: 
 57: extension View {
 58:     /// Applies the given transform if the given condition evaluates to `true`.
 59:     /// - Parameters:
 60:     ///   - condition: The condition to evaluate.
 61:     ///   - transform: The transform to apply to the source `View`.
 62:     /// - Returns: Either the original `View` or the modified `View` if the condition is `true`.
 63:     /// https://www.avanderlee.com/swiftui/conditional-view-modifier/
 64:     @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
 65:         if condition {
 66:             transform(self)
 67:         } else {
 68:             self
 69:         }
 70:     }
 71: }
 72: 
 73: struct GradientForegroundStyle: ViewModifier {
 74:     func body(content: Content) -> some View {
 75:         content.foregroundStyle(
 76:             LinearGradient(
 77:                 colors: [Color(hex: "4285f4"), Color(hex: "9b72cb"), Color(hex: "d96570"), Color(hex: "#d96570")],
 78:                 startPoint: .leading,
 79:                 endPoint: .trailing
 80:             )
 81:         )
 82:     }
 83: }
 84: 
 85: struct MovingGradientForegroundStyle: ViewModifier {
 86:     @State private var animateGradient = false
 87: 
 88:     func body(content: Content) -> some View {
 89:         content.overlay(
 90:             LinearGradient(
 91:                 colors: [Color(hex: "4285f4"), Color(hex: "9b72cb")],
 92:                 startPoint: animateGradient ? .leading : .trailing,
 93:                 endPoint: animateGradient ? .trailing : .leading
 94:             )
 95:             .animation(Animation.linear(duration: 3).repeatForever(autoreverses: false), value: animateGradient)
 96:         )
 97:         .mask(content)
 98:         .onAppear {
 99:             animateGradient = true
100:         }
101:     }
102: }
103: 
104: 
105: extension View {
106:     func enchantify() -> some View {
107:         modifier(GradientForegroundStyle())
108:     }
109:     
110:     func enchantifyMoving() -> some View {
111:         self.modifier(MovingGradientForegroundStyle())
112:     }
113: }
114: 
115: 
116: extension View {
117:     /// Adds an underlying hidden button with a performing action that is triggered on pressed shortcut
118:     /// - Parameters:
119:     ///   - key: Key equivalents consist of a letter, punctuation, or function key that can be combined with an optional set of modifier keys to specify a keyboard shortcut.
120:     ///   - modifiers: A set of key modifiers that you can add to a gesture.
121:     ///   - perform: Action to perform when the shortcut is pressed
122:     public func onKeyboardShortcut(key: KeyEquivalent, modifiers: EventModifiers = .command, perform: @escaping () -> ()) -> some View {
123:         ZStack {
124:             Button("") {
125:                 perform()
126:             }
127:             .hidden()
128:             .keyboardShortcut(key, modifiers: modifiers)
129:             
130:             self
131:         }
132:     }
133: }
````

## File: Enchanted/Helpers/Accessibility.swift
````swift
  1: //
  2: //  Accessibility.swift
  3: //  Enchanted
  4: //
  5: //  Created by Augustinas Malinauskas on 29/02/2024.
  6: //
  7: 
  8: #if os(macOS)
  9: import Foundation
 10: import AppKit
 11: import ApplicationServices
 12: import CoreGraphics
 13: 
 14: final class Accessibility {
 15:     static let shared = Accessibility()
 16: 
 17:     /// Check if Enchanted has the right permissions
 18:     func checkAccessibility() -> Bool {
 19:         let options = [kAXTrustedCheckOptionPrompt.takeUnretainedValue() as String: false, ]
 20:         return AXIsProcessTrustedWithOptions(options as CFDictionary)
 21:     }
 22:     
 23:     func showAccessibilityInstructionsWindow() {
 24:         if checkAccessibility() {
 25:             return
 26:         }
 27:         
 28:         if let url = URL(string: "x-apple.systempreferences:com.apple.preference.security?Privacy_Accessibility") {
 29:             NSWorkspace.shared.open(url)
 30:         }
 31:     }
 32:     
 33:     func getSelectedText() -> String? {
 34:         if let text = getSelectedTextAX(), text.count > 1  {
 35:             print("getSelectedTextAX", text)
 36:             return text
 37:         }
 38:         
 39:         return getSelectedTextViaCopy()
 40:     }
 41:     
 42:     func getSelectedTextAX() -> String? {
 43:         let systemWideElement = AXUIElementCreateSystemWide()
 44:         
 45:         var focusedApp: AnyObject?
 46:         var error = AXUIElementCopyAttributeValue(systemWideElement, kAXFocusedApplicationAttribute as CFString, &focusedApp)
 47:         guard error == .success, let focusedAppElement = focusedApp as! AXUIElement? else { return nil }
 48:         
 49:         var focusedUIElement: AnyObject?
 50:         error = AXUIElementCopyAttributeValue(focusedAppElement, kAXFocusedUIElementAttribute as CFString, &focusedUIElement)
 51:         guard error == .success, let focusedElement = focusedUIElement as! AXUIElement? else { return nil }
 52:         
 53:         var selectedTextValue: AnyObject?
 54:         error = AXUIElementCopyAttributeValue(focusedElement, kAXSelectedTextAttribute as CFString, &selectedTextValue)
 55:         guard error == .success, let selectedText = selectedTextValue as? String else { return nil }
 56:         
 57:         return selectedText
 58:     }
 59:     
 60:     
 61:     func getSelectedTextViaCopy(retryAttempts: Int = 1) -> String? {
 62:         
 63:         let pasteboard = NSPasteboard.general
 64:         let originalContents = pasteboard.pasteboardItems?.compactMap { $0.string(forType: .string) } ?? []
 65:         pasteboard.clearContents()
 66:         var attempts = 0
 67:         var newContent: String?
 68:         
 69:         while attempts < retryAttempts && newContent == nil {
 70:             simulateCopyKeyPress()
 71:             usleep(100000)
 72:             
 73:             newContent = pasteboard.string(forType: .string)
 74:             if let newContent = newContent, !newContent.isEmpty {
 75:                 break
 76:             } else {
 77:                 newContent = nil
 78:             }
 79:             attempts += 1
 80:         }
 81:         
 82:         if newContent == nil {
 83:             pasteboard.clearContents()
 84:             for item in originalContents {
 85:                 pasteboard.setString(item, forType: .string)
 86:             }
 87:         }
 88:         
 89:         return newContent
 90:         
 91:         
 92:         print("via copy invocation")
 93:         DispatchQueue.main.async {
 94:             print("one", NSPasteboard.general.string(forType: .string))
 95:             sleep(1)
 96:             print("two", NSPasteboard.general.string(forType: .string))
 97:             sleep(1)
 98:             print("three", NSPasteboard.general.string(forType: .string))
 99:             sleep(1)
100:             print("four", NSPasteboard.general.string(forType: .string))
101:             
102:         }
103: //        let pasteboard = NSPasteboard.general
104: //        let originalContents = pasteboard.pasteboardItems?.compactMap { $0.string(forType: .string) } ?? []
105: //        print("step 1", pasteboard.string(forType: .string))
106: //        pasteboard.clearContents()
107: //        pasteboard.setString("", forType: .string)
108: //        print("step 2", pasteboard.string(forType: .string))
109: //        usleep(1000000)
110: //        sleep(1)
111: //        var attempts = 0
112: //        var newContent: String?
113:         
114: 
115: //        while attempts < retryAttempts && newContent == nil {
116:             
117: //            simulateCopyKeyPress()
118: //            usleep(100000)
119:             
120: 
121: //            print("step 3", pasteboard.string(forType: .string))
122: //            newContent = pasteboard.string(forType: .string)
123: //            print("pasteboard content", newContent)
124: //            print("step 3.5", pasteboard.string(forType: .string))
125: //            if let newContent = newContent, !newContent.isEmpty {
126: //                break
127: //            } else {
128: //                newContent = nil
129: //            }
130: //            attempts += 1
131: //        }
132:         
133: //        if newContent == nil {
134: //            pasteboard.clearContents()
135: //            for item in originalContents {
136: //                pasteboard.setString(item, forType: .string)
137: //            }
138: //        }
139:         
140: //        defer {
141: //            pasteboard.clearContents()
142: //        }
143: //        
144: //        print("step 4", pasteboard.string(forType: .string))
145: //        print("returning via copy method", newContent)
146:         
147:         return nil
148: //        return newContent
149:     }
150:     
151:     func simulateCopyKeyPress() {
152:         let source = CGEventSource(stateID: .hidSystemState)
153:         
154:         // Define the virtual keycode for 'C' and the command modifier
155:         let commandKey = CGEventFlags.maskCommand.rawValue
156:         let cKeyCode = CGKeyCode(8)  // Virtual keycode for 'C'
157:         
158:         // Create and post a key down event
159:         if let commandCDown = CGEvent(keyboardEventSource: source, virtualKey: cKeyCode, keyDown: true) {
160:             commandCDown.flags = CGEventFlags(rawValue: commandKey)
161:             commandCDown.post(tap: .cghidEventTap)
162:         }
163:         
164:         // Create and post a key up event
165:         if let commandCUp = CGEvent(keyboardEventSource: source, virtualKey: cKeyCode, keyDown: false) {
166:             commandCUp.flags = CGEventFlags(rawValue: commandKey)
167:             commandCUp.post(tap: .cghidEventTap)
168:         }
169:     }
170:     
171:     
172:     func simulateTyping(for string: String) {
173:         let source = CGEventSource(stateID: .combinedSessionState)
174:         let utf16Chars = Array(string.utf16)
175:         
176:         utf16Chars.forEach { uniChar in
177:             var uniChar = uniChar
178:             if uniChar == 0x000A {
179:                 
180:                 if let shiftDown = CGEvent(keyboardEventSource: source, virtualKey: CGKeyCode(0x38), keyDown: true) {
181:                     shiftDown.post(tap: .cghidEventTap)
182:                 }
183:                 
184:                 // Simulate pressing and releasing the Return key
185:                 if let eventDown = CGEvent(keyboardEventSource: source, virtualKey: CGKeyCode(0x24), keyDown: true),
186:                    let eventUp = CGEvent(keyboardEventSource: source, virtualKey: CGKeyCode(0x24), keyDown: false) {
187:                     
188:                     eventDown.post(tap: .cghidEventTap)
189:                     Thread.sleep(forTimeInterval: 0.005)
190:                     eventUp.post(tap: .cghidEventTap)
191:                 }
192:                 
193:                 // Simulate releasing the Shift key
194:                 if let shiftUp = CGEvent(keyboardEventSource: source, virtualKey: CGKeyCode(0x38), keyDown: false) {
195:                     shiftUp.post(tap: .cghidEventTap)
196:                 }
197:                 
198:             } else {
199:                 // Handle other characters as before
200:                 if let eventDown = CGEvent(keyboardEventSource: source, virtualKey: 0, keyDown: true),
201:                    let eventUp = CGEvent(keyboardEventSource: source, virtualKey: 0, keyDown: false) {
202:                     
203:                     eventDown.keyboardSetUnicodeString(stringLength: 1, unicodeString: &uniChar)
204:                     eventUp.keyboardSetUnicodeString(stringLength: 1, unicodeString: &uniChar)
205:                     
206:                     eventDown.post(tap: .cghidEventTap)
207:                     Thread.sleep(forTimeInterval: 0.005)
208:                     eventUp.post(tap: .cghidEventTap)
209:                 }
210:             }
211:         }
212:     }
213:     
214:     static func simulatePasteCommand() {
215:         let commandKey = CGEventFlags.maskCommand.rawValue
216:         let vKeyCode = 0x09
217:         let source = CGEventSource(stateID: .hidSystemState)
218:         if let commandVDown = CGEvent(keyboardEventSource: source, virtualKey: CGKeyCode(vKeyCode), keyDown: true) {
219:             commandVDown.flags = CGEventFlags(rawValue: commandKey)
220:             commandVDown.post(tap: .cghidEventTap)
221:         }
222:         
223:         usleep(50000)
224:         
225:         if let commandVUp = CGEvent(keyboardEventSource: source, virtualKey: CGKeyCode(vKeyCode), keyDown: false) {
226:             commandVUp.flags = CGEventFlags(rawValue: commandKey)
227:             commandVUp.post(tap: .cghidEventTap)
228:         }
229:     }
230:     
231:     
232: }
233: #endif
````

## File: Enchanted/Helpers/AsyncQueue.swift
````swift
 1: //
 2: //  AsyncQueue.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 01/03/2024.
 6: //
 7: 
 8: import Foundation
 9: 
10: actor AsyncQueue<T> {
11:     private var items: [T] = []
12: 
13:     func enqueue(_ item: T) {
14:         items.append(item)
15:     }
16: 
17:     func dequeueAll() -> [T] {
18:         defer { items.removeAll() }
19:         return items
20:     }
21: }
````

## File: Enchanted/Helpers/DeallocPrinter.swift
````swift
 1: //
 2: //  DeallocPrinter.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 17/02/2024.
 6: //
 7: 
 8: import Foundation
 9: 
10: class DeallocPrinter {
11:     var message: String
12:     
13:     init(_ message: String) {
14:         self.message = message
15:     }
16:     
17:     deinit {
18:         print("deallocated \(message)")
19:     }
20: }
````

## File: Enchanted/Helpers/HotKeys.swift
````swift
  1: //
  2: //  HotKeys.swift
  3: //  Enchanted
  4: //
  5: //  Created by Augustinas Malinauskas on 17/02/2024.
  6: //
  7: 
  8: #if os(macOS)
  9: import Foundation
 10: import SwiftUI
 11: import Combine
 12: 
 13: @available(OSX 11.0, *)
 14: extension View {
 15:     func addCustomHotkeys( _ hotkeys: [HotkeyCombination] ) -> some View {
 16:         self.modifier(HotKeysMod(hotkeys))
 17:     }
 18: }
 19: 
 20: @available(OSX 11.0, *)
 21: public struct HotKeysMod: ViewModifier {
 22:     @State var subs = Set<AnyCancellable>() // Cancel onDisappear
 23:     var hotkeys: [HotkeyCombination]
 24:     
 25:     init(_ hotkeys: [HotkeyCombination] ) {
 26:         self.hotkeys = hotkeys
 27:     }
 28:     
 29:     public func body(content: Content) -> some View {
 30:         ZStack {
 31:             DisableSoundsView(hotkeys:hotkeys)
 32:                 .frame(width: 1, height: 1)
 33:             content
 34:         }
 35:     }
 36: }
 37: 
 38: struct DisableSoundsView: NSViewRepresentable {
 39:     var hotkeys: [HotkeyCombination]
 40:     
 41:     func makeNSView(context: Context) -> NSView {
 42:         let view = DisableSoundsNSView()
 43:         
 44:         view.hotkeys = hotkeys
 45:         
 46:         return view
 47:     }
 48:     
 49:     func updateNSView(_ nsView: NSView, context: Context) { }
 50: }
 51: 
 52: class DisableSoundsNSView: NSView {
 53:     var hotkeys: [HotkeyCombination] = []
 54:     
 55:     override func performKeyEquivalent(with event: NSEvent) -> Bool {
 56:         return hotkeysSubscription(combinations: hotkeys)
 57:     }
 58: }
 59: 
 60: fileprivate func hotkeysSubscription(combinations: [HotkeyCombination]) -> Bool {
 61:     for comb in combinations {
 62:         let basePressedCorrectly = comb.keyBasePressed
 63:         
 64:         if basePressedCorrectly && comb.key.isPressed {
 65:             comb.action()
 66: //            return true
 67:         }
 68:     }
 69:     
 70:     return false
 71: }
 72: 
 73: ///////////////////////
 74: ///HELPERS
 75: ///////////////////////
 76: struct HotkeyCombination {
 77:     let keyBase: [KeyBase]
 78:     let key: CGKeyCode
 79:     let action: () -> ()
 80: }
 81: 
 82: extension HotkeyCombination {
 83:     var keyBasePressed: Bool {
 84:         let mustBePressed    = KeyBase.allCases.filter{ keyBase.contains($0) }
 85:         let mustBeNotPressed = KeyBase.allCases.filter{ !keyBase.contains($0) }
 86:         
 87:         for base in mustBePressed {
 88:             if !base.isPressed {
 89:                 return false
 90:             }
 91:         }
 92:         
 93:         for base in mustBeNotPressed {
 94:             if base.isPressed {
 95:                 return false
 96:             }
 97:         }
 98:         
 99:         return true
100:     }
101: }
102: 
103: enum KeyBase: CaseIterable {
104:     case option
105:     case command
106:     case shift
107:     case control
108:     
109:     var isPressed: Bool {
110:         switch self {
111:         case .option:
112:             return CGKeyCode.kVK_Option.isPressed  || CGKeyCode.kVK_RightOption.isPressed
113:         case .command:
114:             return CGKeyCode.kVK_Command.isPressed || CGKeyCode.kVK_RightCommand.isPressed
115:         case .shift:
116:             return CGKeyCode.kVK_Shift.isPressed   || CGKeyCode.kVK_RightShift.isPressed
117:         case .control:
118:             return CGKeyCode.kVK_Control.isPressed || CGKeyCode.kVK_RightControl.isPressed
119:         }
120:     }
121: }
122: 
123: import Foundation
124: 
125: ///https://gist.github.com/chipjarred/cbb324c797aec865918a8045c4b51d14
126: extension CGKeyCode {
127:     static let kVK_ANSI_A                    : CGKeyCode = 0x00
128:     static let kVK_ANSI_S                    : CGKeyCode = 0x01
129:     static let kVK_ANSI_D                    : CGKeyCode = 0x02
130:     static let kVK_ANSI_F                    : CGKeyCode = 0x03
131:     static let kVK_ANSI_H                    : CGKeyCode = 0x04
132:     static let kVK_ANSI_G                    : CGKeyCode = 0x05
133:     static let kVK_ANSI_Z                    : CGKeyCode = 0x06
134:     static let kVK_ANSI_X                    : CGKeyCode = 0x07
135:     static let kVK_ANSI_C                    : CGKeyCode = 0x08
136:     static let kVK_ANSI_V                    : CGKeyCode = 0x09
137:     static let kVK_ANSI_B                    : CGKeyCode = 0x0B
138:     static let kVK_ANSI_Q                    : CGKeyCode = 0x0C
139:     static let kVK_ANSI_W                    : CGKeyCode = 0x0D
140:     static let kVK_ANSI_E                    : CGKeyCode = 0x0E
141:     static let kVK_ANSI_R                    : CGKeyCode = 0x0F
142:     static let kVK_ANSI_Y                    : CGKeyCode = 0x10
143:     static let kVK_ANSI_T                    : CGKeyCode = 0x11
144:     static let kVK_ANSI_1                    : CGKeyCode = 0x12
145:     static let kVK_ANSI_2                    : CGKeyCode = 0x13
146:     static let kVK_ANSI_3                    : CGKeyCode = 0x14
147:     static let kVK_ANSI_4                    : CGKeyCode = 0x15
148:     static let kVK_ANSI_6                    : CGKeyCode = 0x16
149:     static let kVK_ANSI_5                    : CGKeyCode = 0x17
150:     static let kVK_ANSI_Equal                : CGKeyCode = 0x18
151:     static let kVK_ANSI_9                    : CGKeyCode = 0x19
152:     static let kVK_ANSI_7                    : CGKeyCode = 0x1A
153:     static let kVK_ANSI_Minus                : CGKeyCode = 0x1B
154:     static let kVK_ANSI_8                    : CGKeyCode = 0x1C
155:     static let kVK_ANSI_0                    : CGKeyCode = 0x1D
156:     static let kVK_ANSI_RightBracket         : CGKeyCode = 0x1E
157:     static let kVK_ANSI_O                    : CGKeyCode = 0x1F
158:     static let kVK_ANSI_U                    : CGKeyCode = 0x20
159:     static let kVK_ANSI_LeftBracket          : CGKeyCode = 0x21
160:     static let kVK_ANSI_I                    : CGKeyCode = 0x22
161:     static let kVK_ANSI_P                    : CGKeyCode = 0x23
162:     static let kVK_ANSI_L                    : CGKeyCode = 0x25
163:     static let kVK_ANSI_J                    : CGKeyCode = 0x26
164:     static let kVK_ANSI_Quote                : CGKeyCode = 0x27
165:     static let kVK_ANSI_K                    : CGKeyCode = 0x28
166:     static let kVK_ANSI_Semicolon            : CGKeyCode = 0x29
167:     static let kVK_ANSI_Backslash            : CGKeyCode = 0x2A
168:     static let kVK_ANSI_Comma                : CGKeyCode = 0x2B
169:     static let kVK_ANSI_Slash                : CGKeyCode = 0x2C
170:     static let kVK_ANSI_N                    : CGKeyCode = 0x2D
171:     static let kVK_ANSI_M                    : CGKeyCode = 0x2E
172:     static let kVK_ANSI_Period               : CGKeyCode = 0x2F
173:     static let kVK_ANSI_Grave                : CGKeyCode = 0x32
174:     static let kVK_ANSI_KeypadDecimal        : CGKeyCode = 0x41
175:     static let kVK_ANSI_KeypadMultiply       : CGKeyCode = 0x43
176:     static let kVK_ANSI_KeypadPlus           : CGKeyCode = 0x45
177:     static let kVK_ANSI_KeypadClear          : CGKeyCode = 0x47
178:     static let kVK_ANSI_KeypadDivide         : CGKeyCode = 0x4B
179:     static let kVK_ANSI_KeypadEnter          : CGKeyCode = 0x4C
180:     static let kVK_ANSI_KeypadMinus          : CGKeyCode = 0x4E
181:     static let kVK_ANSI_KeypadEquals         : CGKeyCode = 0x51
182:     static let kVK_ANSI_Keypad0              : CGKeyCode = 0x52
183:     static let kVK_ANSI_Keypad1              : CGKeyCode = 0x53
184:     static let kVK_ANSI_Keypad2              : CGKeyCode = 0x54
185:     static let kVK_ANSI_Keypad3              : CGKeyCode = 0x55
186:     static let kVK_ANSI_Keypad4              : CGKeyCode = 0x56
187:     static let kVK_ANSI_Keypad5              : CGKeyCode = 0x57
188:     static let kVK_ANSI_Keypad6              : CGKeyCode = 0x58
189:     static let kVK_ANSI_Keypad7              : CGKeyCode = 0x59
190:     static let kVK_ANSI_Keypad8              : CGKeyCode = 0x5B
191:     static let kVK_ANSI_Keypad9              : CGKeyCode = 0x5C
192: 
193:     // keycodes for keys that are independent of keyboard layout
194:     static let kVK_Return                    : CGKeyCode = 0x24
195:     static let kVK_Tab                       : CGKeyCode = 0x30
196:     static let kVK_Space                     : CGKeyCode = 0x31
197:     static let kVK_Delete                    : CGKeyCode = 0x33
198:     static let kVK_Escape                    : CGKeyCode = 0x35
199:     static let kVK_Command                   : CGKeyCode = 0x37
200:     static let kVK_Shift                     : CGKeyCode = 0x38
201:     static let kVK_CapsLock                  : CGKeyCode = 0x39
202:     static let kVK_Option                    : CGKeyCode = 0x3A
203:     static let kVK_Control                   : CGKeyCode = 0x3B
204:     static let kVK_RightCommand              : CGKeyCode = 0x36 // Out of order
205:     static let kVK_RightShift                : CGKeyCode = 0x3C
206:     static let kVK_RightOption               : CGKeyCode = 0x3D
207:     static let kVK_RightControl              : CGKeyCode = 0x3E
208:     static let kVK_Function                  : CGKeyCode = 0x3F
209:     static let kVK_F17                       : CGKeyCode = 0x40
210:     static let kVK_VolumeUp                  : CGKeyCode = 0x48
211:     static let kVK_VolumeDown                : CGKeyCode = 0x49
212:     static let kVK_Mute                      : CGKeyCode = 0x4A
213:     static let kVK_F18                       : CGKeyCode = 0x4F
214:     static let kVK_F19                       : CGKeyCode = 0x50
215:     static let kVK_F20                       : CGKeyCode = 0x5A
216:     static let kVK_F5                        : CGKeyCode = 0x60
217:     static let kVK_F6                        : CGKeyCode = 0x61
218:     static let kVK_F7                        : CGKeyCode = 0x62
219:     static let kVK_F3                        : CGKeyCode = 0x63
220:     static let kVK_F8                        : CGKeyCode = 0x64
221:     static let kVK_F9                        : CGKeyCode = 0x65
222:     static let kVK_F11                       : CGKeyCode = 0x67
223:     static let kVK_F13                       : CGKeyCode = 0x69
224:     static let kVK_F16                       : CGKeyCode = 0x6A
225:     static let kVK_F14                       : CGKeyCode = 0x6B
226:     static let kVK_F10                       : CGKeyCode = 0x6D
227:     static let kVK_F12                       : CGKeyCode = 0x6F
228:     static let kVK_F15                       : CGKeyCode = 0x71
229:     static let kVK_Help                      : CGKeyCode = 0x72
230:     static let kVK_Home                      : CGKeyCode = 0x73
231:     static let kVK_PageUp                    : CGKeyCode = 0x74
232:     static let kVK_ForwardDelete             : CGKeyCode = 0x75
233:     static let kVK_F4                        : CGKeyCode = 0x76
234:     static let kVK_End                       : CGKeyCode = 0x77
235:     static let kVK_F2                        : CGKeyCode = 0x78
236:     static let kVK_PageDown                  : CGKeyCode = 0x79
237:     static let kVK_F1                        : CGKeyCode = 0x7A
238:     static let kVK_LeftArrow                 : CGKeyCode = 0x7B
239:     static let kVK_RightArrow                : CGKeyCode = 0x7C
240:     static let kVK_DownArrow                 : CGKeyCode = 0x7D
241:     static let kVK_UpArrow                   : CGKeyCode = 0x7E
242: 
243:     // ISO keyboards only
244:     static let kVK_ISO_Section               : CGKeyCode = 0x0A
245: 
246:     // JIS keyboards only
247:     static let kVK_JIS_Yen                   : CGKeyCode = 0x5D
248:     static let kVK_JIS_Underscore            : CGKeyCode = 0x5E
249:     static let kVK_JIS_KeypadComma           : CGKeyCode = 0x5F
250:     static let kVK_JIS_Eisu                  : CGKeyCode = 0x66
251:     static let kVK_JIS_Kana                  : CGKeyCode = 0x68
252: 
253:     var isModifier: Bool {
254:         return (.kVK_RightCommand...(.kVK_Function)).contains(self)
255:     }
256: 
257:     var baseModifier: CGKeyCode?
258:     {
259:         if (.kVK_Command...(.kVK_Control)).contains(self)
260:                 || self == .kVK_Function
261:         {
262:                 return self
263:         }
264: 
265:         switch self
266:         {
267:                 case .kVK_RightShift: return .kVK_Shift
268:                 case .kVK_RightCommand: return .kVK_Command
269:                 case .kVK_RightOption: return .kVK_Option
270:                 case .kVK_RightControl: return .kVK_Control
271: 
272:                 default: return nil
273:         }
274:     }
275:     
276:     var isPressed: Bool {
277:         CGEventSource.keyState(.combinedSessionState, key: self)
278:     }
279: }
280: #endif
````

## File: Enchanted/Helpers/SleepTest.swift
````swift
 1: //
 2: //  SleepTest.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 18/02/2024.
 6: //
 7: 
 8: import Foundation
 9: 
10: func sleepTest(_ name: String) {
11:     print("before \(name)")
12:     sleep(3)
13:     print("after \(name)")
14: }
````

## File: Enchanted/Models/AppColorScheme.swift
````swift
 1: //
 2: //  AppColorScheme.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 11/12/2023.
 6: //
 7: 
 8: import Foundation
 9: import SwiftUI
10: 
11: enum AppColorScheme: String, Identifiable, CaseIterable {
12:     case light, dark, system
13:     
14:     var id: String {
15:         self.rawValue
16:     }
17:     
18:     var toString: String {
19:         switch self {
20:         case .system:
21:             "System"
22:         case .light:
23:             "Light"
24:         case .dark:
25:             "Dark"
26:         }
27:     }
28:     
29:     var toiOSFormat: ColorScheme? {
30:         switch self {
31:         case .system:
32:             return nil
33:         case .light:
34:             return ColorScheme.light
35:         case .dark:
36:             return ColorScheme.dark
37:         }
38:     }
39: }
````

## File: Enchanted/Models/ConversationState.swift
````swift
 1: //
 2: //  ConversationState.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 10/12/2023.
 6: //
 7: 
 8: import Foundation
 9: 
10: enum ConversationState: Equatable {
11:     case loading
12:     case completed
13:     case error(message: String)
14: }
````

## File: Enchanted/Models/LanguageModel.swift
````swift
 1: //
 2: //  LanguageModel.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 12/05/2024.
 6: //
 7: 
 8: import Foundation
 9: 
10: struct LanguageModel {
11:     var name: String
12:     var provider: ModelProvider
13:     var imageSupport: Bool
14: }
15: 
16: enum ModelProvider: Codable {
17:     case ollama
18: }
````

## File: Enchanted/Models/NotificationMessage.swift
````swift
 1: //
 2: //  NotificationMessage.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 12/03/2024.
 6: //
 7: 
 8: import Foundation
 9: 
10: struct NotificationMessage: Identifiable {
11:     var id = UUID()
12:     var message: String
13:     var status: Status
14:     var timestamp = Date()
15:     
16:     enum Status {
17:         case error
18:         case info
19:     }
20: }
21: 
22: // MARK: Sample data
23: extension NotificationMessage {
24:     static let sample: [NotificationMessage] = [
25:         .init(message: "Querying ollama", status: .info),
26:         .init(message: "Window changed. Stopping writing.", status: .info)
27:     ]
28: }
````

## File: Enchanted/Models/SamplePrompt.swift
````swift
 1: //
 2: //  SamplePrompt.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 11/02/2024.
 6: //
 7: 
 8: import Foundation
 9: 
10: struct SamplePrompts: Identifiable, Hashable {
11:     enum SamplePromptType {
12:         case question
13:         case action
14:         
15:         var icon: String {
16:             switch self {
17:             case .question:
18:                 return "questionmark.circle"
19:             case .action:
20:                 return "lightbulb.circle"
21:             }
22:         }
23:     }
24:     
25:     var prompt: String
26:     var type: SamplePromptType
27:     
28:     var id: String {
29:         prompt
30:     }
31: }
32: 
33: // MARK: - Sample Data
34: extension SamplePrompts {
35:     static let samples: [SamplePrompts] = [
36:         .init(prompt: "Give me phrases to learn in a new language", type: .action),
37:         .init(prompt: "Act like Mowgli from The Jungle Book and answer questions", type: .action),
38:         .init(prompt: "How to center div in HTML?", type: .question),
39:         .init(prompt: "What's unique about Go programming language?", type: .question),
40:         .init(prompt: "Give 10 gift ideas for best friend", type: .action),
41:         .init(prompt: "Write a text message asking a friend to be my plus-one at a wedding", type: .action),
42:         .init(prompt: "Explain supercomputers like I'm five years old", type: .action),
43:         .init(prompt: "How to do personal taxes in USA?", type: .question),
44:         .init(prompt: "What are the largest cities in USA in population? Give a table", type: .question),
45:         .init(prompt: "Give me ideas about New Years resolutions", type: .action),
46:         .init(prompt: "What is bubble sort? Write example in python", type: .question)
47:     ]
48:     
49:     static var shuffled: [SamplePrompts] {
50:         return samples.shuffled()
51:     }
52: }
````

## File: Enchanted/Preview Content/Preview Assets.xcassets/Contents.json
````json
1: {
2:   "info" : {
3:     "author" : "xcode",
4:     "version" : 1
5:   }
6: }
````

## File: Enchanted/Services/Clipboard.swift
````swift
 1: //
 2: //  Clipboard.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 11/02/2024.
 6: //
 7: 
 8: import Foundation
 9: 
10: #if os(macOS)
11: import AppKit
12: #else
13: import UIKit
14: #endif
15: 
16: 
17: final class Clipboard: Sendable {
18:     static let shared = Clipboard()
19:     
20:     func setString(_ message: String) {
21: #if os(iOS)
22:         UIPasteboard.general.string = message
23: #elseif os(macOS)
24:         let pasteboard = NSPasteboard.general
25:         pasteboard.declareTypes([.string], owner: nil)
26:         pasteboard.setString(message, forType: .string)
27: #endif
28:     }
29:     
30:     func getImage() -> PlatformImage? {
31:         #if os(iOS)
32:         if let image = UIPasteboard.general.image {
33:             return image
34:         }
35: #elseif os(macOS)
36:         let pb = NSPasteboard.general
37:         let type = NSPasteboard.PasteboardType.tiff
38:         guard let imgData = pb.data(forType: type) else { return nil }
39:         return NSImage(data: imgData)
40: #endif
41:         return nil
42:     }
43:     
44:     func getText() -> String? {
45: #if os(iOS) || os(visionOS)
46:         return UIPasteboard.general.string
47: #elseif os(macOS)
48:         return NSPasteboard.general.string(forType: .string)
49: #endif
50:     }
51: }
````

## File: Enchanted/Services/HapticsService.swift
````swift
 1: //
 2: //  HapticsService.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 28/12/2023.
 6: //
 7: 
 8: #if os(iOS)
 9: import UIKit
10: 
11: class Haptics: @unchecked Sendable {
12:     static let shared = Haptics()
13:     
14:     private init() { }
15: 
16:     private func play(_ feedbackStyle: UIImpactFeedbackGenerator.FeedbackStyle) {
17:         let vibrations = UserDefaults.standard.bool(forKey: "vibrations")
18:         if vibrations {
19:             UIImpactFeedbackGenerator(style: feedbackStyle).impactOccurred()
20:         }
21:     }
22:     
23:     private func notify(_ feedbackType: UINotificationFeedbackGenerator.FeedbackType) {
24:         let vibrations = UserDefaults.standard.bool(forKey: "vibrations")
25:         if vibrations {
26:             UINotificationFeedbackGenerator().notificationOccurred(feedbackType)
27:         }
28:     }
29:     
30:     func lightTap() {
31:         play(.light)
32:     }
33:     
34:     func mediumTap() {
35:         play(.medium)
36:     }
37: }
38: #else
39: class Haptics {
40:     static let shared = Haptics()
41:     func lightTap() {}
42:     func mediumTap() {}
43: }
44: #endif
````

## File: Enchanted/Services/HotkeyService.swift
````swift
 1: //
 2: //  HotkeyService.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 11/02/2024.
 6: //
 7: 
 8: #if os(macOS)
 9: import Foundation
10: import Magnet
11: import SwiftUI
12: 
13: final class HotkeyService {
14:     static let shared = HotkeyService()
15:     
16:     func registerSingleUseSpace(modifiers: NSEvent.ModifierFlags, completion: @escaping () -> ()?) {
17:         if let keyCombo = KeyCombo(key: .space, cocoaModifiers: modifiers) {
18:             let hotKey = HotKey(identifier: "space", keyCombo: keyCombo) { hotKey in
19:                 completion()
20:                 hotKey.unregister()
21:             }
22:             hotKey.register()
23:         }
24:     }
25:     
26: //    func registerSingleUseEscape(modifiers: NSEvent.ModifierFlags, completion: @escaping () -> ()?) {
27: //        if let keyCombo = KeyCombo(key: .escape, cocoaModifiers: modifiers) {
28: //            let hotKey = HotKey(identifier: "escape", keyCombo: keyCombo) { hotKey in
29: //                completion()
30: //                hotKey.unregister()
31: //            }
32: //            hotKey.register()
33: //        }
34: //    }
35: }
36: 
37: #endif
````

## File: Enchanted/Services/OllamaService.swift
````swift
 1: //
 2: //  OllamaService.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 09/12/2023.
 6: //
 7: 
 8: import Foundation
 9: import OllamaKit
10: 
11: class OllamaService: @unchecked Sendable {
12:     static let shared = OllamaService()
13:     
14:     var ollamaKit: OllamaKit
15:     
16:     init() {
17:         ollamaKit = OllamaKit(baseURL: URL(string: "http://localhost:11434")!)
18:         initEndpoint()
19:     }
20:     
21:     func initEndpoint(url: String? = nil, bearerToken: String? = "okki") {
22:         let defaultUrl = "http://localhost:11434"
23:         let localStorageUrl = UserDefaults.standard.string(forKey: "ollamaUri")
24:         let bearerToken = UserDefaults.standard.string(forKey: "ollamaBearerToken")
25:         if var ollamaUrl = [localStorageUrl, defaultUrl].compactMap({$0}).filter({$0.count > 0}).first {
26:             if !ollamaUrl.contains("http") {
27:                 ollamaUrl = "http://" + ollamaUrl
28:             }
29:             
30:             if let url = URL(string: ollamaUrl) {
31:                 ollamaKit =  OllamaKit(baseURL: url, bearerToken: bearerToken)
32:                 return
33:             }
34:         }
35:     }
36:     
37:     func getModels() async throws -> [LanguageModel]  {
38:         let response = try await ollamaKit.models()
39:         let models = response.models.map{
40:             LanguageModel(
41:                 name: $0.name,
42:                 provider: .ollama,
43:                 imageSupport: $0.details.families?.contains(where: { $0 == "clip" || $0 == "mllama" }) ?? false
44:             )
45:         }
46:         return models
47:     }
48:     
49:     func reachable() async -> Bool {
50:         return await ollamaKit.reachable()
51:     }
52: }
````

## File: Enchanted/Services/SpeechService.swift
````swift
  1: //
  2: //  SpeechService.swift
  3: //  Enchanted
  4: //
  5: //  Created by Augustinas Malinauskas on 26/05/2024.
  6: //
  7: 
  8: import Foundation
  9: import AVFoundation
 10: import SwiftUI
 11: 
 12: 
 13: class SpeechSynthesizerDelegate: NSObject, AVSpeechSynthesizerDelegate {
 14:     var onSpeechFinished: (() -> Void)?
 15:     var onSpeechStart: (() -> Void)?
 16:     
 17:     func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didFinish utterance: AVSpeechUtterance) {
 18:         onSpeechFinished?()
 19:     }
 20:     
 21:     func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didStart utterance: AVSpeechUtterance) {
 22:         onSpeechStart?()
 23:     }
 24:     
 25:     func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didReceiveError error: Error, for utterance: AVSpeechUtterance, at characterIndex: UInt) {
 26:         print("Speech synthesis error: \(error)")
 27:     }
 28: }
 29: 
 30: @MainActor final class SpeechSynthesizer: NSObject, ObservableObject {
 31:     static let shared = SpeechSynthesizer()
 32:     private let synthesizer = AVSpeechSynthesizer()
 33:     private let delegate = SpeechSynthesizerDelegate()
 34:     
 35:     @Published var isSpeaking = false
 36:     @Published var voices: [AVSpeechSynthesisVoice] = []
 37:     
 38:     override init() {
 39:         super.init()
 40:         synthesizer.delegate = delegate
 41:         fetchVoices()
 42:     }
 43:     
 44:     func getVoiceIdentifier() -> String? {
 45:         let voiceIdentifier = UserDefaults.standard.string(forKey: "voiceIdentifier")
 46:         if let voice = voices.first(where: {$0.identifier == voiceIdentifier}) {
 47:             return voice.identifier
 48:         }
 49:         
 50:         return voices.first?.identifier
 51:     }
 52:     
 53:     var lastCancelation: (()->Void)? = {}
 54:     
 55:     func speak(text: String, onFinished: @escaping () -> Void = {}) async {
 56:         guard let voiceIdentifier = getVoiceIdentifier() else {
 57:             print("could not find identifier")
 58:             return
 59:         }
 60:         
 61:         print("selected", voiceIdentifier)
 62:         
 63: #if os(iOS)
 64:         let audioSession = AVAudioSession()
 65:         do {
 66:             try audioSession.setCategory(.playback, mode: .default, options: .duckOthers)
 67:             try audioSession.setActive(false)
 68:         } catch let error {
 69:             print("❓", error.localizedDescription)
 70:         }
 71: #endif
 72:         
 73:         lastCancelation = onFinished
 74:         delegate.onSpeechFinished = {
 75:             withAnimation {
 76:                 self.isSpeaking = false
 77:             }
 78:             onFinished()
 79:         }
 80:         delegate.onSpeechStart = {
 81:             withAnimation {
 82:                 self.isSpeaking = true
 83:             }
 84:         }
 85:         
 86:         let utterance = AVSpeechUtterance(string: text)
 87:         utterance.voice = AVSpeechSynthesisVoice(identifier: voiceIdentifier)
 88:         utterance.rate = 0.5
 89:         synthesizer.speak(utterance)
 90:         
 91:         let voices = AVSpeechSynthesisVoice.speechVoices()
 92:         voices.forEach { voice in
 93:             print("\(voice.identifier) - \(voice.name)")
 94:         }
 95:     }
 96:     
 97:     func stopSpeaking() async {
 98:         withAnimation {
 99:             isSpeaking = false
100:         }
101:         lastCancelation?()
102:         synthesizer.stopSpeaking(at: .immediate)
103:     }
104:     
105:     
106:     func fetchVoices() {
107:         let voices = AVSpeechSynthesisVoice.speechVoices().sorted { (firstVoice: AVSpeechSynthesisVoice, secondVoice: AVSpeechSynthesisVoice) -> Bool in
108:             return firstVoice.quality.rawValue > secondVoice.quality.rawValue
109:         }
110:         
111:         /// prevent state refresh if there are no new elements
112:         let diff = self.voices.elementsEqual(voices, by: { $0.identifier == $1.identifier })
113:         if diff {
114:             return
115:         }
116:         
117:         DispatchQueue.main.async {
118:             self.voices = voices
119:         }
120:     }
121: }
````

## File: Enchanted/Services/SwiftDataService.swift
````swift
  1: //
  2: //  SwiftDataService.swift
  3: //  Enchanted
  4: //
  5: //  Created by Augustinas Malinauskas on 10/12/2023.
  6: //
  7: 
  8: import Foundation
  9: import SwiftData
 10: 
 11: final actor SwiftDataService: ModelActor {
 12:     let modelContainer: ModelContainer
 13:     let modelExecutor: ModelExecutor
 14:     private let modelContext: ModelContext
 15:     
 16:     static let shared = SwiftDataService()
 17:     
 18:     init() {
 19:         let sharedModelContainer: ModelContainer = {
 20:             let schema = Schema([
 21:                 LanguageModelSD.self,
 22:                 ConversationSD.self,
 23:                 MessageSD.self,
 24:                 CompletionInstructionSD.self
 25:             ])
 26:             let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
 27:             
 28:             do {
 29:                 return try ModelContainer(for: schema, configurations: [modelConfiguration])
 30:             } catch {
 31:                 fatalError("Could not create ModelContainer: \(error)")
 32:             }
 33:         }()
 34:         
 35:         self.modelContext = ModelContext(sharedModelContainer)
 36:         self.modelContext.autosaveEnabled = false
 37:         modelContainer = sharedModelContainer
 38:         modelExecutor = DefaultSerialModelExecutor(modelContext: modelContext)
 39:     }
 40: }
 41: 
 42: // MARK: - Language Models
 43: extension SwiftDataService {
 44:     func fetchModels() throws -> [LanguageModelSD] {
 45:         let sortDescriptor = SortDescriptor(\LanguageModelSD.name)
 46:         let fetchDescriptor = FetchDescriptor<LanguageModelSD>(sortBy: [sortDescriptor])
 47:         let models = try modelContext.fetch(fetchDescriptor)
 48:         
 49:         return models
 50:     }
 51:     
 52:     func saveModels(models: [LanguageModelSD]) throws {
 53:         for model in models {
 54:             modelContext.insert(model)
 55:         }
 56:         
 57:         try modelContext.saveChanges()
 58:     }
 59:     
 60:     func deleteModels() throws {
 61:         try modelContext.delete(model: LanguageModelSD.self)
 62:         try modelContext.saveChanges()
 63:     }
 64: }
 65: 
 66: // MARK: - Conversations
 67: extension SwiftDataService {
 68:     func createConversation(_ conversation: ConversationSD) throws {
 69:         self.modelContext.insert(conversation)
 70:         try modelContext.saveChanges()
 71:     }
 72:     
 73:     func renameConversation(_ conversation: ConversationSD) throws {
 74:         try modelContext.saveChanges()
 75:     }
 76:     
 77:     func deleteConversation(_ conversation: ConversationSD) throws {
 78:         self.modelContext.delete(conversation)
 79:         try modelContext.saveChanges()
 80:     }
 81:     
 82:     func updateConversation(_ conversation: ConversationSD) throws {
 83:         conversation.updatedAt = .now
 84:         try modelContext.saveChanges()
 85:     }
 86:     
 87:     func fetchConversations() throws -> [ConversationSD] {
 88:         let sortDescriptor = SortDescriptor(\ConversationSD.updatedAt, order: .reverse)
 89:         let fetchDescriptor = FetchDescriptor<ConversationSD>(sortBy: [sortDescriptor])
 90:         return try modelContext.fetch(fetchDescriptor)
 91:     }
 92:     
 93:     func getConversation(_ conversationId: UUID) throws -> ConversationSD? {
 94:         let predicate = #Predicate<ConversationSD>{ $0.id == conversationId }
 95:         let fetchDescriptor = FetchDescriptor<ConversationSD>(predicate: predicate)
 96:         let conversations = try modelContext.fetch(fetchDescriptor)
 97:         return conversations.first
 98:     }
 99:     
100:     func deleteConversations() throws {
101:         try modelContext.delete(model: ConversationSD.self)
102:         try modelContext.saveChanges()
103:     }
104:     
105:     func deleteMessages() throws {
106:         try modelContext.delete(model: MessageSD.self)
107:         try modelContext.saveChanges()
108:     }
109:     
110:     func deleteConversations(_ date: Date) throws {
111:         let predicate = #Predicate<ConversationSD>{ $0.createdAt >=  date && $0.createdAt <= date}
112:         try modelContext.delete(model: ConversationSD.self, where: predicate)
113:     }
114: }
115: 
116: 
117: // MARK: - Messages
118: extension SwiftDataService {
119:     func fetchMessages(_ conversationId: UUID) throws -> [MessageSD] {
120:         let predicate = #Predicate<MessageSD>{ $0.conversation?.id == conversationId }
121:         let sortDescriptor = SortDescriptor(\MessageSD.createdAt)
122:         let fetchDescriptor = FetchDescriptor<MessageSD>(predicate: predicate, sortBy: [sortDescriptor])
123:         return try modelContext.fetch(fetchDescriptor)
124:     }
125:     
126:     func updateMessage(_ message: MessageSD) throws {
127:         try modelContext.saveChanges()
128:     }
129:     
130:     func createMessage(_ mesasge: MessageSD) throws {
131:         self.modelContext.insert(mesasge)
132:         try modelContext.saveChanges()
133:     }
134: }
135: 
136: // MARK: - CompletionInstruction
137: extension SwiftDataService {
138:     func fetchCompletionInstructions() throws -> [CompletionInstructionSD] {
139:         let sortDescriptor = SortDescriptor(\CompletionInstructionSD.order, order: .forward)
140:         let fetchDescriptor = FetchDescriptor<CompletionInstructionSD>(sortBy: [sortDescriptor])
141:         return try modelContext.fetch(fetchDescriptor)
142:     }
143:     
144:     func updateCompletionInstructions(_ instructions: [CompletionInstructionSD]) throws {
145:         for index in instructions.indices {
146:             instructions[index].order = index
147:             modelContext.insert(instructions[index])
148:         }
149:         try modelContext.saveChanges()
150:     }
151:     
152:     func deleteCompletionInstruction(_ instruction: CompletionInstructionSD) throws {
153:         self.modelContext.delete(instruction)
154:         try modelContext.saveChanges()
155:     }
156: }
157: 
158: // MARK: - General
159: extension SwiftDataService {
160:     func deleteEverything() throws {
161:         try modelContext.delete(model: ConversationSD.self)
162:         try modelContext.delete(model: LanguageModelSD.self)
163:         try modelContext.delete(model: MessageSD.self)
164:         try modelContext.delete(model: CompletionInstructionSD.self)
165:         try modelContext.saveChanges()
166:     }
167: }
````

## File: Enchanted/Services/Throttler.swift
````swift
 1: //
 2: //  Throttler.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 29/12/2023.
 6: //
 7: 
 8: import Foundation
 9: 
10: class Throttler {
11:     private var workItem: DispatchWorkItem?
12:     private var lastRun: Date = .distantPast
13:     private let queue: DispatchQueue
14:     private let delay: TimeInterval
15: 
16:     init(delay: TimeInterval, queue: DispatchQueue = DispatchQueue.main) {
17:         self.delay = delay
18:         self.queue = queue
19:     }
20: 
21:     func throttle(_ block: @escaping () -> Void) {
22:         workItem?.cancel()
23: 
24:         let item = DispatchWorkItem { [weak self] in
25:             self?.lastRun = Date()
26:             block()
27:         }
28:         self.workItem = item
29: 
30:         let delayFactor = Date().timeIntervalSince(lastRun) >= delay ? 0 : delay
31:         queue.asyncAfter(deadline: .now() + delayFactor, execute: item)
32:     }
33: }
````

## File: Enchanted/Stores/AppStore.swift
````swift
 1: //
 2: //  AppStore.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 11/12/2023.
 6: //
 7: 
 8: import Foundation
 9: import Combine
10: import SwiftUI
11: 
12: enum AppState {
13:     case chat
14:     case voice
15: }
16: 
17: @Observable
18: final class AppStore {
19:     static let shared = AppStore()
20:     
21:     private var cancellables = Set<AnyCancellable>()
22:     private var timer: Timer?
23:     private var pingInterval: TimeInterval = 5
24:     @MainActor var isReachable: Bool = true
25:     @MainActor var notifications: [NotificationMessage] = []
26:     @MainActor var menuBarIcon: String? = nil
27:     var appState: AppState = .chat
28: 
29:     init() {
30:         if let storedIntervalString = UserDefaults.standard.string(forKey: "pingInterval") {
31:             pingInterval = Double(storedIntervalString) ?? 5
32:             
33:             if pingInterval <= 0 {
34:                 pingInterval = .infinity
35:             }
36:         }
37:         startCheckingReachability(interval: pingInterval)
38:     }
39:     
40:     deinit {
41:         stopCheckingReachability()
42:     }
43:     
44:     private func startCheckingReachability(interval: TimeInterval = 5) {
45:         timer = Timer.scheduledTimer(withTimeInterval: interval, repeats: true) { _ in
46:             Task { [weak self] in
47:                 let status = await self?.reachable() ?? false
48:                 self?.updateReachable(status)
49:             }
50:         }
51:     }
52:     
53:     private func updateReachable(_ isReachable: Bool) {
54:         DispatchQueue.main.async {
55:             withAnimation {
56:                 self.isReachable = isReachable
57:             }
58:         }
59:     }
60: 
61:     private func stopCheckingReachability() {
62:         timer?.invalidate()
63:         timer = nil
64:     }
65: 
66:     private func reachable() async -> Bool {
67:         let status = await OllamaService.shared.reachable()
68:         return status
69:     }
70:     
71:     @MainActor func uiLog(message: String, status: NotificationMessage.Status) {
72:         notifications = [NotificationMessage(message: message, status: status)] + notifications.suffix(5)
73:     }
74: }
````

## File: Enchanted/Stores/CompletionsStore.swift
````swift
 1: //
 2: //  CompletionsStore.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 01/03/2024.
 6: //
 7: 
 8: import Foundation
 9: import SwiftUI
10: 
11: @Observable
12: final class CompletionsStore {
13:     static let shared = CompletionsStore(swiftDataService: SwiftDataService.shared)
14:     private var swiftDataService: SwiftDataService
15:     
16:     var completions: [CompletionInstructionSD] = []
17:     
18:     init(swiftDataService: SwiftDataService) {
19:         self.swiftDataService = swiftDataService
20:         load()
21:     }
22:     
23:     func save() {
24:         Task {
25:             try? await swiftDataService.updateCompletionInstructions(completions)
26:         }
27:     }
28:     
29:     func delete(_ completion: CompletionInstructionSD) {
30:         Task {
31:             try? await swiftDataService.deleteCompletionInstruction(completion)
32:             load()
33:         }
34:     }
35:     
36:     func load() {
37:         Task {
38:             var loadedCompletions: [CompletionInstructionSD] = []
39:             loadedCompletions = (try? await SwiftDataService.shared.fetchCompletionInstructions()) ?? []
40:             
41:             if loadedCompletions.count == 0 {
42:                 try? await SwiftDataService.shared.updateCompletionInstructions(CompletionInstructionSD.samples)
43:                 loadedCompletions = (try? await SwiftDataService.shared.fetchCompletionInstructions()) ?? []
44:             }
45:             
46:             withAnimation {
47:                 completions = loadedCompletions
48:             }
49:         }
50:     }
51: }
````

## File: Enchanted/Stores/ConversationStore.swift
````swift
  1: //
  2: //  ChatsStore.swift
  3: //  Enchanted
  4: //
  5: //  Created by Augustinas Malinauskas on 10/12/2023.
  6: //
  7: 
  8: import Foundation
  9: import SwiftData
 10: import OllamaKit
 11: import Combine
 12: import SwiftUI
 13: 
 14: @Observable
 15: final class ConversationStore: Sendable {
 16:     static let shared = ConversationStore(swiftDataService: SwiftDataService.shared)
 17:     
 18:     private var swiftDataService: SwiftDataService
 19:     private var generation: AnyCancellable?
 20:     
 21:     /// For some reason (SwiftUI bug / too frequent UI updates) updating UI for each stream message sometimes freezes the UI.
 22:     /// Throttling UI updates seem to fix the issue.
 23:     private var currentMessageBuffer: String = ""
 24: #if os(macOS)
 25:     private let throttler = Throttler(delay: 0.1)
 26: #else
 27:     private let throttler = Throttler(delay: 0.1)
 28: #endif
 29:     
 30:     @MainActor var conversationState: ConversationState = .completed
 31:     @MainActor var conversations: [ConversationSD] = []
 32:     @MainActor var selectedConversation: ConversationSD?
 33:     @MainActor var messages: [MessageSD] = []
 34:     
 35:     init(swiftDataService: SwiftDataService) {
 36:         self.swiftDataService = swiftDataService
 37:     }
 38:     
 39:     func loadConversations() async throws {
 40:         print("loading conversations")
 41:         let fetchedConversations = try await swiftDataService.fetchConversations()
 42:         DispatchQueue.main.async {
 43:             self.conversations = fetchedConversations
 44:         }
 45:         print("loaded conversations")
 46:     }
 47:     
 48:     func deleteAllConversations() {
 49:         Task {
 50:             DispatchQueue.main.async { [weak self] in
 51:                 self?.messages = []
 52:                 self?.selectedConversation = nil
 53:             }
 54:             try? await swiftDataService.deleteConversations()
 55:             try? await swiftDataService.deleteMessages()
 56:             try? await loadConversations()
 57:         }
 58:     }
 59:     
 60:     func deleteDailyConversations(_ date: Date) {
 61:         Task {
 62:             DispatchQueue.main.async { [self] in
 63:                 selectedConversation = nil
 64:                 messages = []
 65:             }
 66:             try? await swiftDataService.deleteConversations()
 67:             try? await loadConversations()
 68:         }
 69:     }
 70:     
 71:     
 72:     func create(_ conversation: ConversationSD) async throws {
 73:         try await swiftDataService.createConversation(conversation)
 74:     }
 75:     
 76:     func reloadConversation(_ conversation: ConversationSD) async throws {
 77:         let (messages, selectedConversation) = try await (
 78:             swiftDataService.fetchMessages(conversation.id),
 79:             swiftDataService.getConversation(conversation.id)
 80:         )
 81:         
 82:         DispatchQueue.main.async {
 83:                 self.messages = messages
 84:                 self.selectedConversation = selectedConversation
 85:         }
 86:     }
 87:     
 88:     func selectConversation(_ conversation: ConversationSD) async throws {
 89:         try await reloadConversation(conversation)
 90:     }
 91:     
 92:     func delete(_ conversation: ConversationSD) async throws {
 93:         try await swiftDataService.deleteConversation(conversation)
 94:         let fetchedConversations = try await swiftDataService.fetchConversations()
 95:         DispatchQueue.main.async {
 96:             self.selectedConversation = nil
 97:             self.conversations = fetchedConversations
 98:         }
 99:     }
100:     
101:     @MainActor func stopGenerate() {
102:         generation?.cancel()
103:         handleComplete()
104:         withAnimation {
105:             conversationState = .completed
106:         }
107:     }
108:     
109:     @MainActor
110:     func sendPrompt(userPrompt: String, model: LanguageModelSD, image: Image? = nil, systemPrompt: String = "", trimmingMessageId: String? = nil) {
111:         guard userPrompt.trimmingCharacters(in: .whitespacesAndNewlines).count > 0 else { return }
112:         
113:         let conversation = selectedConversation ?? ConversationSD(name: userPrompt)
114:         conversation.updatedAt = Date.now
115:         conversation.model = model
116:         
117:         print("model", model.name)
118:         print("conversation", conversation.name)
119:         
120:         /// trim conversation if on edit mode
121:         if let trimmingMessageId = trimmingMessageId {
122:             conversation.messages = conversation.messages
123:                 .sorted{$0.createdAt < $1.createdAt}
124:                 .prefix(while: {$0.id.uuidString != trimmingMessageId})
125:         }
126:         
127:         /// add system prompt to very first message in the conversation
128:         if !systemPrompt.isEmpty && conversation.messages.isEmpty {
129:             let systemMessage = MessageSD(content: systemPrompt, role: "system")
130:             systemMessage.conversation = conversation
131:         }
132:         
133:         /// construct new message
134:         let userMessage = MessageSD(content: userPrompt, role: "user", image: image?.render()?.compressImageData())
135:         userMessage.conversation = conversation
136:         
137:         /// prepare message history for Ollama
138:         var messageHistory = conversation.messages
139:             .sorted{$0.createdAt < $1.createdAt}
140:             .map{OKChatRequestData.Message(role: OKChatRequestData.Message.Role(rawValue: $0.role) ?? .assistant, content: $0.content)}
141:         
142:         
143:         print(messageHistory.map({$0.content}))
144:         
145:         /// attach selected image to the last Message
146:         if let image = image?.render() {
147:             if let lastMessage = messageHistory.popLast() {
148:                 let imagesBase64: [String] = [image.convertImageToBase64String()]
149:                 let messageWithImage = OKChatRequestData.Message(role: lastMessage.role, content: lastMessage.content, images: imagesBase64)
150:                 messageHistory.append(messageWithImage)
151:             }
152:         }
153:         
154:         let assistantMessage = MessageSD(content: "", role: "assistant")
155:         assistantMessage.conversation = conversation
156:         
157:         conversationState = .loading
158:         
159:         Task {
160:             try await swiftDataService.updateConversation(conversation)
161:             try await swiftDataService.createMessage(userMessage)
162:             try await swiftDataService.createMessage(assistantMessage)
163:             try await reloadConversation(conversation)
164:             try? await loadConversations()
165:             
166:             if await OllamaService.shared.ollamaKit.reachable() {
167:                 DispatchQueue.global(qos: .background).async {
168:                     var request = OKChatRequestData(model: model.name, messages: messageHistory)
169:                     request.options = OKCompletionOptions(temperature: 0)
170:                     
171:                     self.generation = OllamaService.shared.ollamaKit.chat(data: request)
172:                         .sink(receiveCompletion: { [weak self] completion in
173:                             switch completion {
174:                             case .finished:
175:                                 self?.handleComplete()
176:                             case .failure(let error):
177:                                 self?.handleError(error.localizedDescription)
178:                             }
179:                         }, receiveValue: { [weak self] response in
180:                             self?.handleReceive(response)
181:                         })
182:                     
183:                 }
184:             } else {
185:                 self.handleError("Server unreachable")
186:             }
187:         }
188:     }
189:     
190:     @MainActor
191:     private func handleReceive(_ response: OKChatResponse)  {
192:         if messages.isEmpty { return }
193:         
194:         if let responseContent = response.message?.content {
195:             currentMessageBuffer = currentMessageBuffer + responseContent
196:             
197:             throttler.throttle { [weak self] in
198:                 guard let self = self else { return }
199:                 let lastIndex = self.messages.count - 1
200:                 self.messages[lastIndex].content.append(currentMessageBuffer)
201:                 currentMessageBuffer = ""
202:             }
203:         }
204:     }
205:     
206:     @MainActor
207:     private func handleError(_ errorMessage: String) {
208:         guard let lastMesasge = messages.last else { return }
209:         lastMesasge.error = true
210:         lastMesasge.done = false
211:         
212:         Task(priority: .background) {
213:             try? await swiftDataService.updateMessage(lastMesasge)
214:         }
215:         
216:         withAnimation {
217:             conversationState = .error(message: errorMessage)
218:         }
219:     }
220:     
221:     @MainActor
222:     private func handleComplete() {
223:         guard let lastMesasge = messages.last else { return }
224:         lastMesasge.error = false
225:         lastMesasge.done = true
226:         
227:         Task(priority: .background) {
228:             try await self.swiftDataService.updateMessage(lastMesasge)
229:         }
230:         
231:         withAnimation {
232:             conversationState = .completed
233:         }
234:     }
235: }
````

## File: Enchanted/Stores/LanguageModelStore.swift
````swift
 1: //
 2: //  ModelStore.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 10/12/2023.
 6: //
 7: 
 8: import Foundation
 9: import SwiftData
10: 
11: @Observable
12: final class LanguageModelStore {
13:     static let shared = LanguageModelStore(swiftDataService: SwiftDataService.shared)
14:     
15:     private var swiftDataService: SwiftDataService
16:     @MainActor var models: [LanguageModelSD] = []
17:     @MainActor var supportsImages = false
18:     @MainActor var selectedModel: LanguageModelSD?
19:     
20:     init(swiftDataService: SwiftDataService) {
21:         self.swiftDataService = swiftDataService
22:     }
23:     
24:     @MainActor
25:     func setModel(model: LanguageModelSD?) {
26:         if let model = model {
27:             // check if model still exists
28:             if models.contains(model) {
29:                 selectedModel = model
30:             }
31:         } else {
32:             selectedModel = nil
33:         }
34:     }
35:     
36:     @MainActor
37:     func setModel(modelName: String) {
38:         for model in models {
39:             if model.name == modelName {
40:                 setModel(model: model)
41:                 return
42:             }
43:         }
44:         if let lastModel = models.last {
45:             setModel(model: lastModel)
46:         }
47:     }
48:     
49:     func loadModels() async throws {
50:         let remoteModels = try await OllamaService.shared.getModels()
51:         try await swiftDataService.saveModels(models: remoteModels.map{LanguageModelSD(name: $0.name, imageSupport: $0.imageSupport, modelProvider: .ollama)})
52:         
53:         let storedModels = (try? await swiftDataService.fetchModels()) ?? []
54:         
55:         DispatchQueue.main.async {
56:             let remoteModelNames = remoteModels.map { $0.name }
57:             self.models = storedModels.filter{remoteModelNames.contains($0.name)}
58:         }
59:     }
60:     
61:     func deleteAllModels() async throws {
62:         DispatchQueue.main.async {
63:             self.models = []
64:         }
65:         try await swiftDataService.deleteModels()
66:     }
67: }
````

## File: Enchanted/SwiftData/Models/CompletionInstructionSD.swift
````swift
 1: //
 2: //  CompletionInstructionSD.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 29/02/2024.
 6: //
 7: 
 8: import Foundation
 9: import SwiftData
10: 
11: @Model
12: final class CompletionInstructionSD: Identifiable {
13:     @Attribute(.unique) var id: UUID = UUID()
14:     var name: String
15:     var keyboardCharacterStr: String
16:     var instruction: String
17:     var order: Int
18:     var modelTemperature: Float? = 0.8
19:     
20:     var keyboardCharacter: Character {
21:         keyboardCharacterStr.first ?? "x"
22:     }
23:     
24:     init(name: String, keyboardCharacterStr: String, instruction: String, order: Int, modelTemperature: Float = 0.8) {
25:         self.name = name
26:         self.keyboardCharacterStr = keyboardCharacterStr
27:         self.instruction = instruction
28:         self.order = order
29:         self.modelTemperature = modelTemperature
30:     }
31: }
32: 
33: // MARK: - Sample data
34: extension CompletionInstructionSD {
35:     static let samples: [CompletionInstructionSD] = [
36:         .init(name: "Fix Grammar", keyboardCharacterStr: "f", instruction: "Fix grammar for the text below", order: 1),
37:         .init(name: "Summarize", keyboardCharacterStr: "s", instruction: "Summarize the following text, focusing strictly on the key facts and core arguments. Exclude any model-generated politeness or introductory phrases. Provide a direct, concise summary in bulletpoints.", order: 2),
38:         .init(name: "Write More", keyboardCharacterStr: "w", instruction: "Elaborate on the following content, providing additional insights, examples, detailed explanations, and related concepts. Dive deeper into the topic to offer a comprehensive understanding and explore various dimensions not covered in the original text.", order: 3),
39:         .init(name: "Politely Decline", keyboardCharacterStr: "d", instruction: "Write a response politely declining the offer below", order: 4)
40:     ]
41: }
42: 
43: 
44: // MARK: - @unchecked Sendable
45: extension CompletionInstructionSD: @unchecked Sendable {
46:     /// We hide compiler warnings for concurency. We have to make sure to modify the data only via SwiftDataManager to ensure concurrent operations.
47: }
````

## File: Enchanted/SwiftData/Models/ConversationSD.swift
````swift
 1: //
 2: //  ConversationSD.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 10/12/2023.
 6: //
 7: 
 8: import Foundation
 9: import SwiftData
10: 
11: @Model
12: final class ConversationSD: Identifiable {
13:     @Attribute(.unique) var id: UUID = UUID()
14:     
15:     var name: String
16:     var createdAt: Date
17:     var updatedAt: Date
18: 
19:     @Relationship(deleteRule: .nullify)
20:     var model: LanguageModelSD?
21: 
22:     @Relationship(deleteRule: .cascade, inverse: \MessageSD.conversation)
23:     var messages: [MessageSD] = []
24:     
25:     init(name: String, updatedAt: Date = Date.now) {
26:         self.name = name
27:         self.updatedAt = updatedAt
28:         self.createdAt = updatedAt
29:     }
30: }
31: 
32: // MARK: - Sample data
33: extension ConversationSD {
34:     static let sample = [
35:         ConversationSD(name: "New Chat", updatedAt: Date.now),
36:         ConversationSD(name: "Presidential", updatedAt: Calendar.current.date(byAdding: .day, value: -1, to: Date.now)!),
37:         ConversationSD(name: "What is QFT?", updatedAt: Calendar.current.date(byAdding: .day, value: -2, to: Date.now)!)
38:     ]
39: }
40: 
41: // MARK: - @unchecked Sendable
42: extension ConversationSD: @unchecked Sendable {
43:     /// We hide compiler warnings for concurency. We have to make sure to modify the data only via SwiftDataManager to ensure concurrent operations.
44: }
````

## File: Enchanted/SwiftData/Models/LanguageModelSD.swift
````swift
 1: //
 2: //  ModelSD.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 10/12/2023.
 6: //
 7: 
 8: import Foundation
 9: import SwiftData
10: 
11: @Model
12: final class LanguageModelSD: Identifiable {
13:     @Attribute(.unique) var name: String
14:     var isAvailable: Bool = false
15:     var imageSupport: Bool = false
16:     @Attribute var modelProvider: ModelProvider? = ModelProvider.ollama
17:     
18:     @Relationship(deleteRule: .cascade, inverse: \ConversationSD.model)
19:     var conversations: [ConversationSD]? = []
20:     
21:     
22:     init(name: String, imageSupport: Bool = false, modelProvider: ModelProvider) {
23:         self.name = name
24:         self.imageSupport = imageSupport
25:         self.modelProvider = modelProvider
26:     }
27:     
28:     @Transient var isNotAvailable: Bool {
29:         isAvailable == false
30:     }
31: }
32: 
33: // MARK: - Helpers
34: extension LanguageModelSD {
35:     var prettyName: String {
36:         guard let modelName = name.components(separatedBy: ":").first else {
37:             return name
38:         }
39:         
40:         return modelName.capitalized
41:     }
42:     
43:     var prettyVersion: String {
44:         let components = name.components(separatedBy: ":")
45:         if components.count >= 2 {
46:             return components[1]
47:         }
48:         return ""
49:     }
50:     
51:     var supportsImages: Bool {
52:         if imageSupport {
53:             return true
54:         }
55:         
56:         /// older technique to detect image modality
57:         /// @deprecated
58:         let imageSupportedModels = ["llava"]
59:         for modelName in imageSupportedModels {
60:             if name.contains(modelName) {
61:                 return true
62:             }
63:         }
64:         return false
65:     }
66:     
67:     static let sample: [LanguageModelSD] = [
68:         .init(name: "Llama:latest", modelProvider: .ollama),
69:         .init(name: "Mistral:latest", modelProvider: .ollama)
70:     ]
71: }
72: 
73: 
74: // MARK: - @unchecked Sendable
75: extension LanguageModelSD: @unchecked Sendable {
76:     /// We hide compiler warnings for concurency. We have to make sure to modify the data only via SwiftDataManager to ensure concurrent operations.
77: }
````

## File: Enchanted/SwiftData/Models/MessageSD.swift
````swift
 1: //
 2: //  ConversationSD.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 10/12/2023.
 6: //
 7: 
 8: import Foundation
 9: import SwiftData
10: 
11: @Model
12: final class MessageSD: Identifiable {
13:     @Attribute(.unique) var id: UUID = UUID()
14:     
15:     var think: String? {
16:         if content.contains("<think>") {
17:             if content.contains("</think>") {
18:                 let tmps = content.components(separatedBy: "</think>")
19:                 if tmps.count > 1 {
20:                     return tmps[0].replacingOccurrences(of: "<think>", with: "")
21:                 }
22:             }
23:             return content.replacingOccurrences(of: "<think>", with: "")
24:         }
25:         return nil
26:     }
27:     var hasThink: Bool {
28:         if content.contains("<think>") {
29:             return true
30:         }
31:         return false
32:     }
33:     var thinkComplete: Bool {
34:         if content.contains("<think>") {
35:             if content.contains("</think>") {
36:                 return true
37:             }
38:         }
39:         return false
40:     }
41:     var content: String
42:     var realContent: String? {
43:         if content.contains("<think>") {
44:             if content.contains("</think>") {
45:                 let tmps = content.components(separatedBy: "</think>")
46:                 if tmps.count > 1 {
47:                     return tmps[1]
48:                 }
49:             }
50:             return nil
51:         }
52:         return content
53:     }
54:     var role: String
55:     var done: Bool = false
56:     var error: Bool = false
57:     var createdAt: Date = Date.now
58:     @Attribute(.externalStorage) var image: Data?
59:     
60:     @Relationship var conversation: ConversationSD?
61:         
62:     
63:     init(content: String, role: String, done: Bool = false, error: Bool = false, image: Data? = nil) {
64:         self.content = content
65:         self.role = role
66:         self.done = done
67:         self.error = error
68:         self.conversation = conversation
69:         self.image = image
70:     }
71: 
72:     @Transient var model: String {
73:         conversation?.model?.name ?? ""
74:     }
75: }
76: 
77: extension MessageSD {
78:     static let sample: [MessageSD] = [
79:         .init(content: "How many quarks there are in SM?", role: "user"),
80:         .init(content: "There are 6 quarks in SM, each of them has an antiparticle and colour.", role: "assistant"),
81:         .init(content: "How elementary particle is defined in mathematics?", role: "user"),
82:         .init(content: "Elementary particle is defined as an irreducible representation of the poincase group.", role: "assistant")
83:     ]
84: }
85: 
86: // MARK: - @unchecked Sendable
87: extension MessageSD: @unchecked Sendable {
88:     /// We hide compiler warnings for concurency. We have to make sure to modify the data only via SwiftDataManager to ensure concurrent operations.
89: }
````

## File: Enchanted/UI/iOS/Components/SelectTextSheet.swift
````swift
 1: //
 2: //  SelectTextSheet.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 01/05/2024.
 6: //
 7: 
 8: #if os(iOS) || os(visionOS)
 9: import SwiftUI
10: import UIKit
11: 
12: struct SelectTextSheet: View {
13:     @Environment(\.presentationMode) var presentationMode
14:     @FocusState private var isTextEditorFocused: Bool
15:     
16:     var message: MessageSD
17:     var body: some View {
18:         VStack {
19:             ZStack {
20:                 Text("Select Text")
21:                     .font(.system(size: 16))
22:                     .fontWeight(.bold)
23:                 
24:                 HStack {
25:                     Spacer()
26:                     Button(action: {presentationMode.wrappedValue.dismiss()}) {
27:                         Image(systemName: "x.circle.fill")
28:                             .padding(7)
29:                     }
30:                     .buttonStyle(.plain)
31:                 }
32:                 .padding()
33:             }
34:             
35:             TextEditor(text: .constant(message.content))
36:                 .focusable()
37:                 .focused($isTextEditorFocused)
38:                 .onReceive(NotificationCenter.default.publisher(for: UITextField.textDidBeginEditingNotification)) { obj in
39:                     if let textField = obj.object as? UITextView {
40:                         textField.selectedTextRange = textField.textRange(from: textField.beginningOfDocument, to: textField.endOfDocument)
41:                     }
42:                 }
43:             #if os(visionOS)
44:                 .frame(width: 600, height: 600)
45:             #endif
46:             
47:         }
48:         .textSelection(.enabled)
49:         .onAppear {
50:             isTextEditorFocused = true
51:         }
52:         
53:     }
54: }
55: 
56: #Preview {
57:     SelectTextSheet(message: MessageSD.sample[0])
58: }
59: 
60: #endif
````

## File: Enchanted/UI/iOS/ChatView_iOS.swift
````swift
  1: //
  2: //  ChatView.swift
  3: //  Enchanted
  4: //
  5: //  Created by Augustinas Malinauskas on 09/12/2023.
  6: //
  7: 
  8: #if os(iOS)
  9: import SwiftUI
 10: import PhotosUI
 11: 
 12: struct ChatView: View {
 13:     var conversation: ConversationSD?
 14:     var messages: [MessageSD]
 15:     var modelsList: [LanguageModelSD]
 16:     var onMenuTap: () -> ()
 17:     var onNewConversationTap: () -> ()
 18:     var onSendMessageTap: @MainActor (_ prompt: String, _ model: LanguageModelSD, _ image: Image?, _ trimmingMessageId: String?) -> ()
 19:     var conversationState: ConversationState
 20:     var onStopGenerateTap: @MainActor () -> ()
 21:     var reachable: Bool
 22:     var onSelectModel: @MainActor (_ model: LanguageModelSD?) -> ()
 23:     var userInitials: String
 24:     
 25:     private var selectedModel: LanguageModelSD?
 26:     @State private var message = ""
 27:     @State private var isRecording = false
 28:     @State private var editMessage: MessageSD?
 29:     @FocusState private var isFocusedInput: Bool
 30:     @StateObject var speechRecognizer = SpeechRecognizer()
 31:     
 32:     /// Image selection
 33:     @State private var pickerSelectorActive: PhotosPickerItem?
 34:     @State private var selectedImage: Image?
 35:     
 36:     init(
 37:         conversation: ConversationSD? = nil,
 38:         messages: [MessageSD],
 39:         modelsList: [LanguageModelSD],
 40:         selectedModel: LanguageModelSD?,
 41:         onSelectModel: @MainActor @escaping (_ model: LanguageModelSD?) -> (),
 42:         onMenuTap: @escaping () -> Void,
 43:         onNewConversationTap: @escaping () -> Void,
 44:         onSendMessageTap: @MainActor @escaping (_ prompt: String, _ model: LanguageModelSD, _ image: Image?, _ trimmingMessageId: String?) -> Void,
 45:         conversationState: ConversationState,
 46:         onStopGenerateTap: @MainActor @escaping () -> Void,
 47:         reachable: Bool,
 48:         modelSupportsImages: Bool = false,
 49:         userInitials: String
 50:     ) {
 51:         self.conversation = conversation
 52:         self.messages = messages
 53:         self.modelsList = modelsList
 54:         self.onMenuTap = onMenuTap
 55:         self.onNewConversationTap = onNewConversationTap
 56:         self.onSendMessageTap = onSendMessageTap
 57:         self.conversationState = conversationState
 58:         self.onStopGenerateTap = onStopGenerateTap
 59:         self.reachable = reachable
 60:         self.onSelectModel = onSelectModel
 61:         self.selectedModel = selectedModel
 62:         self.userInitials = userInitials
 63:     }
 64:     
 65:     private func onMessageSubmit() {
 66:         Task {
 67:             await Haptics.shared.mediumTap()
 68:             
 69:             guard let selectedModel = selectedModel else { return }
 70:             
 71:             await onSendMessageTap(
 72:                 message,
 73:                 selectedModel,
 74:                 selectedImage,
 75:                 editMessage?.id.uuidString
 76:             )
 77:             
 78:             withAnimation {
 79:                 isFocusedInput = false
 80:                 editMessage = nil
 81:                 selectedImage = nil
 82:                 message = ""
 83:             }
 84:         }
 85:     }
 86:     
 87:     var header: some View {
 88:         HStack(alignment: .center) {
 89:             Button(action: onMenuTap) {
 90:                 Image(systemName: "line.3.horizontal")
 91:                     .renderingMode(.template)
 92:                     .resizable()
 93:                     .scaledToFit()
 94:                     .frame(width: 22)
 95:                     .foregroundColor(Color(.label))
 96:             }
 97:             
 98:             Spacer()
 99:             
100:             ModelSelectorView(
101:                 modelsList: modelsList,
102:                 selectedModel: selectedModel,
103:                 onSelectModel: onSelectModel
104:             )
105:             .showIf(!modelsList.isEmpty)
106:             
107:             Spacer()
108:             
109:             Button(action: onNewConversationTap) {
110:                 Image(systemName: "square.and.pencil")
111:                     .renderingMode(.template)
112:                     .resizable()
113:                     .scaledToFit()
114:                     .frame(width: 22)
115:                     .foregroundColor(Color(.label))
116:             }
117:         }
118:     }
119:     
120:     var inputFields: some View {
121:         HStack(spacing: 10) {
122:             PhotosPicker(selection: $pickerSelectorActive) {
123:                 Image(systemName: "photo")
124:                     .resizable()
125:                     .scaledToFit()
126:                     .foregroundStyle(.foreground)
127:                     .frame(height: 19)
128:             }
129:             .onChange(of: pickerSelectorActive) {
130:                 Task {
131:                     if let loaded = try? await pickerSelectorActive?.loadTransferable(type: Image.self) {
132:                         selectedImage = loaded
133:                     } else {
134:                         print("Failed")
135:                     }
136:                 }
137:             }
138:             .showIf(selectedModel?.supportsImages ?? false)
139:             
140:             
141:             HStack {
142:                 SelectedImageView(image: $selectedImage)
143:                 
144:                 TextField("Message", text: $message, axis: .vertical)
145:                     .focused($isFocusedInput)
146:                     .frame(minHeight: 40)
147:                     .font(.system(size: 14))
148:                 
149:                 RecordingView(speechRecognizer: speechRecognizer, isRecording: $isRecording.animation()) { transcription in
150:                     self.message = transcription
151:                 }
152:             }
153:             .onChange(of: isFocusedInput, { oldValue, newValue in
154:                 withAnimation {
155:                     isFocusedInput = newValue
156:                 }
157:             })
158:             .padding(.horizontal)
159:             .overlay(
160:                 RoundedRectangle(cornerRadius: 20)
161:                     .strokeBorder(
162:                         isRecording ? Color(.systemBlue) : Color(.systemGray2),
163:                         style: StrokeStyle(lineWidth: isRecording ? 2 : 0.5)
164:                     )
165:             )
166:             
167:             switch conversationState {
168:             case .loading:
169:                 SimpleFloatingButton(systemImage: "square.fill", onClick: onStopGenerateTap)
170:                     .frame(width: 12)
171:             default:
172:                 SimpleFloatingButton(systemImage: "paperplane.fill", onClick: onMessageSubmit)
173:                     .frame(width: 18)
174:             }
175:         }
176:         .contentShape(Rectangle())
177:         .onTapGesture {
178:             // allow focusing text area on greater tap area
179:             isFocusedInput = true
180:         }
181:     }
182:     
183:     var body: some View {
184:         VStack {
185:             header
186:                 .padding(.horizontal)
187:             
188:             if conversation != nil {
189:                 MessageListView(
190:                     messages: messages,
191:                     conversationState: conversationState,
192:                     userInitials: userInitials,
193:                     editMessage: $editMessage
194:                 )
195:             } else {
196:                 EmptyConversaitonView(sendPrompt: {selectedMessage in
197:                     if let selectedModel = selectedModel {
198:                         onSendMessageTap(selectedMessage, selectedModel, nil, nil)
199:                     }
200:                 })
201:             }
202:             
203:             ConversationStatusView(state: conversationState)
204:                 .padding()
205:             
206:             if !reachable {
207:                 UnreachableAPIView()
208:             }
209:             
210:             inputFields
211:                 .padding(.horizontal)
212:             
213:         }
214:         .padding(.bottom, 5)
215:         .onChange(of: editMessage, initial: false) { _, newMessage in
216:             if let newMessage = newMessage {
217:                 message = newMessage.content
218:                 isFocusedInput = true
219:             }
220:         }
221:     }
222: }
223: 
224: #Preview {
225:     ChatView(
226:         conversation: ConversationSD.sample[0],
227:         messages: MessageSD.sample,
228:         modelsList: LanguageModelSD.sample,
229:         selectedModel: LanguageModelSD.sample[0],
230:         onSelectModel: {_ in },
231:         onMenuTap: {},
232:         onNewConversationTap: { },
233:         onSendMessageTap: {_,_,_,_    in},
234:         conversationState: .loading,
235:         onStopGenerateTap: {},
236:         reachable: false,
237:         modelSupportsImages: true, 
238:         userInitials: "AM"
239:     )
240: }
241: 
242: #Preview {
243:     ChatView(
244:         conversation: nil,
245:         messages: [],
246:         modelsList: LanguageModelSD.sample,
247:         selectedModel: LanguageModelSD.sample[0],
248:         onSelectModel: {_ in},
249:         onMenuTap: {},
250:         onNewConversationTap: { },
251:         onSendMessageTap: {_,_,_,_    in},
252:         conversationState: .completed,
253:         onStopGenerateTap: {},
254:         reachable: true,
255:         modelSupportsImages: true,
256:         userInitials: "AM"
257:     )
258: }
259: #endif
````

## File: Enchanted/UI/macOS/Chat/Components/InputFields_macOS.swift
````swift
  1: //
  2: //  InputFields_macOS.swift
  3: //  Enchanted
  4: //
  5: //  Created by Augustinas Malinauskas on 10/02/2024.
  6: //
  7: 
  8: #if os(macOS) || os(visionOS)
  9: import SwiftUI
 10: 
 11: struct InputFieldsView: View {
 12:     @Binding var message: String
 13:     var conversationState: ConversationState
 14:     var onStopGenerateTap: @MainActor () -> Void
 15:     var selectedModel: LanguageModelSD?
 16:     var onSendMessageTap: @MainActor (_ prompt: String, _ model: LanguageModelSD, _ image: Image?, _ trimmingMessageId: String?) -> ()
 17:     @Binding var editMessage: MessageSD?
 18:     @State var isRecording = false
 19:     
 20:     @State private var selectedImage: Image?
 21:     @State private var fileDropActive: Bool = false
 22:     @State private var fileSelectingActive: Bool = false
 23:     @FocusState private var isFocusedInput: Bool
 24:     
 25:     @MainActor private func sendMessage() {
 26:         guard let selectedModel = selectedModel else { return }
 27:         
 28:         onSendMessageTap(
 29:             message,
 30:             selectedModel,
 31:             selectedImage,
 32:             editMessage?.id.uuidString
 33:         )
 34:         withAnimation {
 35:             isRecording = false
 36:             isFocusedInput = false
 37:             editMessage = nil
 38:             selectedImage = nil
 39:             message = ""
 40:         }
 41:     }
 42:     
 43:     private func updateSelectedImage(_ image: Image) {
 44:         selectedImage = image
 45:     }
 46:     
 47: #if os(macOS)
 48:     var hotkeys: [HotkeyCombination] {
 49:         [
 50:             HotkeyCombination(keyBase: [.command], key: .kVK_ANSI_V) {
 51:                 if let nsImage = Clipboard.shared.getImage() {
 52:                     let image = Image(nsImage: nsImage)
 53:                     updateSelectedImage(image)
 54:                 }
 55:             }
 56:         ]
 57:     }
 58: #endif
 59:     
 60:     var body: some View {
 61:         HStack(spacing: 20) {
 62:             if let image = selectedImage {
 63:                 RemovableImage(
 64:                     image: image,
 65:                     onClick: {selectedImage = nil},
 66:                     height: 70
 67:                 )
 68:                 .padding(5)
 69:             }
 70:             
 71:             ZStack(alignment: .trailing) {
 72:                 TextField("Message", text: $message.animation(.easeOut(duration: 0.3)), axis: .vertical)
 73:                     .focused($isFocusedInput)
 74:                     .font(.system(size: 14))
 75:                     .frame(maxWidth:.infinity, minHeight: 40)
 76:                     .clipped()
 77:                     .textFieldStyle(.plain)
 78: #if os(macOS)
 79:                     .onSubmit {
 80:                         if NSApp.currentEvent?.modifierFlags.contains(.shift) == true {
 81:                             message += "\n"
 82:                         } else {
 83:                             sendMessage()
 84:                         }
 85:                     }
 86: #endif
 87:                 /// TextField bypasses drop area
 88:                     .allowsHitTesting(!fileDropActive)
 89: #if os(macOS)
 90:                     .addCustomHotkeys(hotkeys)
 91: #endif
 92:                     .padding(.trailing, 80)
 93:                 
 94:                 
 95:                 HStack {
 96:                     RecordingView(isRecording: $isRecording.animation()) { transcription in
 97:                         withAnimation(.easeIn(duration: 0.3)) {
 98:                             self.message = transcription
 99:                         }
100:                     }
101:                     
102:                     SimpleFloatingButton(systemImage: "photo.fill", onClick: { fileSelectingActive.toggle() })
103:                         .showIf(selectedModel?.supportsImages ?? false)
104:                         .fileImporter(isPresented: $fileSelectingActive,
105:                                       allowedContentTypes: [.png, .jpeg, .tiff],
106:                                       onCompletion: { result in
107:                             switch result {
108:                             case .success(let url):
109:                                 guard url.startAccessingSecurityScopedResource() else { return }
110:                                 if let imageData = try? Data(contentsOf: url) {
111:                                     selectedImage = Image(data: imageData)
112:                                 }
113:                                 url.stopAccessingSecurityScopedResource()
114:                             case .failure(let error):
115:                                 print(error)
116:                             }
117:                         })
118:                     
119:                     
120:                     Group {
121:                         switch conversationState {
122:                         case .loading:
123:                             SimpleFloatingButton(systemImage: "square.fill", onClick: onStopGenerateTap)
124:                         default:
125:                             SimpleFloatingButton(systemImage: "paperplane.fill", onClick: { Task { sendMessage() } })
126:                                 .showIf(!message.isEmpty)
127:                         }
128:                     }
129:                     
130:                 }
131:             }
132:             
133:         }
134:         .transition(.slide)
135:         .padding(.horizontal)
136:         .overlay(
137:             RoundedRectangle(cornerRadius: 20)
138:                 .strokeBorder(
139:                     Color.gray2Custom,
140:                     style: StrokeStyle(lineWidth: 1)
141:                 )
142:         )
143:         .overlay {
144:             if fileDropActive {
145:                 DragAndDrop(cornerRadius: 10)
146:             }
147:         }
148:         .animation(.default, value: fileDropActive)
149:         .onDrop(of: [.image], isTargeted: $fileDropActive.animation(), perform: { providers in
150:             guard let provider = providers.first else { return false }
151:             _ = provider.loadDataRepresentation(for: .image) { data, error in
152:                 if error == nil, let data {
153:                     selectedImage = Image(data: data)
154:                 }
155:             }
156:             
157:             return true
158:         })
159:         .contentShape(Rectangle())
160:         .onTapGesture {
161:             // allow focusing text area on greater tap area
162:             isFocusedInput = true
163:         }
164:     }
165: }
166: 
167: #Preview {
168:     @State var message = ""
169:     return InputFieldsView(
170:         message: $message,
171:         conversationState: .completed,
172:         onStopGenerateTap: {},
173:         onSendMessageTap: {_, _, _, _  in},
174:         editMessage: .constant(nil)
175:     )
176: }
177: #endif
````

## File: Enchanted/UI/macOS/Chat/Components/Sidebar_macOS.swift
````swift
1: //
2: //  Sidebar_macOS.swift
3: //  Enchanted
4: //
5: //  Created by Augustinas Malinauskas on 10/02/2024.
6: //
7: 
8: import SwiftUI
````

## File: Enchanted/UI/macOS/Chat/Components/ToolbarView_macOS.swift
````swift
 1: //
 2: //  ToolbarView_macOS.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 10/02/2024.
 6: //
 7: 
 8: #if os(macOS) || os(visionOS)
 9: import SwiftUI
10: 
11: struct ToolbarView: View {
12:     var modelsList: [LanguageModelSD]
13:     var selectedModel: LanguageModelSD?
14:     var onSelectModel: @MainActor (_ model: LanguageModelSD?) -> ()
15:     var onNewConversationTap: () -> ()
16:     var copyChat: (_ json: Bool) -> ()
17:     
18:     var body: some View {
19:         ModelSelectorView(
20:             modelsList: modelsList,
21:             selectedModel: selectedModel,
22:             onSelectModel: onSelectModel,
23:             showChevron: false
24:         )
25:         .frame(height: 20)
26:         
27:         MoreOptionsMenuView(copyChat: copyChat)
28:         
29:         Button(action: onNewConversationTap) {
30:             Image(systemName: "square.and.pencil")
31:                 .renderingMode(.template)
32:                 .resizable()
33:                 .scaledToFit()
34:                 .frame(height: 20)
35:                 .padding(5)
36:         }
37:         .buttonStyle(PlainButtonStyle())
38:         .keyboardShortcut(KeyEquivalent("n"), modifiers: .command)
39:     }
40: }
41: 
42: #Preview {
43:     ToolbarView(
44:         modelsList: LanguageModelSD.sample,
45:         selectedModel: LanguageModelSD.sample[0],
46:         onSelectModel: {_ in},
47:         onNewConversationTap: {}, 
48:         copyChat: {_ in}
49:     )
50: }
51: 
52: #endif
````

## File: Enchanted/UI/macOS/Chat/ChatView_macOS.swift
````swift
  1: //
  2: //  Chat.swift
  3: //  Enchanted
  4: //
  5: //  Created by Augustinas Malinauskas on 10/02/2024.
  6: //
  7: 
  8: #if os(macOS) || os(visionOS)
  9: import SwiftUI
 10: 
 11: struct ChatView: View {
 12:     @State private var columnVisibility = NavigationSplitViewVisibility.doubleColumn
 13:     var selectedConversation: ConversationSD?
 14:     var conversations: [ConversationSD]
 15:     var messages: [MessageSD]
 16:     var modelsList: [LanguageModelSD]
 17:     var onMenuTap: () -> ()
 18:     var onNewConversationTap: () -> ()
 19:     var onSendMessageTap: @MainActor (_ prompt: String, _ model: LanguageModelSD, _ image: Image?, _ trimmingMessageId: String?) -> ()
 20:     var onConversationTap: (_ conversation: ConversationSD) -> ()
 21:     var conversationState: ConversationState
 22:     var onStopGenerateTap: @MainActor () -> ()
 23:     var reachable: Bool
 24:     var modelSupportsImages: Bool
 25:     var selectedModel: LanguageModelSD?
 26:     var onSelectModel: @MainActor (_ model: LanguageModelSD?) -> ()
 27:     var onConversationDelete: (_ conversation: ConversationSD) -> ()
 28:     var onDeleteDailyConversations: (_ date: Date) -> ()
 29:     var userInitials: String
 30:     var copyChat: (_ json: Bool) -> ()
 31:     
 32:     @State private var message = ""
 33:     @State private var editMessage: MessageSD?
 34:     @State var isRecording = false
 35:     @FocusState private var isFocusedInput: Bool
 36:     
 37:     var body: some View {
 38:         NavigationSplitView(columnVisibility: $columnVisibility) {
 39:             SidebarView(
 40:                 selectedConversation: selectedConversation,
 41:                 conversations: conversations,
 42:                 onConversationTap: onConversationTap,
 43:                 onConversationDelete: onConversationDelete,
 44:                 onDeleteDailyConversations: onDeleteDailyConversations
 45:             )
 46:             .toolbar {
 47: #if os(visionOS)
 48:                 ToolbarItemGroup(placement:.navigationBarTrailing) {
 49:                     Button(action: {
 50:                         withAnimation(.easeIn(duration: 0.3)) {
 51:                             columnVisibility = .detailOnly
 52:                         }
 53:                     }) {
 54:                         Image(systemName: "sidebar.left")
 55:                     }
 56:                     .buttonStyle(PlainButtonStyle())
 57:                     .showIf(columnVisibility != .detailOnly)
 58:                 }
 59:                 
 60: #endif
 61:             }
 62:         } detail: {
 63:             VStack(alignment: .center) {
 64:                 if selectedConversation != nil {
 65:                     MessageListView(
 66:                         messages: messages,
 67:                         conversationState: conversationState,
 68:                         userInitials: userInitials,
 69:                         editMessage: $editMessage
 70:                     )
 71:                 } else {
 72:                     EmptyConversaitonView(sendPrompt: {selectedMessage in
 73:                         if let selectedModel = selectedModel {
 74:                             onSendMessageTap(selectedMessage, selectedModel, nil, nil)
 75:                         }
 76:                     })
 77:                 }
 78:                 
 79:                 if !reachable {
 80:                     UnreachableAPIView()
 81:                 }
 82:                 
 83:                 InputFieldsView(
 84:                     message: $message,
 85:                     conversationState: conversationState,
 86:                     onStopGenerateTap: onStopGenerateTap,
 87:                     selectedModel: selectedModel,
 88:                     onSendMessageTap: onSendMessageTap,
 89:                     editMessage: $editMessage
 90:                 )
 91:                 .padding()
 92:                 .frame(maxWidth: 800)
 93:             }
 94:             .toolbar {
 95:                 #if os(visionOS)
 96:                 ToolbarItemGroup(placement: .topBarLeading) {
 97:                     Button(action: {
 98:                         withAnimation {
 99:                             columnVisibility = .automatic
100:                         }
101:                     }) {
102:                         Image(systemName: "sidebar.left")
103:                     }
104:                     .buttonStyle(PlainButtonStyle())
105:                     .showIf(columnVisibility == .detailOnly)
106:                     
107:                     Text("Enchanted")
108:                 }
109:                 #else
110:                 ToolbarItem(placement: .navigation) {
111:                     Text("Enchanted")
112:                 }
113:                 #endif
114: 
115:                 
116:                 ToolbarItemGroup(placement: .automatic) {
117:                     ToolbarView(
118:                         modelsList: modelsList,
119:                         selectedModel: selectedModel,
120:                         onSelectModel: onSelectModel,
121:                         onNewConversationTap: onNewConversationTap,
122:                         copyChat: copyChat
123:                     )
124:                 }
125:             }
126:         }
127:         .navigationTitle("")
128:         .onChange(of: editMessage, initial: false) { _, newMessage in
129:             if let newMessage = newMessage {
130:                 message = newMessage.content
131:                 isFocusedInput = true
132:             }
133:         }
134:     }
135: }
136: 
137: #Preview {
138:     ChatView(
139:         selectedConversation: ConversationSD.sample[0],
140:         conversations: ConversationSD.sample,
141:         messages: MessageSD.sample,
142:         modelsList: LanguageModelSD.sample,
143:         onMenuTap: {},
144:         onNewConversationTap: { },
145:         onSendMessageTap: {_,_,_,_    in},
146:         onConversationTap: {_ in},
147:         conversationState: .completed,
148:         onStopGenerateTap: {},
149:         reachable: true,
150:         modelSupportsImages: true,
151:         selectedModel: LanguageModelSD.sample[0], onSelectModel: {_ in},
152:         onConversationDelete: {_ in},
153:         onDeleteDailyConversations: {_ in},
154:         userInitials: "AM",
155:         copyChat: {_ in}
156:     )
157: }
158: #endif
````

## File: Enchanted/UI/macOS/CompletionsEditor/CompletionsEditor.swift
````swift
 1: //
 2: //  Completions.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 01/03/2024.
 6: //
 7: 
 8: #if os(macOS)
 9: import SwiftUI
10: 
11: struct CompletionsEditor: View {
12:     @State private var completionsStore = CompletionsStore.shared
13:     @State private var accessibilityStatus = true
14:     @State private var timer: Timer?
15:     
16:     private func requestAccessibility() {
17:         Task {
18:             print("Requesting accessibility")
19:             await Accessibility.shared.showAccessibilityInstructionsWindow()
20:             Accessibility.shared.simulateCopyKeyPress()
21:         }
22:     }
23:     
24:     var body: some View {
25:         CompletionsEditorView(
26:             completions: $completionsStore.completions,
27:             onSave: completionsStore.save,
28:             onDelete: completionsStore.delete,
29:             accessibilityAccess: accessibilityStatus,
30:             requestAccessibilityAccess: requestAccessibility
31:         )
32:         .onAppear {
33:             timer = Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { _ in
34:                 withAnimation {
35:                     accessibilityStatus = Accessibility.shared.checkAccessibility()
36:                     print("accessibility", accessibilityStatus)
37:                 }
38:             }
39:         }
40:         .onDisappear {
41:             timer?.invalidate()
42:         }
43:     }
44: }
45: #endif
````

## File: Enchanted/UI/macOS/CompletionsEditor/CompletionsEditorView.swift
````swift
  1: //
  2: //  CompletionsEditorView.swift
  3: //  Enchanted
  4: //
  5: //  Created by Augustinas Malinauskas on 29/02/2024.
  6: //
  7: 
  8: #if os(macOS)
  9: import SwiftUI
 10: import KeyboardShortcuts
 11: 
 12: struct CompletionsEditorView: View {
 13:     @Environment(\.presentationMode) var presentationMode
 14:     @Binding var completions: [CompletionInstructionSD]
 15:     @State var selectedCompletion: CompletionInstructionSD?
 16:     var onSave: () -> ()
 17:     var onDelete: (CompletionInstructionSD) -> ()
 18:     var accessibilityAccess: Bool
 19:     var requestAccessibilityAccess: () -> ()
 20:     
 21:     private func close() {
 22:         presentationMode.wrappedValue.dismiss()
 23:     }
 24:     
 25:     private func newCompletion() {
 26:         let newCompletion = CompletionInstructionSD(
 27:             name: "New Completion",
 28:             keyboardCharacterStr: "x",
 29:             instruction: "",
 30:             order: completions.count,
 31:             modelTemperature: 0.8
 32:         )
 33:         withAnimation {
 34:             completions.append(newCompletion)
 35:             selectedCompletion = newCompletion
 36:         }
 37:     }
 38:     
 39:     private func discard(for completion: CompletionInstructionSD) {
 40:         selectedCompletion = nil
 41:         withAnimation {
 42:             completions = completions.filter{$0.id != completion.id}
 43:         }
 44:     }
 45:     
 46:     var body: some View {
 47:         VStack(alignment: .leading) {
 48:             HStack(alignment: .top) {
 49:                 Text("Completions")
 50:                     .font(.title)
 51:                     .fontWeight(.thin)
 52:                     .enchantify()
 53:                     .padding(.bottom, 30)
 54:                 
 55:                 Spacer()
 56:                 
 57:                 Button(action: close) {
 58:                     Text("Close")
 59:                 }
 60:                 .buttonStyle(GrowingButton())
 61:             }
 62:             
 63:             Text("Create your own dynamic prompts usable anywhere on your mac with keyboard shortcuts to speed up common tasks. You can reorder, delete and edit your completions.")
 64:                 .padding(.bottom, 10)
 65:                 .fixedSize(horizontal: false, vertical: true)
 66:             
 67:             HStack(alignment: .center) {
 68:                 KeyboardShortcuts.Recorder("Keyboard shortcut", name: .togglePanelMode)
 69:                 Spacer()
 70:                 Button(action: newCompletion) {
 71:                     Text("New Completion")
 72:                         .foregroundStyle(.blue)
 73:                 }
 74:                 .buttonStyle(GrowingButton())
 75:             }
 76:             .padding(.bottom, 10)
 77:             
 78:             List {
 79:                 ForEach($completions, editActions: .move) { $completion in
 80:                     HStack(alignment: .center) {
 81:                         CompletionButtonView(name: completion.name, keyboardCharacter: completion.keyboardCharacter, action: {})
 82:                         
 83:                         Spacer()
 84:                         
 85:                         Text(completion.instruction)
 86:                             .lineLimit(1)
 87:                             .frame(width: 500, alignment: .leading)
 88:                         
 89:                         Button(action: {
 90:                             selectedCompletion = completion
 91:                         }) {
 92:                             Image(systemName: "pencil")
 93:                         }
 94:                         .buttonStyle(GrowingButton())
 95:                         
 96:                         Button(action: {onDelete(completion)}) {
 97:                             Image(systemName: "xmark")
 98:                         }
 99:                         .buttonStyle(GrowingButton())
100:                     }
101:                 }
102:                 .onMove { source , destination in
103:                     completions.move(fromOffsets: source, toOffset: destination)
104:                     onSave()
105:                 }
106:             }
107:             .listStyle(PlainListStyle())
108:             
109:             HStack {
110:                 Text("Completions require Accessibility access to capture selected text outside Enchanted.")
111:                 
112:                 Spacer()
113:                 
114:                 Button(action: requestAccessibilityAccess) {
115:                     Text("Open Privacy Settings")
116:                 }
117:             }
118:             .padding()
119:             .overlay(
120:                     RoundedRectangle(cornerRadius: 5)
121:                         .stroke(.red, lineWidth: 1)
122:                 )
123:             .background(RoundedRectangle(cornerRadius: 5).fill(Color.red.opacity(0.05)))
124:             .showIf(!accessibilityAccess)
125:         }
126:         .padding()
127:         .frame(width: 800, height: 600)
128:         .sheet(item: $selectedCompletion) { selectedCompletion in
129:             UpsertCompletionView(completion: selectedCompletion, onSave: onSave)
130:                 .onDisappear {
131:                     if selectedCompletion.name == "New Completion" {
132:                         discard(for: selectedCompletion)
133:                     }
134:                 }
135:         }
136:     }
137: }
138: 
139: #Preview {
140:     CompletionsEditorView(completions: .constant(CompletionInstructionSD.samples), onSave: {}, onDelete: {_ in }, accessibilityAccess: false, requestAccessibilityAccess: {})
141: }
142: #endif
````

## File: Enchanted/UI/macOS/CompletionsEditor/UpsertCompletionView.swift
````swift
  1: //
  2: //  UpsertCompletionView.swift
  3: //  Enchanted
  4: //
  5: //  Created by Augustinas Malinauskas on 01/03/2024.
  6: //
  7: 
  8: #if os(macOS)
  9: import SwiftUI
 10: 
 11: struct UpsertCompletionView: View {
 12:     @Environment(\.presentationMode) var presentationMode
 13:     @State var name: String = "New Instruction"
 14:     @State var prompt: String = ""
 15:     @State var keyboardShortcutKey: String = "x"
 16:     @State var temperature: String = "0.8"
 17:     
 18:     var existingCompletion: CompletionInstructionSD?
 19:     var onSave: () -> ()
 20:     
 21:     init(completion: CompletionInstructionSD? = nil, onSave: @escaping () -> ()) {
 22:         self.existingCompletion = completion
 23:         self.onSave = onSave
 24:         
 25:         if let completion = completion {
 26:             _name = State(initialValue: completion.name)
 27:             _prompt = State(initialValue: completion.instruction)
 28:             _keyboardShortcutKey = State(initialValue: completion.keyboardCharacter.lowercased())
 29:             _temperature = State(initialValue: String(format: "%.2f", completion.modelTemperature ?? 0.8))
 30:         }
 31:     }
 32:     
 33:     private func save() {
 34:         existingCompletion?.name = name
 35:         existingCompletion?.instruction = prompt
 36:         existingCompletion?.keyboardCharacterStr = keyboardShortcutKey
 37:         existingCompletion?.modelTemperature = Float(temperature) ?? 0.8
 38:         onSave()
 39:         presentationMode.wrappedValue.dismiss()
 40:     }
 41:     @FocusState private var isFocused: Bool
 42:     var body: some View {
 43:         VStack {
 44:             HStack {
 45:                 Button(action: {
 46:                     presentationMode.wrappedValue.dismiss()
 47:                 }) {
 48:                     Text("Cancel")
 49:                         .foregroundStyle(.blue)
 50:                 }
 51:                 .buttonStyle(GrowingButton())
 52:                 
 53:                 Spacer()
 54:                 
 55:                 Button(action: save) {
 56:                     Text("Save")
 57:                         .foregroundStyle(.blue)
 58:                 }
 59:                 .buttonStyle(GrowingButton())
 60:             }
 61:             .padding(.bottom, 20)
 62:             
 63:             Form {
 64:                 TextField("Name", text: $name)
 65:                     .textFieldStyle(RoundedBorderTextFieldStyle())
 66:                 
 67:                 
 68:                 VStack(alignment: .trailing) {
 69:                     LabeledContent("Instruction Prompt") {
 70:                         TextEditor(text: $prompt)
 71:                             .scrollContentBackground(.hidden)
 72:                             .lineLimit(6)
 73:                             .frame(height: 80)
 74:                         
 75:                     }
 76:                     
 77:                     Text("Instruction Prompt gets appended before the selected text and together sent to the LLM.")
 78:                         .font(.caption)
 79:                         .foregroundColor(.gray)
 80:                 }
 81:                 
 82:                 VStack(alignment: .trailing) {
 83:                     TextField("Keyboard Shortcut Letter", text: $keyboardShortcutKey)
 84:                         .onChange(of: keyboardShortcutKey) { newValue in
 85:                             if newValue.count > 1 {
 86:                                 keyboardShortcutKey = String(newValue.prefix(1))
 87:                             }
 88:                         }
 89:                         .textFieldStyle(RoundedBorderTextFieldStyle())
 90:                     
 91:                     Text("Only single character keyboard shortcuts allowed.")
 92:                         .font(.caption)
 93:                         .foregroundColor(.gray)
 94:                 }
 95:                 
 96:                 TextField("Temperature", text: $temperature)
 97:                     .textFieldStyle(RoundedBorderTextFieldStyle())
 98:             }
 99:             .padding(.bottom, 20)
100:             
101:             CompletionButtonView(name: name, keyboardCharacter: keyboardShortcutKey.first ?? Character("x"), action: {})
102:         }
103:         .padding()
104:         .frame(maxWidth: 600)
105:     }
106: }
107: 
108: #Preview {
109:     UpsertCompletionView(completion: nil, onSave: {})
110: }
111: 
112: #endif
````

## File: Enchanted/UI/macOS/Components/CompletionButtonView.swift
````swift
 1: //
 2: //  CompletionButtonView.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 29/02/2024.
 6: //
 7: 
 8: import SwiftUI
 9: 
10: struct CompletionButtonView: View {
11:     var name: String
12:     var keyboardCharacter: Character
13:     var action: () -> ()
14:     
15:     var body: some View {
16:         Button(action: action) {
17:             HStack {
18:                 Text(keyboardCharacter.lowercased())
19:                     .textCase(.uppercase)
20:                     .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
21:                     .background(Color.gray.opacity(0.2))
22:                     .cornerRadius(5)
23:                     .font(.system(size: 10, weight: .medium, design: .default))
24:                 
25:                 Text(name)
26:                     .font(.system(size: 12))
27:             }
28:             .padding(.vertical, 4)
29:             .padding(.horizontal, 8)
30:             .foregroundStyle(.label)
31:             .background(RoundedRectangle(cornerRadius: 5).fill(.bgCustom))
32:         }
33:         .buttonStyle(GrowingButton())
34:     }
35: }
36: 
37: #Preview {
38:     CompletionButtonView(name: "Fix Grammar", keyboardCharacter: "f", action: {})
39: }
````

## File: Enchanted/UI/macOS/Components/CompletionPanelView.swift
````swift
  1: //
  2: //  PanelCompletionsView.swift
  3: //  Enchanted
  4: //
  5: //  Created by Augustinas Malinauskas on 29/02/2024.
  6: //
  7: 
  8: #if os(macOS)
  9: import SwiftUI
 10: import Magnet
 11: import WrappingHStack
 12: 
 13: enum CompletionsPromptMode {
 14:     case completionsInCurrentWindow
 15:     case completionsInApp
 16:     
 17:     var next: CompletionsPromptMode {
 18:         switch self {
 19:         case .completionsInApp:
 20:             return .completionsInCurrentWindow
 21:         case .completionsInCurrentWindow:
 22:             return .completionsInApp
 23:         }
 24:     }
 25: }
 26: 
 27: struct PanelCompletionsView: View {
 28:     var completions: [CompletionInstructionSD]
 29:     var completionInWindow: @MainActor (_ completion: CompletionInstructionSD, _ scheduledTyping: Bool) -> ()
 30:     var completionInApp: @MainActor (_ completion: CompletionInstructionSD) -> ()
 31:     @State var completionMode: CompletionsPromptMode = .completionsInApp
 32:     @State var selectedCompletion: CompletionInstructionSD? = nil
 33:     
 34:     @State var customCompletionInstruction: String = ""
 35:     @State var showCustomCompletionInstructionTextField = false
 36:     @FocusState var focusCustomCompletionsTectField: Bool
 37:     @Namespace var animation
 38:     
 39:     var filetedCompletions: [CompletionInstructionSD] {
 40:         if let selectedCompletion = selectedCompletion {
 41:             return [selectedCompletion]
 42:         }
 43:         return completions
 44:     }
 45:     
 46:     func changeCompletionMode() {
 47:         withAnimation {
 48:             completionMode = completionMode.next
 49:         }
 50:     }
 51:     
 52:     @MainActor
 53:     func submitCompletion(_ completion: CompletionInstructionSD) {
 54:         withAnimation {
 55:             selectedCompletion = completion
 56:             switch completionMode {
 57:             case .completionsInCurrentWindow:
 58:                 completionInWindow(completion, false)
 59:             case .completionsInApp:
 60:                 completionInApp(completion)
 61:             }
 62:         }
 63:     }
 64:     
 65:     var customCompletionButton: some View {
 66:         Button(action: {
 67:             withAnimation(.easeOut(duration: 0.15)) {
 68:                 showCustomCompletionInstructionTextField = true
 69:                 focusCustomCompletionsTectField = true
 70:             }
 71:         }) {
 72:             HStack {
 73:                 Text("TAB")
 74:                     .textCase(.uppercase)
 75:                     .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
 76:                     .background(Color.gray.opacity(0.2))
 77:                     .cornerRadius(5)
 78:                     .font(.system(size: 10, weight: .medium, design: .default))
 79:                 
 80:                 Text("Your Command")
 81:                     .enchantify()
 82:             }
 83:             .padding(.vertical, 4)
 84:             .padding(.horizontal, 8)
 85:             .foregroundStyle(.label)
 86:             .background(RoundedRectangle(cornerRadius: 5).fill(.bgCustom))
 87:             
 88:         }
 89:         .buttonStyle(GrowingButton())
 90:         .keyboardShortcut(.tab, modifiers: [])
 91:         .matchedGeometryEffect(id: "customCommand", in: animation)
 92:     }
 93:     
 94:     var customCompletionInstructionTextField: some View {
 95:         HStack {
 96:             Button(action: {
 97:                 withAnimation(.easeOut(duration: 0.15)) {
 98:                     showCustomCompletionInstructionTextField = false
 99:                 }
100:             }) {
101:                 Text("TAB")
102:                     .textCase(.uppercase)
103:                     .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
104:                     .background(Color.gray.opacity(0.2))
105:                     .cornerRadius(5)
106:                     .font(.system(size: 10, weight: .medium, design: .default))
107:             }
108:             .buttonStyle(GrowingButton())
109:             .keyboardShortcut(.tab, modifiers: [])
110:             
111:             TextField("Instruction", text: $customCompletionInstruction)
112:                 .textFieldStyle(.plain)
113:                 .focused($focusCustomCompletionsTectField)
114:                 .onSubmit {
115:                     let completion = CompletionInstructionSD(
116:                         name: "Custom Command",
117:                         keyboardCharacterStr: "",
118:                         instruction: customCompletionInstruction + "\n\n",
119:                         order: 0)
120:                     
121:                     DispatchQueue.main.async {
122:                         submitCompletion(completion)
123:                     }
124:                 }
125:         }
126:         .padding(.vertical, 4)
127:         .padding(.horizontal, 8)
128:         .foregroundStyle(.label)
129:         .background(RoundedRectangle(cornerRadius: 5).fill(.bgCustom))
130:         .matchedGeometryEffect(id: "customCommand", in: animation)
131:         .padding(.bottom, 10)
132:     }
133:     
134:     var body: some View {
135:         VStack(alignment: .leading) {
136:             HStack(spacing: 10) {
137:                 Image("logo-nobg")
138:                     .resizable()
139:                     .antialiased(true)
140:                     .scaledToFit()
141:                     .frame(width: 20)
142:                     .foregroundColor(.label)
143:                 
144:                 Text("Completions")
145:                     .font(.title2)
146:                     .fontWeight(.light)
147:                     .enchantify()
148:                 
149:                 Spacer()
150:                 
151:                 HStack(alignment: .firstTextBaseline) {
152:                     Text("Tap")
153:                     Image(systemName: "space")
154:                     Text("to begin")
155:                 }
156:                 .showIf(selectedCompletion != nil)
157:             }
158:             
159:             VStack(alignment: .leading, spacing: 8) {
160:                 WrappingHStack(alignment: .leading) {
161:                     ForEach(filetedCompletions) { completion in
162:                         CompletionButtonView(
163:                             name: completion.name,
164:                             keyboardCharacter: completion.keyboardCharacter,
165:                             action: {
166:                                 submitCompletion(completion)
167:                             }
168:                         )
169:                         .keyboardShortcut(KeyEquivalent(completion.keyboardCharacter), modifiers: [])
170:                     }
171:                     
172:                     customCompletionButton
173:                         .showIf(!showCustomCompletionInstructionTextField)
174:                 }
175:                 
176:                 if showCustomCompletionInstructionTextField {
177:                     customCompletionInstructionTextField
178:                 }
179:             }
180:             .padding(.bottom, 10)
181:             
182:             HStack(alignment: .center) {
183:                 switch completionMode {
184:                 case .completionsInApp:
185:                     Text("Respond in **App**.")
186:                 case .completionsInCurrentWindow:
187:                     Text("Respond in current **Window**.")
188:                 }
189:                 
190:                 Button(action: changeCompletionMode) {
191:                     HStack(spacing: 4) {
192:                         Text("⇧")
193:                             .font(.caption2)
194:                             .padding(.horizontal, 7)
195:                             .padding(.vertical, 2)
196:                             .background(RoundedRectangle(cornerRadius: 3).fill(.bgCustom))
197:                         
198:                         Text("+")
199:                             .font(.footnote)
200:                         
201:                         Text("SPACE")
202:                             .font(.caption2)
203:                             .padding(.horizontal, 7)
204:                             .padding(.vertical, 2)
205:                             .background(RoundedRectangle(cornerRadius: 3).fill(.bgCustom))
206:                     }
207:                         
208:                 }
209:                 .buttonStyle(GrowingButton())
210:                 
211:                 Text("to switch")
212:             }
213:             
214:             .padding(.horizontal, 8)
215:             .showIf(selectedCompletion == nil)
216:         }
217:         .padding()
218:         .background {
219:             RoundedRectangle(cornerRadius: 8).fill(.ultraThickMaterial)
220:         }
221:         .onKeyboardShortcut(key: .space, modifiers: [.shift]) {
222:             changeCompletionMode()
223:         }
224:         .frame(minWidth: 500, maxWidth: 500)
225:     }
226: }
227: 
228: #Preview {
229:     PanelCompletionsView(
230:         completions: CompletionInstructionSD.samples,
231:         completionInWindow: {_,_  in},
232:         completionInApp: {_ in}
233:     )
234: }
235: #endif
````

## File: Enchanted/UI/macOS/Components/DragAndDrop.swift
````swift
 1: //
 2: //  DragAndDrop.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 17/02/2024.
 6: //
 7: 
 8: import SwiftUI
 9: 
10: struct DragAndDrop: View {
11:     var cornerRadius: CGFloat = 15
12:     
13:     var body: some View {
14:         ZStack {
15:             Color.clear
16:             
17:             HStack(spacing: 8) {
18:                 Image(systemName: "photo")
19:                     .font(.system(size: 25))
20:                 Text("Drop your image here")
21:                     .font(.title2)
22:             }
23:             .foregroundColor(.label)
24:         }
25:         .overlay(
26:             RoundedRectangle(cornerRadius: cornerRadius)
27:                 .strokeBorder(style: StrokeStyle(lineWidth: 2, lineJoin: .round, dash: [10]))
28:                 .foregroundColor(.grayCustom)
29:         )
30:         .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
31:         .padding(5)
32:         .background {
33:             RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
34:                 .fill(.ultraThinMaterial)
35:         }
36:     }
37: }
38: 
39: #Preview {
40:     DragAndDrop()
41:         .frame(height: 100)
42: }
````

## File: Enchanted/UI/macOS/Components/PromptPanelView.swift
````swift
  1: //
  2: //  PromptPanelView.swift
  3: //  Enchanted
  4: //
  5: //  Created by Augustinas Malinauskas on 12/02/2024.
  6: //
  7: 
  8: #if os(macOS)
  9: import SwiftUI
 10: import Vortex
 11: 
 12: struct PromptPanelView: View {
 13:     @FocusState private var focused: Bool?
 14:     @State var prompt: String = ""
 15:     var onSubmit: @MainActor (_ prompt: String, _ image: Image?) -> ()
 16:     var onLayoutUpdate: () -> ()
 17:     var imageSupport: Bool
 18:     
 19:     @State private var fileDropActive: Bool = false
 20:     @State private var selectedImage: Image?
 21:     
 22:     var hotkeys: [HotkeyCombination] {
 23:         [
 24:             HotkeyCombination(keyBase: [.command], key: .kVK_ANSI_V) {
 25:                 if let nsImage = Clipboard.shared.getImage() {
 26:                     let image = Image(nsImage: nsImage)
 27:                     updateSelectedImage(image)
 28:                 }
 29:                 
 30:                 if let clipboardText = Clipboard.shared.getText() {
 31:                     prompt = clipboardText
 32:                 }
 33:             }
 34:         ]
 35:     }
 36:     
 37:     var imageSupportMissing: some View {
 38:         HStack {
 39:             Text("This model does not support images. Supported models are llava, bakllava and llama vision.")
 40:                 .font(.caption2)
 41:             Spacer()
 42:         }
 43:         .padding(.top)
 44:     }
 45:     
 46:     private func updateSelectedImage(_ image: Image) {
 47:         selectedImage = image
 48:     }
 49:     
 50:     var dynamicFont: Font {
 51:         if prompt.count <= 30 {
 52:             return .title
 53:         } else if prompt.count <= 100 {
 54:             return .title2
 55:         }
 56:         
 57:         return .body
 58:     }
 59:     
 60:     var inputField: some View {
 61:         HStack(spacing: 15) {
 62:             Image("logo-nobg")
 63:                 .resizable()
 64:                 .antialiased(true)
 65:                 .scaledToFit()
 66:                 .frame(width: 20)
 67:                 .foregroundColor(.label)
 68:             
 69:             TextField("How can I help today?", text: $prompt, axis: .vertical)
 70:                 .font(dynamicFont)
 71:                 .minimumScaleFactor(0.4)
 72:                 .focusEffectDisabled()
 73:                 .background(Color.clear)
 74:                 .focused($focused, equals: true)
 75:                 .textFieldStyle(.plain)
 76:                 .lineLimit(5, reservesSpace: false)
 77:                 .onSubmit {
 78:                     Task { @MainActor in
 79:                         if NSApp.currentEvent?.modifierFlags.contains(.shift) == true {
 80:                             prompt += "\n"
 81:                         } else {
 82:                             onSubmit(prompt, selectedImage)
 83:                         }
 84:                     }
 85:                 }
 86:             /// TextField bypasses drop area
 87:                 .allowsHitTesting(!fileDropActive)
 88:                 .layoutPriority(-1)
 89:         }
 90:     }
 91:     
 92:     var body: some View {
 93:         VStack(spacing: 0) {
 94:             ZStack(alignment: .top) {
 95:                 VortexView(.splash.makeUniqueCopy()) {
 96:                     Circle()
 97:                         .fill(.white)
 98:                         .frame(width: 20, height: 20)
 99:                         .tag("circle")
100:                 }
101:             }
102:             .frame(height: 50)
103:             .background(Color.clear)
104:             
105:             VStack(alignment: .leading) {
106:                 inputField
107:                     .layoutPriority(-1)
108:                 
109:                 DragAndDrop(cornerRadius: 10)
110:                     .frame(height: 150)
111:                     .layoutPriority(1)
112:                     .showIf(fileDropActive)
113:                 
114:                 if let image = selectedImage {
115:                     HStack {
116:                         RemovableImage(
117:                             image: image,
118:                             onClick: {selectedImage = nil},
119:                             height: 150
120:                         )
121:                         .layoutPriority(1)
122:                         .transition(.scale)
123:                         
124:                         Spacer()
125:                     }
126:                     .layoutPriority(1)
127:                     .padding()
128:                     .background {
129:                         RoundedRectangle(cornerRadius: 8, style: .continuous)
130:                             .fill(.thinMaterial)
131:                     }
132:                     .transition(.slide)
133:                     .showIf(!fileDropActive)
134:                 }
135:                 
136:                 imageSupportMissing
137:                     .showIf(!imageSupport && selectedImage != nil)
138:             }
139:             .padding(12)
140:             .background {
141:                 RoundedRectangle(cornerRadius: 8).fill(.ultraThickMaterial)
142:             }
143:         }
144:         .frame(minWidth: 500, maxWidth: 500)
145:         .onAppear {
146:             prompt = ""
147:             focused = true
148:         }
149:         .onDrop(of: [.image], isTargeted: $fileDropActive, perform: { providers in
150:             guard let provider = providers.first else { return false }
151:             
152:             _ = provider.loadDataRepresentation(for: .image) { data, error in
153:                 if error == nil, let data {
154:                     if let nsImage = NSImage(data: data) {
155:                         updateSelectedImage(Image(nsImage: nsImage))
156:                     }
157:                 }
158:             }
159:             
160:             return true
161:         })
162:         .addCustomHotkeys(hotkeys)
163:         .onChange(of: prompt) { _, _ in
164:             onLayoutUpdate()
165:         }
166:         .onChange(of: fileDropActive) { _, _ in
167:             onLayoutUpdate()
168:         }
169:         .onChange(of: selectedImage) { _, _ in
170:             onLayoutUpdate()
171:         }
172:     }
173: }
174: 
175: #Preview {
176:     PromptPanelView(onSubmit: {_,_  in}, onLayoutUpdate: {}, imageSupport: false)
177: }
178: 
179: #endif
````

## File: Enchanted/UI/macOS/MenuBar/MenuBarControl_macOS.swift
````swift
 1: //
 2: //  MenuBarControl_macOS.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 12/02/2024.
 6: //
 7: 
 8: #if os(macOS)
 9: import SwiftUI
10: 
11: struct MenuBarControl: View {
12:     @State private var appStore = AppStore.shared
13:     var body: some View {
14:         MenuBarControlView(notifications: appStore.notifications)
15:     }
16: }
17: #endif
````

## File: Enchanted/UI/macOS/MenuBar/MenuBarControlView_macOS.swift
````swift
 1: //
 2: //  MenuBarControlView.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 12/02/2024.
 6: //
 7: 
 8: #if os(macOS)
 9: import SwiftUI
10: 
11: struct MenuBarControlView: View {
12:     var notifications: [NotificationMessage]
13:     var body: some View {
14:         VStack {
15:             Grid(horizontalSpacing: 12, verticalSpacing: 12) {
16:                 GridRow {
17:                     HStack {
18:                         ControlView(icon: "checkmark.circle", title: "Ollama", subtitle: "Online")
19:                         ControlView(icon: "x.circle", title: "Enchanted", subtitle: "Online")
20:                     }
21:                     .padding(12)
22:                     .background {
23:                         RoundedRectangle(cornerRadius: 12, style: .continuous)
24:                             .fill(.ultraThinMaterial)
25:                     }
26:                 }
27:             }
28:             
29:             VStack(alignment: .leading) {
30:                 Text("Events")
31:                     .font(.title3)
32:                 
33:                 ForEach(notifications) { notification in
34:                     HStack {
35:                         Text(notification.message)
36:                             .lineLimit(1)
37:                         Spacer()
38:                     }
39:                     .padding(.horizontal, 10)
40:                     .padding(.vertical, 6)
41:                     .background(RoundedRectangle(cornerRadius: 6).fill(notification.status == .info ? Color.blue.opacity(0.2) : Color.red.opacity(0.2)))
42:                     .listRowSeparator(.hidden)
43:                 }
44:                 .listStyle(PlainListStyle())
45:                 .scrollContentBackground(.hidden)
46:             }
47:             .showIf(notifications.count > 0)
48:             .padding(.top, 10)
49:         }
50:         .padding()
51:     }
52:     
53:     @ViewBuilder
54:     func ControlView(icon: String, title: String, subtitle: String? = nil) -> some View {
55:         HStack(spacing: 5) {
56:             Image(systemName: icon)
57:                 .font(.largeTitle)
58:                 .symbolRenderingMode(.multicolor)
59:                 .foregroundStyle(.gray)
60:             
61:             VStack(alignment: .leading, spacing: 1) {
62:                 Text(title)
63:                     .font(.callout)
64:                     .foregroundStyle(.primary)
65:                 
66:                 if let subtitle = subtitle {
67:                     Text(subtitle)
68:                         .font(.caption2)
69:                         .foregroundStyle(Color.grayCustom)
70:                 }
71:             }
72:         }
73:         .frame(maxWidth: .infinity, alignment: .leading)
74:     }
75: }
76: 
77: extension MenuBarControlView {
78:     static let icon: Image = {
79:         let image: NSImage = {
80:             let ratio = $0.size.height / $0.size.width
81:             $0.size.height = 18
82:             $0.size.width = 18 / ratio
83:             return $0
84:         }(NSImage(named: "logo-nobg")!)
85:         
86:         return Image(nsImage: image)
87:     }()
88: }
89: 
90: #Preview {
91:     MenuBarControlView(notifications: NotificationMessage.sample)
92: }
93: #endif
````

## File: Enchanted/UI/macOS/PromptPanel/FloatingPanel.swift
````swift
 1: //
 2: //  PromptPanel.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 12/02/2024.
 6: //
 7: 
 8: import SwiftUI
 9: 
10: #if os(macOS)
11: class FloatingPanel: NSPanel {
12:     override func sendEvent(_ event: NSEvent) {
13:         super.sendEvent(event)
14:         
15:         // escape key closes the panel
16:         if event.type == .keyDown {
17:             if event.keyCode == 53 {
18:                 self.orderOut(nil)
19:             }
20:         }
21:     }
22:     
23:     init(contentRect: NSRect, backing: NSWindow.BackingStoreType, defer flag: Bool) {
24:         super.init(contentRect: contentRect, styleMask: [.nonactivatingPanel, .resizable, .closable, .fullSizeContentView], backing: backing, defer: flag)
25:         self.isFloatingPanel = true
26:         self.level = .floating
27:         self.collectionBehavior.insert(.fullScreenAuxiliary)
28:         self.titleVisibility = .hidden
29:         self.titlebarAppearsTransparent = true
30:         self.hasShadow = true
31:         self.contentView?.wantsLayer = true
32:         self.contentView?.layer?.masksToBounds = true
33:         self.isMovableByWindowBackground = true
34:         self.isReleasedWhenClosed = false
35:         //self.hidesOnDeactivate = true
36:         self.standardWindowButton(.closeButton)?.isHidden = true
37:         self.standardWindowButton(.miniaturizeButton)?.isHidden = true
38:         self.standardWindowButton(.zoomButton)?.isHidden = true
39:         self.styleMask.insert(.resizable)
40:     }
41:     
42:     // `canBecomeKey` and `canBecomeMain` are required so that text inputs inside the panel can receive focus
43:     override var canBecomeKey: Bool {
44:         print("canBecomeKey")
45:         return true
46:     }
47:     
48:     override var canBecomeMain: Bool {
49:         print("canBecomeMain")
50:         return true
51:     }
52: }
53: #endif
````

## File: Enchanted/UI/macOS/PromptPanel/PanelCompletionsVM.swift
````swift
 1: //
 2: //  PromptPanelVM.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 29/02/2024.
 6: //
 7: 
 8: import SwiftUI
 9: import OllamaKit
10: import Combine
11: 
12: @Observable
13: final class CompletionsPanelVM {
14:     var selectedText: String?
15:     var onReceiveText: (String) -> ()
16:     var messageResponse: String = ""
17:     var isReady = false
18:     let sentenceQueue = AsyncQueue<String>()
19:     private var generation: AnyCancellable?
20:     private var currentMessageBuffer: String = ""
21: 
22:     
23:     init(onReceiveText: @escaping (String) -> Void = {_ in}) {
24:         self.onReceiveText = onReceiveText
25:     }
26:     
27:     static func constructPrompt(completion: CompletionInstructionSD, selectedText: String) -> String {
28:         var prompt = completion.instruction
29:         
30:         if prompt.contains("{{text}}") {
31:             prompt.replace("{{text}}", with: selectedText)
32:         } else {
33:             prompt += " " + selectedText
34:         }
35:         
36:         return prompt
37:     }
38:     
39:     @MainActor
40:     func sendPrompt(completion: CompletionInstructionSD, model: LanguageModelSD)  {
41:         guard let selectedText = selectedText, !isReady else { return }
42:         let prompt = CompletionsPanelVM.constructPrompt(completion: completion, selectedText: selectedText)
43:         
44:         let messages: [OKChatRequestData.Message] = [
45:             .init(role: .user, content: prompt)
46:         ]
47:         var request = OKChatRequestData(model: model.name, messages: messages)
48:         request.options = OKCompletionOptions(temperature: completion.modelTemperature ?? 0.8)
49:         currentMessageBuffer = ""
50:         messageResponse = ""
51:         
52:         print("request", request.messages)
53:         Task {
54:             if await OllamaService.shared.ollamaKit.reachable() {
55:                 generation = OllamaService.shared.ollamaKit.chat(data: request)
56:                     .sink(receiveCompletion: { [weak self] completion in
57:                         switch completion {
58:                         case .finished:
59:                             self?.handleComplete()
60:                         case .failure(let error):
61:                             self?.handleError(error.localizedDescription)
62:                         }
63:                     }, receiveValue: { [weak self] response in
64:                         self?.handleReceive(response)
65:                     })
66:             } else {
67:                 self.handleError("Server unreachable")
68:             }
69:         }
70:     }
71:     
72:     @MainActor
73:     private func handleReceive(_ response: OKChatResponse)  {
74:         Task {
75:             if let responseContent = response.message?.content {
76:                 await sentenceQueue.enqueue(responseContent)
77:                 self.messageResponse = self.messageResponse + responseContent
78:             }
79:         }
80:     }
81:     
82:     @MainActor
83:     private func handleError(_ errorMessage: String) {
84:         print("error \(errorMessage)")
85:     }
86:     
87:     @MainActor
88:     private func handleComplete() {
89:         print("model response ", self.messageResponse)
90:     }
91:     
92:     @MainActor
93:     func cancel() {
94:         generation?.cancel()
95:     }
96: }
````

## File: Enchanted/UI/macOS/PromptPanel/PanelManager.swift
````swift
  1: //
  2: //  PanelManager.swift
  3: //  Enchanted
  4: //
  5: //  Created by Augustinas Malinauskas on 12/02/2024.
  6: //
  7: 
  8: #if os(macOS)
  9: import SwiftUI
 10: import Carbon
 11: import AsyncAlgorithms
 12: 
 13: final actor Printer {
 14:     func write(_ message: String) {
 15:         Clipboard.shared.setString(message)
 16:         usleep(50000)
 17:         Accessibility.simulatePasteCommand()
 18:     }
 19: }
 20: 
 21: class PanelManager: NSObject, NSApplicationDelegate {
 22:     var targetApplication: NSRunningApplication?
 23:     var lastPrintApplication: NSRunningApplication?
 24:     var panel: FloatingPanel!
 25:     var completionsPanelVM = CompletionsPanelVM()
 26:     @MainActor var allowPrinting = true
 27:     let printer = Printer()
 28:     
 29:     override init() {
 30:         super.init()
 31:         
 32:         Task {
 33:             await NSApp.setActivationPolicy(.regular)
 34:             await NSApp.activate(ignoringOtherApps: true)
 35:             await handleNewMessages()
 36:         }
 37:     }
 38:     
 39:     private func handleNewMessages() async {
 40:         let timer = AsyncTimerSequence(interval: .seconds(0.1), clock: .continuous)
 41:         for await _ in timer {
 42:             // If user focused different application stop writing
 43:             if lastPrintApplication != nil && lastPrintApplication?.localizedName != NSWorkspace.shared.runningApplications.first(where: {$0.isActive})?.localizedName {
 44:                 // dequeue all and stop execution
 45:                 await completionsPanelVM.cancel()
 46:                 _ = await completionsPanelVM.sentenceQueue.dequeueAll()
 47:                 lastPrintApplication = nil
 48:                 continue
 49:             }
 50:             
 51:             // hold printing until user action and ensuring that your driving experience
 52:             if await !allowPrinting {
 53:                 continue
 54:             }
 55:             
 56:             let sentencesToConsume = await completionsPanelVM.sentenceQueue.dequeueAll().joined()
 57:             
 58:             if sentencesToConsume.isEmpty {
 59:                 continue
 60:             }
 61:             
 62:             print("printing: \((sentencesToConsume)) \(Date())")
 63:             lastPrintApplication = NSWorkspace.shared.runningApplications.first{$0.isActive}
 64:             await printer.write(sentencesToConsume)
 65:         }
 66:     }
 67:     
 68:     
 69:     @MainActor
 70:     @objc func togglePanel() {
 71:         let accessibilityStatus = Accessibility.shared.checkAccessibility()
 72:         if !accessibilityStatus {
 73:             Accessibility.shared.showAccessibilityInstructionsWindow()
 74:         }
 75:         
 76:         targetApplication = NSWorkspace.shared.runningApplications.first{$0.isActive}
 77: 
 78:         Task {
 79:             completionsPanelVM.selectedText = Accessibility.shared.getSelectedText()
 80:             print("selected message", completionsPanelVM.selectedText as Any)
 81:             
 82:             if panel == nil || !panel.isVisible {
 83:                 showPanel()
 84:                 
 85:                 // subscribe to keybaord event to avoid beep
 86: //                HotkeyService.shared.registerSingleUseEscape(modifiers: []) { [weak self] in
 87: //                    self?.hidePanel()
 88: //                }
 89:                 
 90:                 return
 91:             }
 92:             
 93:             hidePanel()
 94:         }
 95:     }
 96:     
 97:     @MainActor
 98:     @objc func hidePanel() {
 99:         panel.orderOut(nil)
100:     }
101:     
102:     @MainActor
103:     @objc func showPanel() {
104:         createPanel()
105:         panel.makeKeyAndOrderFront(nil)
106:         NSApp.activate(ignoringOtherApps: true)
107:     }
108:     
109:     @MainActor
110:     @objc func onSubmitMessage() {
111:         allowPrinting = true
112:         hidePanel()
113:         
114:         /// Focus Enchanted
115:         if let app = NSRunningApplication.runningApplications(withBundleIdentifier: Bundle.main.bundleIdentifier!).first {
116:             app.activate(options: [.activateAllWindows])
117:             
118:             NSApp.windows.forEach { window in
119:                 if window.isMiniaturized {
120:                     window.deminiaturize(nil)
121:                 }
122:             }
123:         }
124:     }
125:     
126:     @MainActor
127:     @objc func onSubmitCompletion(scheduledTyping: Bool) {
128:         allowPrinting = true
129:         
130:         if scheduledTyping {
131:             self.allowPrinting = false
132:             HotkeyService.shared.registerSingleUseSpace(modifiers: []) { [weak self] in
133:                 self?.allowPrinting = true
134:                 self?.hidePanel()
135:             }
136:         } else {
137:             hidePanel()
138:         }
139:         targetApplication?.activate()
140:     }
141:     
142:     @MainActor
143:     func createPanel() {
144:         let contentView = PromptPanel(
145:             completionsPanelVM: completionsPanelVM,
146:             onSubmitPanel: onSubmitMessage,
147:             onSubmitCompletion: onSubmitCompletion,
148:             onLayoutUpdate: updatePanelSizeIfNeeded
149:         )
150:         let hostingView = NSHostingView(rootView: contentView)
151:         let idealSize = hostingView.fittingSize
152:         
153:         panel = FloatingPanel(
154:             contentRect: NSRect(x: 0, y: 0, width: idealSize.width, height: idealSize.height),
155:             backing: .buffered,
156:             defer: false
157:         )
158:         panel.contentView = hostingView
159:         panel.backgroundColor = .clear
160:         panel.center()
161:         panel.orderFront(nil)
162:     }
163:     
164:     @MainActor func updatePanelSizeIfNeeded() {
165:         guard let hostingView = panel.contentView as? NSHostingView<PromptPanel> else { return }
166:         
167:         DispatchQueue.main.async { [weak self] in
168:             guard let strongSelf = self else { return }
169:             let newSize = hostingView.fittingSize
170:             
171:             if newSize == .zero {
172:                 return
173:             }
174:             
175:             if strongSelf.panel.frame.size != newSize {
176:                 NSAnimationContext.runAnimationGroup({ context in
177:                     context.duration = 0.2
178:                     context.timingFunction = CAMediaTimingFunction(name: .easeOut)
179:                     
180:                     // Calculate the difference in height
181:                     let heightDifference = newSize.height - strongSelf.panel.frame.size.height
182:                     
183:                     // Adjust the y position to keep the bottom edge constant
184:                     let newY = strongSelf.panel.frame.origin.y - heightDifference
185:                     
186:                     strongSelf.panel.animator().setFrame(
187:                         NSRect(x: strongSelf.panel.frame.origin.x,
188:                                y: newY, // Use the new Y
189:                                width: newSize.width,
190:                                height: newSize.height),
191:                         display: true)
192:                 }, completionHandler: {
193:                     print("Animation completed")
194:                 })
195:             }
196:         }
197:     }
198: }
199: 
200: extension PanelManager {
201:     @MainActor func windowDidResignKey(_ notification: Notification) {
202:         if let panel = notification.object as? FloatingPanel, panel == self.panel {
203:             panel.close()
204:         }
205:     }
206: }
207: #endif
````

## File: Enchanted/UI/macOS/PromptPanel/PromptPanel.swift
````swift
 1: //
 2: //  PromptPanel.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 12/02/2024.
 6: //
 7: 
 8: #if os(macOS)
 9: import SwiftUI
10: 
11: struct PromptPanel: View {
12:     @AppStorage("colorScheme") private var colorScheme: AppColorScheme = .system
13:     @AppStorage("systemPrompt") private var systemPrompt: String = ""
14:     @State var conversationStore = ConversationStore.shared
15:     @State var languageModelStore = LanguageModelStore.shared
16:     @State var completionsStore = CompletionsStore.shared
17:     @State var appStore = AppStore.shared
18:     @State var completionsPanelVM: CompletionsPanelVM
19:     var onSubmitPanel: () -> ()
20:     var onSubmitCompletion: (_ scheduledTyping: Bool) -> ()
21:     var onLayoutUpdate: () -> ()
22:     
23:     @MainActor
24:     func sendMessage(prompt: String, image: Image?) {
25:         conversationStore.selectedConversation = nil
26:         conversationStore.sendPrompt(
27:             userPrompt: prompt,
28:             model: languageModelStore.selectedModel!,
29:             image: image,
30:             systemPrompt: systemPrompt
31:         )
32:         onSubmitPanel()
33:     }
34:     
35:     @MainActor
36:     func completionInWindow(_ completion: CompletionInstructionSD, scheduledTyping: Bool) {
37:         guard let selectedModel = languageModelStore.selectedModel else { return }
38:         completionsPanelVM.sendPrompt(completion: completion, model: selectedModel)
39:         onSubmitCompletion(scheduledTyping)
40:         appStore.uiLog(message: "In Window Completion - **\(completion.name)**", status: .info)
41:     }
42:     
43:     @MainActor
44:     func completionInApp(_ completion: CompletionInstructionSD) {
45:         guard languageModelStore.selectedModel != nil else { return }
46:         let prompt = CompletionsPanelVM.constructPrompt(completion: completion, selectedText: completionsPanelVM.selectedText ?? "")
47:         sendMessage(prompt: prompt, image: nil)
48:         appStore.uiLog(message: "In App Completion - **\(completion.name)**", status: .info)
49:     }
50:     
51:     var body: some View {
52:         Group {
53:             if let selectedText = completionsPanelVM.selectedText, !selectedText.isEmpty {
54:                 PanelCompletionsView(
55:                     completions: completionsStore.completions,
56:                     completionInWindow: completionInWindow,
57:                     completionInApp: completionInApp
58:                 )
59:             } else {
60:                 PromptPanelView(
61:                     onSubmit: sendMessage,
62:                     onLayoutUpdate: onLayoutUpdate,
63:                     imageSupport: languageModelStore.selectedModel?.supportsImages ?? false
64:                 )
65:             }
66:         }
67:         .edgesIgnoringSafeArea(.all)
68:     }
69: }
70: #endif
````

## File: Enchanted/UI/macOS/Menus.swift
````swift
 1: //
 2: //  Menus.swift
 3: //  Enchanted
 4: //
 5: //  Created by Wildan Zulfikar on 24.4.2024.
 6: //
 7: 
 8: import Foundation
 9: import SwiftUI
10: 
11: #if os(macOS)
12: struct ShowSettingsKey: FocusedValueKey {
13:     typealias Value = Binding<Bool>
14: }
15: 
16: extension FocusedValues {
17:     var showSettings: Binding<Bool>? {
18:         get { self[ShowSettingsKey.self] }
19:         set { self[ShowSettingsKey.self] = newValue }
20:     }
21: }
22: 
23: struct Menus: Commands {
24:    @FocusedValue(\.showSettings) var showSettings
25: 
26:    var body: some Commands {
27:        CommandGroup(replacing: .appSettings) {
28:            Button("Settings") {
29:                showSettings?.wrappedValue = true
30:            }
31:            .keyboardShortcut(",", modifiers: .command)
32:        }
33:   }
34: }
35: #endif
````

## File: Enchanted/UI/Shared/Chat/Components/ChatMessages/ChatMessageView.swift
````swift
  1: //
  2: //  ChatMessageView.swift
  3: //  Enchanted
  4: //
  5: //  Created by Augustinas Malinauskas on 09/12/2023.
  6: //
  7: 
  8: import SwiftUI
  9: import MarkdownUI
 10: import ActivityIndicatorView
 11: import Splash
 12: 
 13: struct ChatMessageView: View {
 14:     @Environment(\.colorScheme) var colorScheme
 15:     @StateObject private var speechSynthesizer = SpeechSynthesizer.shared
 16:     var message: MessageSD
 17:     var showLoader: Bool = false
 18:     var userInitials: String
 19:     @Binding var editMessage: MessageSD?
 20:     @State private var mouseHover = false
 21:     @State private var isSpeaking = false
 22:     @State private var showThink = false
 23:     
 24:     var roleName: String  {
 25:         let userInitialsNotEmpty = userInitials != "" ? userInitials : "AM"
 26:         return message.role == "user" ? userInitialsNotEmpty.uppercased() : "AI"
 27:     }
 28:     
 29:     var image: Image? {
 30:         message.image != nil ? Image(data: message.image!) : nil
 31:     }
 32:     
 33:     private var codeHighlightColorScheme: Splash.Theme {
 34:         switch colorScheme {
 35:         case .dark:
 36:             return .wwdc17(withFont: .init(size: 16))
 37:         default:
 38:             return .sunset(withFont: .init(size: 16))
 39:         }
 40:     }
 41:     
 42:     var body: some View {
 43:         VStack(alignment: .trailing, spacing: 0) {
 44:             HStack(alignment: .firstTextBaseline) {
 45:                 Group {
 46:                     if message.role == "user" {
 47:                         Spacer()
 48:                     } else {
 49:                         if showLoader {
 50:                             ActivityIndicatorView(isVisible: .constant(true), type: .rotatingDots(count: 5))
 51:                                 .frame(width: 24, height: 24)
 52:                                 .rotationEffect(.degrees(90))
 53:                         } else {
 54:                             Image("logo-nobg")
 55:                                 .resizable()
 56:                                 .scaledToFit()
 57:                                 .frame(width: 24, height: 24)
 58:                         }
 59:                     }
 60:                 }
 61:                 .offset(CGSize(width: 0, height: 6))
 62:                 
 63:                 VStack(alignment: .leading) {
 64:                     if message.hasThink {
 65:                         HStack(spacing: 10.0, content: {
 66:                             Rectangle()
 67:                                 .fill(Color.black)
 68:                                 .frame(width: 10)
 69:                             if showThink {
 70:                                 if let think = message.think {
 71:                                     Markdown(think)
 72: #if os(macOS)
 73:                                         .textSelection(.enabled)
 74: #endif
 75:                                         .markdownCodeSyntaxHighlighter(.splash(theme: codeHighlightColorScheme))
 76:                                         .markdownTheme(MarkdownColours.enchantedTheme)
 77:                                 }
 78:                             } else {
 79:                                 if message.thinkComplete {
 80:                                     Text("Thought for a few seconds.")
 81:                                 } else {
 82:                                     Text("Thinking...")
 83:                                 }
 84:                             }
 85:                         }).fixedSize(horizontal: false, vertical: true)
 86:                           .padding(.init(top: 0, leading: 0, bottom: 10, trailing: 0))
 87:                           .onTapGesture {
 88:                               showThink = !showThink
 89:                           }
 90:                     }
 91:                     if let content = message.realContent {
 92:                         Markdown(content)
 93:     #if os(macOS)
 94:                             .textSelection(.enabled)
 95:     #endif
 96:                             .markdownCodeSyntaxHighlighter(.splash(theme: codeHighlightColorScheme))
 97:                             .markdownTheme(MarkdownColours.enchantedTheme)
 98:                     }
 99:                     
100:                     if let uiImage = image {
101:                         uiImage
102:                             .resizable()
103:                             .scaledToFit()
104:                             .frame(width: 100)
105:                             .clipShape(RoundedRectangle(cornerRadius: 5))
106:                         
107:                     }
108:                 }
109:                 .if(message.role == "user", transform: { v in
110:                     v.padding()
111:                         .background(RoundedRectangle(cornerRadius: 25).fill(.regularMaterial))
112:                 })
113:                 
114:                 if message.role != "user" {
115:                     Spacer()
116:                 }
117:             }
118: #if os(macOS)
119:             HStack(spacing: 0) {
120:                 /// Copy button
121:                 Button(action: {Clipboard.shared.setString(message.content)}) {
122:                     Image(systemName: "doc.on.doc")
123:                         .padding(8)
124:                 }
125:                 .buttonStyle(GrowingButton())
126:                 .clipShape(RoundedRectangle(cornerRadius: 10))
127:                 
128:                 /// Play button
129:                 Button(action: {
130:                     Task {
131:                         await speechSynthesizer.stopSpeaking()
132:                         await speechSynthesizer.speak(text: message.content, onFinished: { isSpeaking = false })
133:                         DispatchQueue.main.asyncAfter(deadline: .now()+0.1) {
134:                             isSpeaking = true
135:                         }
136:                     }
137:                 }) {
138:                     Image(systemName: "speaker.wave.2.fill")
139:                         .frame(width: 10)
140:                         .padding(8)
141:                 }
142:                 .buttonStyle(GrowingButton())
143:                 .clipShape(RoundedRectangle(cornerRadius: 10))
144:                 .showIf(!isSpeaking)
145:                 
146:                 /// Stop button
147:                 Button(action: {
148:                     Task {
149:                         isSpeaking = false
150:                         await speechSynthesizer.stopSpeaking()
151:                     }
152:                 }) {
153:                     Image(systemName: "speaker.slash.fill")
154:                         .frame(width: 10)
155:                         .padding(8)
156:                 }
157:                 .buttonStyle(GrowingButton())
158:                 .clipShape(RoundedRectangle(cornerRadius: 10))
159:                 .showIf(isSpeaking)
160:                 
161:                 /// Edit button
162:                 Button(action: {editMessage = message}) {
163:                     Image(systemName: "pencil")
164:                         .padding(8)
165:                 }
166:                 .buttonStyle(GrowingButton())
167:                 .clipShape(RoundedRectangle(cornerRadius: 10))
168:                 .showIf(message.role == "user")
169:             }
170:             .opacity(mouseHover ? 1 : 0.0001)
171:             
172: #endif
173:         }
174: #if os(macOS)
175:         .onHover { over in
176:             withAnimation(.easeInOut(duration: 0.3)) {
177:                 mouseHover = over
178:             }
179:         }
180: #endif
181:     }
182: }
183: 
184: #Preview {
185:     VStack {
186:         ChatMessageView(message: MessageSD.sample[0], userInitials: "AM", editMessage: .constant(nil))
187:             .previewLayout(.sizeThatFits)
188:         
189:         ChatMessageView(message: MessageSD.sample[1], userInitials: "AM", editMessage: .constant(nil))
190:             .previewLayout(.sizeThatFits)
191:         
192:         ChatMessageView(message: MessageSD(content: "```python \nprint(5+5)\n```", role: "ai"), showLoader: true, userInitials: "AM", editMessage: .constant(nil))
193:             .previewLayout(.sizeThatFits)
194:     }
195: }
````

## File: Enchanted/UI/Shared/Chat/Components/ChatMessages/CodeBlockView.swift
````swift
 1: //
 2: //  CodeBlockView.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 13/05/2024.
 6: //
 7: 
 8: import SwiftUI
 9: import MarkdownUI
10: 
11: struct CodeBlockView: View {
12:     var configuration: CodeBlockConfiguration
13:     var language: String {
14:         let language = configuration.language ?? "code"
15:         return language != "" ? language : "code"
16:     }
17:     
18:     var body: some View {
19:         VStack(spacing: 0) {
20:             HStack {
21:                 Text(language)
22:                     .font(.system(size: 13, design: .monospaced))
23:                     .fontWeight(.semibold)
24:                 Spacer()
25:                 
26:                 Button(action: {
27:                     Clipboard.shared.setString(configuration.content)
28:                 }) {
29:                     Image(systemName: "doc.on.doc")
30:                         .padding(7)
31:                 }
32:                 .buttonStyle(GrowingButton())
33:             }
34:             .padding(.horizontal)
35:             .padding(.vertical, 4)
36:             .background(MarkdownColours.secondaryBackground)
37:             
38:             Divider()
39:             
40:             ScrollView(.horizontal) {
41:                 configuration.label
42:                     .fixedSize(horizontal: false, vertical: true)
43:                     .relativeLineSpacing(.em(0.225))
44:                     .markdownTextStyle {
45:                         FontFamilyVariant(.monospaced)
46:                         FontSize(.em(0.85))
47:                     }
48:                     .padding(16)
49:             }
50:         }
51:         .background(MarkdownColours.secondaryBackground)
52:         .clipShape(RoundedRectangle(cornerRadius: 8))
53:         .markdownMargin(top: .zero, bottom: .em(0.8))
54:     }
55: }
````

## File: Enchanted/UI/Shared/Chat/Components/ChatMessages/MarkdownColours.swift
````swift
  1: //
  2: //  MarkdownColours.swift
  3: //  Enchanted
  4: //
  5: //  Created by Augustinas Malinauskas on 13/05/2024.
  6: //
  7: 
  8: import SwiftUI
  9: import MarkdownUI
 10: 
 11: struct MarkdownColours {
 12:     static let text = Color(
 13:         light: Color(rgba: 0x0606_06ff), dark: Color(rgba: 0xfbfb_fcff)
 14:     )
 15:     static let secondaryText = Color(
 16:         light: Color(rgba: 0x6b6e_7bff), dark: Color(rgba: 0x9294_a0ff)
 17:     )
 18:     static let tertiaryText = Color(
 19:         light: Color(rgba: 0x6b6e_7bff), dark: Color(rgba: 0x6d70_7dff)
 20:     )
 21:     static let background = Color(
 22:         light: .white, dark: Color(rgba: 0x1819_1dff)
 23:     )
 24:     static let secondaryBackground = Color(
 25:         light: Color(rgba: 0xf7f7_f9ff), dark: Color(rgba: 0x2526_2aff)
 26:     )
 27:     static let link = Color(
 28:         light: Color(rgba: 0x2c65_cfff), dark: Color(rgba: 0x4c8e_f8ff)
 29:     )
 30:     static let border = Color(
 31:         light: Color(rgba: 0xe4e4_e8ff), dark: Color(rgba: 0x4244_4eff)
 32:     )
 33:     static let divider = Color(
 34:         light: Color(rgba: 0xd0d0_d3ff), dark: Color(rgba: 0x3334_38ff)
 35:     )
 36:     static let checkbox = Color(rgba: 0xb9b9_bbff)
 37:     static let checkboxBackground = Color(rgba: 0xeeee_efff)
 38:     
 39:     static let enchantedTheme = Theme()
 40:         .text {
 41:             FontSize(14)
 42:         }
 43:         .code {
 44:             FontFamilyVariant(.monospaced)
 45:             FontSize(.em(0.85))
 46:             BackgroundColor(secondaryBackground)
 47:         }
 48:         .strong {
 49:             FontWeight(.semibold)
 50:         }
 51:         .link {
 52:             ForegroundColor(link)
 53:         }
 54:         .heading1 { configuration in
 55:             VStack(alignment: .leading, spacing: 0) {
 56:                 configuration.label
 57:                     .relativePadding(.bottom, length: .em(0.3))
 58:                     .relativeLineSpacing(.em(0.125))
 59:                     .markdownMargin(top: 24, bottom: 16)
 60:                     .markdownTextStyle {
 61:                         FontWeight(.semibold)
 62:                         FontSize(.em(2))
 63:                     }
 64:                 Divider().overlay(divider)
 65:             }
 66:         }
 67:         .heading2 { configuration in
 68:             VStack(alignment: .leading, spacing: 0) {
 69:                 configuration.label
 70:                     .relativePadding(.bottom, length: .em(0.3))
 71:                     .relativeLineSpacing(.em(0.125))
 72:                     .markdownMargin(top: 24, bottom: 16)
 73:                     .markdownTextStyle {
 74:                         FontWeight(.semibold)
 75:                         FontSize(.em(1.5))
 76:                     }
 77:                 Divider().overlay(divider)
 78:             }
 79:         }
 80:         .heading3 { configuration in
 81:             configuration.label
 82:                 .relativeLineSpacing(.em(0.125))
 83:                 .markdownMargin(top: 24, bottom: 16)
 84:                 .markdownTextStyle {
 85:                     FontWeight(.semibold)
 86:                     FontSize(.em(1.25))
 87:                 }
 88:         }
 89:         .heading4 { configuration in
 90:             configuration.label
 91:                 .relativeLineSpacing(.em(0.125))
 92:                 .markdownMargin(top: 24, bottom: 16)
 93:                 .markdownTextStyle {
 94:                     FontWeight(.semibold)
 95:                 }
 96:         }
 97:         .heading5 { configuration in
 98:             configuration.label
 99:                 .relativeLineSpacing(.em(0.125))
100:                 .markdownMargin(top: 24, bottom: 16)
101:                 .markdownTextStyle {
102:                     FontWeight(.semibold)
103:                     FontSize(.em(0.875))
104:                 }
105:         }
106:         .heading6 { configuration in
107:             configuration.label
108:                 .relativeLineSpacing(.em(0.125))
109:                 .markdownMargin(top: 24, bottom: 16)
110:                 .markdownTextStyle {
111:                     FontWeight(.semibold)
112:                     FontSize(.em(0.85))
113:                     ForegroundColor(tertiaryText)
114:                 }
115:         }
116:         .paragraph { configuration in
117:             configuration.label
118:                 .fixedSize(horizontal: false, vertical: true)
119:                 .relativeLineSpacing(.em(0.25))
120:                 .markdownMargin(top: 0, bottom: 16)
121:         }
122:         .blockquote { configuration in
123:             HStack(spacing: 0) {
124:                 RoundedRectangle(cornerRadius: 6)
125:                     .fill(border)
126:                     .relativeFrame(width: .em(0.2))
127:                 configuration.label
128:                     .markdownTextStyle { ForegroundColor(secondaryText) }
129:                     .relativePadding(.horizontal, length: .em(1))
130:             }
131:             .fixedSize(horizontal: false, vertical: true)
132:         }
133:         .codeBlock { configuration in
134:             CodeBlockView(configuration: configuration)
135:         }
136:         .listItem { configuration in
137:             configuration.label
138:                 .padding(.bottom, 10)
139:         }
140:         .taskListMarker { configuration in
141:             Image(systemName: configuration.isCompleted ? "checkmark.square.fill" : "square")
142:                 .symbolRenderingMode(.hierarchical)
143:                 .foregroundStyle(checkbox, checkboxBackground)
144:                 .imageScale(.small)
145:                 .relativeFrame(minWidth: .em(1.5), alignment: .trailing)
146:         }
147:         .table { configuration in
148:             configuration.label
149:                 .fixedSize(horizontal: false, vertical: true)
150:                 .markdownTableBorderStyle(.init(color: border))
151:                 .markdownTableBackgroundStyle(
152:                     .alternatingRows(background, secondaryBackground)
153:                 )
154:                 .markdownMargin(top: 0, bottom: 16)
155:         }
156:         .tableCell { configuration in
157:             configuration.label
158:                 .markdownTextStyle {
159:                     if configuration.row == 0 {
160:                         FontWeight(.semibold)
161:                     }
162:                     BackgroundColor(nil)
163:                 }
164:                 .fixedSize(horizontal: false, vertical: true)
165:                 .padding(.vertical, 6)
166:                 .padding(.horizontal, 13)
167:                 .relativeLineSpacing(.em(0.25))
168:         }
169:         .thematicBreak {
170:             Divider()
171:                 .relativeFrame(height: .em(0.25))
172:                 .overlay(border)
173:                 .markdownMargin(top: 24, bottom: 24)
174:         }
175: }
````

## File: Enchanted/UI/Shared/Chat/Components/Recorder/RecordingView.swift
````swift
 1: //
 2: //  SwiftUIView.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 18/12/2023.
 6: //
 7: 
 8: import SwiftUI
 9: import AVFoundation
10: 
11: struct RecordingView: View {
12:     @StateObject var speechRecognizer: SpeechRecognizer = SpeechRecognizer()
13:     @Binding var isRecording: Bool
14:     var onComplete: (_ transcription: String) -> () = {_ in}
15:     
16:     private func toggleRecord() {
17:         Task {
18:             await speechRecognizer.userInit()
19:             await toggleTranscribing()
20:         }
21:         Haptics.shared.mediumTap()
22:     }
23:     
24:     private func toggleTranscribing() async {
25:         if isRecording {
26:             speechRecognizer.stopTranscribing()
27:             onComplete(speechRecognizer.transcript)
28:             isRecording = false
29:         } else {
30:             speechRecognizer.resetTranscript()
31:             speechRecognizer.startTranscribing(onUpdate: onComplete)
32:             isRecording = true
33:         }
34:     }
35:     
36:     var body: some View {
37:         Button(action: toggleRecord) {
38:             if isRecording {
39:                 ZStack {
40:                     Color(.systemBlue)
41:                     
42:                     Image(systemName: "square.fill")
43:                         .resizable()
44:                         .scaledToFit()
45:                         .foregroundColor(.white)
46:                         .frame(width: 8)
47:                 }
48:                 .clipShape(Circle())
49:                 .frame(width: 20, height: 20)
50:             } else {
51:                 Image(systemName: "waveform")
52:                     .resizable()
53:                     .scaledToFit()
54:                     .frame(height: 20)
55:                     .foregroundStyle(Color(.systemGray))
56:             }
57:         }
58:         .buttonStyle(PlainButtonStyle())
59:         .onChange(of: isRecording) { oldValue, newValue in
60:             if newValue == false {
61:                 speechRecognizer.stopTranscribing()
62:             }
63:         }
64:     }
65: }
66: 
67: 
68: struct MeetingView_Previews: PreviewProvider {
69:     static var previews: some View {
70:         RecordingView(speechRecognizer: SpeechRecognizer(), isRecording: .constant(true))
71:     }
72: }
````

## File: Enchanted/UI/Shared/Chat/Components/Recorder/SpeechRecogniser.swift
````swift
  1: //
  2: //  SpeechRecogniser.swift
  3: //  Enchanted
  4: //
  5: //  Created by Augustinas Malinauskas on 21/12/2023.
  6: //
  7: 
  8: //#if os(iOS)
  9: import Foundation
 10: import Speech
 11: 
 12: actor SpeechRecognizer: ObservableObject {
 13:     enum RecognizerError: Error {
 14:         case nilRecognizer
 15:         case notAuthorizedToRecognize
 16:         case notPermittedToRecord
 17:         case recognizerIsUnavailable
 18:         
 19:         var message: String {
 20:             switch self {
 21:             case .nilRecognizer: return "Can't initialize speech recognizer"
 22:             case .notAuthorizedToRecognize: return "Not authorized to recognize speech"
 23:             case .notPermittedToRecord: return "Not permitted to record audio"
 24:             case .recognizerIsUnavailable: return "Recognizer is unavailable"
 25:             }
 26:         }
 27:     }
 28:     
 29:     @MainActor var transcript: String = ""
 30:     
 31:     private var audioEngine: AVAudioEngine?
 32:     private var request: SFSpeechAudioBufferRecognitionRequest?
 33:     private var task: SFSpeechRecognitionTask?
 34:     var recognizer: SFSpeechRecognizer?
 35:     private var onUpdate: ((String) -> ())?
 36:     
 37:     /**
 38:      Initializes a new speech recognizer. If this is the first time you've used the class, it
 39:      requests access to the speech recognizer and the microphone.
 40:      */
 41:     func userInit() {
 42:         if recognizer != nil {
 43:             return
 44:         }
 45:         
 46:         recognizer = SFSpeechRecognizer()
 47:         guard recognizer != nil else {
 48:             transcribe(RecognizerError.nilRecognizer)
 49:             return
 50:         }
 51:         
 52:         Task {
 53:             do {
 54:                 
 55:             
 56:                 let authStatus = SFSpeechRecognizer.authorizationStatus()
 57:                 
 58:                 switch authStatus {
 59:                 case .authorized:
 60:                    print("authorised")
 61:                 case .denied, .restricted, .notDetermined:
 62:                     print("denicd")
 63:                 @unknown default:
 64:                     print("wtf")
 65:                     break
 66:                 }
 67:                 
 68:                 guard await SFSpeechRecognizer.hasAuthorizationToRecognize() else {
 69:                     throw RecognizerError.notAuthorizedToRecognize
 70:                 }
 71: #if os(iOS)
 72:                 guard await AVAudioSession.sharedInstance().hasPermissionToRecord() else {
 73:                     throw RecognizerError.notPermittedToRecord
 74:                 }
 75: #endif
 76:             } catch {
 77:                 transcribe(error)
 78:             }
 79:         }
 80:     }
 81:     
 82:     private func setUpdateHandler(_ handler: @escaping (_ message: String) -> ()) {
 83:         onUpdate = handler
 84:     }
 85:     
 86:     @MainActor func startTranscribing(onUpdate: @escaping (_ message: String) -> ()) {
 87:         Task {
 88:             await self.setUpdateHandler(onUpdate)
 89:             await transcribe()
 90:         }
 91:     }
 92:     
 93:     @MainActor func resetTranscript() {
 94:         Task {
 95:             await reset()
 96:         }
 97:     }
 98:     
 99:     @MainActor func stopTranscribing() {
100:         Task {
101:             await reset()
102:         }
103:     }
104:     
105:     /**
106:      Begin transcribing audio.
107:      
108:      Creates a `SFSpeechRecognitionTask` that transcribes speech to text until you call `stopTranscribing()`.
109:      The resulting transcription is continuously written to the published `transcript` property.
110:      */
111:     private func transcribe() {
112:         guard let recognizer, recognizer.isAvailable else {
113:             self.transcribe(RecognizerError.recognizerIsUnavailable)
114:             return
115:         }
116:         
117:         do {
118:             let (audioEngine, request) = try Self.prepareEngine()
119:             self.audioEngine = audioEngine
120:             self.request = request
121:             self.task = recognizer.recognitionTask(with: request, resultHandler: { [weak self] result, error in
122:                 self?.recognitionHandler(audioEngine: audioEngine, result: result, error: error)
123:             })
124:         } catch {
125:             print("error here")
126:             self.reset()
127:             self.transcribe(error)
128:         }
129:     }
130:     
131:     /// Reset the speech recognizer.
132:     private func reset() {
133:         task?.cancel()
134:         audioEngine?.stop()
135:         audioEngine = nil
136:         request = nil
137:         task = nil
138:     }
139:     
140:     private static func prepareEngine() throws -> (AVAudioEngine, SFSpeechAudioBufferRecognitionRequest) {
141:         let audioEngine = AVAudioEngine()
142:         
143:         let request = SFSpeechAudioBufferRecognitionRequest()
144:         request.shouldReportPartialResults = true
145:         
146: #if os(iOS) || os(visionOS)
147:         let audioSession = AVAudioSession.sharedInstance()
148:         try audioSession.setCategory(.playAndRecord, mode: .measurement, options: .duckOthers)
149:         try audioSession.setActive(true, options: .notifyOthersOnDeactivation)
150: #endif
151:         let inputNode = audioEngine.inputNode
152:         
153:         let recordingFormat = inputNode.outputFormat(forBus: 0)
154:         inputNode.installTap(onBus: 0, bufferSize: 1024, format: recordingFormat) { (buffer: AVAudioPCMBuffer, when: AVAudioTime) in
155:             request.append(buffer)
156:         }
157:         audioEngine.prepare()
158:         try audioEngine.start()
159:         
160:         return (audioEngine, request)
161:     }
162:     
163:     nonisolated private func recognitionHandler(audioEngine: AVAudioEngine, result: SFSpeechRecognitionResult?, error: Error?) {
164:         let receivedFinalResult = result?.isFinal ?? false
165:         let receivedError = error != nil
166:         
167:         if receivedFinalResult || receivedError {
168:             audioEngine.stop()
169:             audioEngine.inputNode.removeTap(onBus: 0)
170:         }
171:         
172:         if let result {
173:             transcribe(result.bestTranscription.formattedString)
174:         }
175:     }
176:     
177:     
178:     nonisolated private func transcribe(_ message: String) {
179:         Task { @MainActor in
180:             transcript = message
181:             if !message.isEmpty {
182:                 await onUpdate?(message)
183:             }
184:         }
185:     }
186:     nonisolated private func transcribe(_ error: Error) {
187:         var errorMessage = ""
188:         if let error = error as? RecognizerError {
189:             errorMessage += error.message
190:         } else {
191:             errorMessage += error.localizedDescription
192:         }
193:         Task { @MainActor [errorMessage] in
194:             transcript = "<< \(errorMessage) >>"
195:         }
196:     }
197: }
198: 
199: 
200: extension SFSpeechRecognizer {
201:     static func hasAuthorizationToRecognize() async -> Bool {
202:         await withCheckedContinuation { continuation in
203:             requestAuthorization { status in
204:                 continuation.resume(returning: status == .authorized)
205:             }
206:         }
207:     }
208: }
209: 
210: 
211: #if os(iOS)
212: extension AVAudioSession {
213:     func hasPermissionToRecord() async -> Bool {
214:         await withCheckedContinuation { continuation in
215:             requestRecordPermission { authorized in
216:                 continuation.resume(returning: authorized)
217:             }
218:         }
219:     }
220: }
221: #endif
222: //#endif
````

## File: Enchanted/UI/Shared/Chat/Components/ConversationStatusView.swift
````swift
 1: //
 2: //  ConversationStatusView.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 10/12/2023.
 6: //
 7: 
 8: import SwiftUI
 9: import ActivityIndicatorView
10: 
11: struct ConversationStatusView: View {
12:     var state: ConversationState
13:     var body: some View {
14:         switch state {
15:         case .loading: EmptyView()
16:         case .completed: EmptyView()
17:         case .error(let message): HStack {
18:             Text(message)
19:                 .foregroundColor(.red)
20:                 .font(.system(size: 16))
21:             Spacer()
22:         }
23:         }
24:         
25:     }
26: }
27: 
28: #Preview {
29:     Group {
30:         ConversationStatusView(state: .loading)
31:         ConversationStatusView(state: .completed)
32:         ConversationStatusView(state: .error(message: "Could not connect"))
33:     }.previewLayout(.sizeThatFits)
34: }
````

## File: Enchanted/UI/Shared/Chat/Components/EmptyConversaitonView.swift
````swift
  1: //
  2: //  EmptyConversaitonView.swift
  3: //  Enchanted
  4: //
  5: //  Created by Augustinas Malinauskas on 10/02/2024.
  6: //
  7: 
  8: import SwiftUI
  9: 
 10: struct EmptyConversaitonView: View, KeyboardReadable {
 11:     @Environment(\.openURL) private var openURL
 12:     @State var showPromptsAnimation = false
 13:     @State var prompts: [SamplePrompts] = []
 14:     var sendPrompt: (String) -> ()
 15:     @State private var isHovering = false
 16: #if os(iOS)
 17:     @State var isKeyboardVisible = false
 18: #endif
 19:     
 20: #if os(macOS)
 21:     var columns = Array.init(repeating: GridItem(.flexible(), spacing: 15), count: 4)
 22: #else
 23:     var columns = [GridItem(.flexible()), GridItem(.flexible())]
 24: #endif
 25:     @State var visibleItems = Set<Int>()
 26:     
 27:     func onFreysaTap() {
 28:         if let url = URL(string: "https://freysa.ai") {
 29:             openURL(url)
 30:         }
 31:     }
 32:     
 33:     var body: some View {
 34:         VStack {
 35:             Spacer()
 36:             
 37:             VStack(spacing: 25) {
 38:                 VStack(alignment: .center) {
 39:                     Text("Enchanted")
 40:                         .font(Font.system(size: 46, weight: .thin))
 41:                         .multilineTextAlignment(.center)
 42:                         .foregroundStyle(
 43:                             LinearGradient(
 44:                                 colors: [Color(hex: "4285f4"), Color(hex: "9b72cb"), Color(hex: "d96570"), Color(hex: "#d96570")],
 45:                                 startPoint: .leading,
 46:                                 endPoint: .trailing
 47:                             )
 48:                         )
 49:                     
 50: //                    Button(action: onFreysaTap) {
 51: //                        Text("by FREYSA")
 52: //                            .font(.system(size: isHovering ? 19 : 17, weight: .light))
 53: //                            .scaleEffect(isHovering ? 1.05 : 1.0)
 54: //                            .opacity(isHovering ? 0.8 : 1.0)
 55: //                            .animation(.spring(response: 0.3, dampingFraction: 0.7), value: isHovering)
 56: //
 57: //                    }
 58: //                    .buttonStyle(.plain)
 59: //                    .onHover { hovering in
 60: //                                isHovering = hovering
 61: //                            }
 62:                 }
 63:                 
 64:                 LazyVGrid(columns: columns, alignment: .leading, spacing: 15) {
 65:                     ForEach(0..<prompts.prefix(4).count, id: \.self) { index in
 66:                         Button(action: {
 67:                             withAnimation {
 68:                                 sendPrompt(prompts[index].prompt)
 69:                             }
 70:                         }) {
 71:                             VStack(alignment: .leading) {
 72:                                 Text(prompts[index].prompt)
 73:                                     .font(.system(size: 15))
 74:                                 Spacer()
 75:                                 
 76:                                 HStack {
 77:                                     Spacer()
 78:                                     Image(systemName: prompts[index].type.icon)
 79:                                 }
 80:                             }
 81:                             .frame(maxWidth: .infinity)
 82:                             .padding(15)
 83:                             .background(Color.gray5Custom)
 84:                             .clipShape(RoundedRectangle(cornerRadius: 10))
 85:                             
 86:                         }
 87:                         .opacity(visibleItems.contains(index) ? 1 : 0)
 88:                         .animation(.easeIn(duration: 0.3).delay(0.2 * Double(index)), value: visibleItems)
 89:                         .transition(.slide)
 90:                         .showIf(showPromptsAnimation)
 91:                         .buttonStyle(.plain)
 92:                     }
 93:                 }
 94:                 .onAppear {
 95:                     for index in 0..<4 {
 96:                         DispatchQueue.main.async {
 97:                             visibleItems.insert(index)
 98:                         }
 99:                     }
100:                 }
101:                 .frame(maxWidth: 700)
102:                 .padding()
103:                 .transition(AnyTransition(.opacity).combined(with: .slide))
104: #if os(iOS)
105:                 .showIf(!isKeyboardVisible)
106: #endif
107:             }
108:             Spacer()
109:         }
110:         .onAppear {
111:             DispatchQueue.main.async {
112:                 withAnimation {
113:                     prompts = SamplePrompts.samples.shuffled()
114:                     showPromptsAnimation = true
115:                 }
116:             }
117:         }
118: #if os(iOS)
119:         .onReceive(keyboardPublisher) { newIsKeyboardVisible in
120:             DispatchQueue.main.async {
121:                 withAnimation {
122:                     isKeyboardVisible = newIsKeyboardVisible
123:                 }
124:             }
125:         }
126: #endif
127:         
128:     }
129: }
130: 
131: #Preview(traits: .fixedLayout(width: 1000, height: 1000)) {
132:     EmptyConversaitonView(sendPrompt: {_ in})
133: }
````

## File: Enchanted/UI/Shared/Chat/Components/Header.swift
````swift
 1: //
 2: //  Header.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 09/12/2023.
 6: //
 7: 
 8: import SwiftUI
 9: 
10: struct Header: View {
11:     var body: some View {
12:         VStack {
13:             HStack(alignment: .center) {
14:                 Button(action: {}) {
15:                     Image(systemName: "line.3.horizontal")
16:                         .renderingMode(.template)
17:                         .resizable()
18:                         .scaledToFit()
19:                         .frame(width: 22)
20:                         .foregroundColor(.black)
21:                 }
22:                 
23:                 Spacer()
24:                 
25:                 Text(selectedModel.name)
26:                     .font(.system(size: 15))
27:                     .fontWeight(.medium)
28:                 
29:                 Spacer()
30:                 
31:                 Button(action: {}) {
32:                     Image(systemName: "square.and.pencil")
33:                         .renderingMode(.template)
34:                         .resizable()
35:                         .scaledToFit()
36:                         .frame(width: 22)
37:                         .foregroundColor(.black)
38:                 }
39:                 
40:             }
41:             .padding(.horizontal, 15)
42:         }
43:     }
44: }
45: 
46: #Preview {
47:     Header()
48: }
````

## File: Enchanted/UI/Shared/Chat/Components/MessageListVIew.swift
````swift
  1: //
  2: //  MessageListVIew.swift
  3: //  Enchanted
  4: //
  5: //  Created by Augustinas Malinauskas on 10/12/2023.
  6: //
  7: 
  8: import SwiftUI
  9: 
 10: #if os(macOS)
 11: import AppKit
 12: #endif
 13: 
 14: struct MessageListView: View {
 15:     var messages: [MessageSD]
 16:     var conversationState: ConversationState
 17:     var userInitials: String
 18:     @Binding var editMessage: MessageSD?
 19:     @State private var messageSelected: MessageSD?
 20:     @StateObject private var speechSynthesizer = SpeechSynthesizer.shared
 21:     
 22:     func onEditMessageTap() -> (MessageSD) -> Void {
 23:         return { message in
 24:             editMessage = message
 25:         }
 26:     }
 27:     
 28:     func onReadAloud(_ message: String) {
 29:         Task {
 30:             await speechSynthesizer.speak(text: message)
 31:         }
 32:     }
 33:     
 34:     func stopReadingAloud() {
 35:         Task {
 36:             await speechSynthesizer.stopSpeaking()
 37:         }
 38:     }
 39:     
 40:     var body: some View {
 41:         ZStack(alignment: .top) {
 42:             ScrollViewReader { scrollViewProxy in
 43:                 ScrollView {
 44:                     VStack {
 45:                         ForEach(messages) { message in
 46:                             let contextMenu = ContextMenu(menuItems: {
 47:                                 Button(action: {Clipboard.shared.setString(message.content)}) {
 48:                                     Label("Copy", systemImage: "doc.on.doc")
 49:                                 }
 50:                                 
 51: #if os(iOS) || os(visionOS)
 52:                                 Button(action: { messageSelected = message }) {
 53:                                     Label("Select Text", systemImage: "selection.pin.in.out")
 54:                                 }
 55:                                 
 56:                                 Button(action: {
 57:                                     onReadAloud(message.content)
 58:                                 }) {
 59:                                     Label("Read Aloud", systemImage: "speaker.wave.3.fill")
 60:                                 }
 61: #endif
 62:                                 
 63:                                 if message.role == "user" {
 64:                                     Button(action: {
 65:                                         withAnimation { editMessage = message }
 66:                                     }) {
 67:                                         Label("Edit", systemImage: "pencil")
 68:                                     }
 69:                                 }
 70:                                 
 71:                                 if editMessage?.id == message.id {
 72:                                     Button(action: {
 73:                                         withAnimation { editMessage = nil }
 74:                                     }) {
 75:                                         Label("Unselect", systemImage: "pencil")
 76:                                     }
 77:                                 }
 78:                             })
 79:                             
 80:                             ChatMessageView(
 81:                                 message: message,
 82:                                 showLoader: conversationState == .loading && messages.last == message,
 83:                                 userInitials: userInitials,
 84:                                 editMessage: $editMessage
 85:                             )
 86:                             .listRowInsets(EdgeInsets())
 87:                             .listRowSeparator(.hidden)
 88:                             .padding(.vertical, 10)
 89:                             .padding(.horizontal, 10)
 90:                             .contentShape(Rectangle())
 91:                             .contextMenu(contextMenu)
 92:                             .runningBorder(animated: message.id == editMessage?.id)
 93:                             .id(message)
 94:                         }
 95:                     }
 96:                 }
 97:                 .onAppear {
 98:                     scrollViewProxy.scrollTo(messages.last, anchor: .bottom)
 99:                 }
100:                 .onChange(of: messages) { oldMessages, newMessages in
101:                     scrollViewProxy.scrollTo(messages.last, anchor: .bottom)
102:                 }
103:                 .onChange(of: messages.last?.content) {
104:                     scrollViewProxy.scrollTo(messages.last, anchor: .bottom)
105:                 }
106: #if os(iOS) || os(visionOS)
107:                 .sheet(item: $messageSelected) { message in
108:                     SelectTextSheet(message: message)
109:                 }
110: #endif
111:             }
112:             
113:             ReadingAloudView(onStopTap: stopReadingAloud)
114:                 .frame(maxWidth: 400)
115:                 .showIf(speechSynthesizer.isSpeaking)
116:                 .transition(.asymmetric(
117:                     insertion: AnyTransition.opacity.combined(with: .scale(scale: 0.7, anchor: .top)),
118:                     removal: AnyTransition.opacity.combined(with: .scale(scale: 0.7, anchor: .top)))
119:                 )
120:         }
121:     }
122: }
123: 
124: #Preview {
125:     MessageListView(
126:         messages: MessageSD.sample,
127:         conversationState: .loading,
128:         userInitials: "AM",
129:         editMessage: .constant(MessageSD.sample[0])
130:     )
131: }
````

## File: Enchanted/UI/Shared/Chat/Components/ModelSelectorView.swift
````swift
 1: //
 2: //  ModelSelector.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 11/12/2023.
 6: //
 7: 
 8: import SwiftUI
 9: 
10: struct ModelSelectorView: View {
11:     var modelsList: [LanguageModelSD]
12:     var selectedModel: LanguageModelSD?
13:     var onSelectModel: @MainActor (_ model: LanguageModelSD?) -> ()
14:     var showChevron = true
15:     
16:     var body: some View {
17:         Menu {
18:             ForEach(modelsList, id: \.self) { model in
19:                 Button(action: {
20:                     withAnimation(.easeOut) {    
21:                         onSelectModel(model)
22:                     }
23:                 }) {
24:                     Text(model.name)
25:                         .font(.body)
26:                         .tag(model.name)
27:                 }
28:             }
29:         } label: {
30:             HStack(alignment: .center) {
31:                 if let selectedModel = selectedModel {
32:                     HStack(alignment: .bottom, spacing: 5) {
33:                         
34:                         #if os(macOS) || os(visionOS)
35:                         Text(selectedModel.name)
36:                             .font(.body)
37:                         #elseif os(iOS)
38:                         Text(selectedModel.prettyName )
39:                             .font(.body)
40:                             .foregroundColor(Color.labelCustom)
41:                         
42:                         Text(selectedModel.prettyVersion)
43:                             .font(.subheadline)
44:                             .foregroundColor(Color.gray3Custom)
45:                         #endif
46:                     }
47:                 }
48:                 
49:                 Image(systemName: "chevron.down")
50:                     .resizable()
51:                     .scaledToFit()
52:                     .frame(width: 10)
53:                     .foregroundColor(Color(.label))
54:                     .showIf(showChevron)
55:             }
56:         }
57:     }
58: }
59: 
60: #Preview {
61:     ModelSelectorView(
62:         modelsList: LanguageModelSD.sample,
63:         selectedModel: LanguageModelSD.sample[0], 
64:         onSelectModel: {_ in},
65:         showChevron: false
66:     )
67: }
````

## File: Enchanted/UI/Shared/Chat/Components/OptionsMenuView.swift
````swift
 1: //
 2: //  OptionsMenuView.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 12/05/2024.
 6: //
 7: 
 8: import SwiftUI
 9: 
10: struct MoreOptionsMenuView: View {
11:     var copyChat: (_ json: Bool) -> ()
12:     var body: some View {
13:         Menu {
14:             Button(action: {copyChat(false)}) {
15:                 Text("Copy Chat")
16:             }
17:             Button(action: {copyChat(true)}) {
18:                 Text("Copy Chat as JSON")
19:             }
20:         } label: {
21:             Image(systemName: "ellipsis")
22:                 .renderingMode(.template)
23:                 .resizable()
24:                 .scaledToFit()
25:                 .frame(width: 20, height: 20)
26:         }
27:     }
28: }
29: 
30: #Preview {
31:     MoreOptionsMenuView(copyChat: {_ in})
32: }
````

## File: Enchanted/UI/Shared/Chat/Components/ReadingAloudView.swift
````swift
 1: //
 2: //  ReadingAloudView.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 26/05/2024.
 6: //
 7: 
 8: import SwiftUI
 9: 
10: struct ReadingAloudView: View {
11:     var onStopTap: () -> ()
12:     @State private var animationsRunning = false
13:     
14:     var body: some View {
15:         HStack {
16:             
17:             Image(systemName: "speaker.wave.3")
18:                 .symbolEffect(.variableColor.iterative,  options: .repeat(100), value: animationsRunning)
19:                 .scaledToFit()
20:                 .frame(width: 18)
21:             
22:             Text("Reading Aloud")
23:                 .font(.system(size: 14))
24:             
25:             Spacer()
26:             
27:             Button(action: onStopTap) {
28:                 Image(systemName: "stop.fill")
29:                     .font(.system(size: 15, weight: .semibold))
30:                     .padding(5)
31:             }
32:             .buttonStyle(GrowingButton())
33:             
34:         }
35:         .padding(.horizontal)
36:         .padding(.vertical, 8)
37:         .background {
38:             RoundedRectangle(cornerRadius: 24).fill(.regularMaterial)
39:         }
40:         .padding()
41:         .onAppear {
42:             animationsRunning = true
43:         }
44:     }
45: }
46: 
47: #Preview {
48:     ReadingAloudView(onStopTap: {})
49: }
````

## File: Enchanted/UI/Shared/Chat/Components/RemovableImage.swift
````swift
 1: //
 2: //  RemovableImage.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 17/02/2024.
 6: //
 7: 
 8: import SwiftUI
 9: 
10: struct RemovableImage: View {
11:     var image: Image
12:     var onClick: () -> ()
13:     var height: Double = 80
14:     
15:     var body: some View {
16:         Button(action: {onClick() }) {
17:             ZStack(alignment: .topTrailing) {
18:                 image
19:                     .resizable()
20:                     .scaledToFit()
21:                     .frame(height: height)
22:                 
23:                 Image(systemName: "x.circle.fill")
24:                     .resizable()
25:                     .scaledToFit()
26:                     .frame(width: 20, height: 20)
27:                     .padding(5)
28:             }
29:         }
30:         .buttonStyle(.plain)
31:     }
32: }
33: 
34: #Preview {
35:     RemovableImage(image: Image(systemName: "star"), onClick: {})
36: }
````

## File: Enchanted/UI/Shared/Chat/Components/RunningBorder.swift
````swift
 1: //
 2: //  RunningBorder.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 28/01/2024.
 6: //
 7: 
 8: import SwiftUI
 9: 
10: struct RunningBorder: ViewModifier {
11:     @State private var rotation = 0.0
12:     var animated: Bool
13:     
14:     func body(content: Content) -> some View {
15:         if animated {
16:             content
17:                 .overlay(
18:                     RoundedRectangle(cornerRadius: 10)
19:                         .strokeBorder(
20:                             AngularGradient(gradient: Gradient(colors: [.indigo, .blue, .red, .orange, .indigo]), center: .center, startAngle: .degrees(rotation), endAngle: .degrees(rotation+360)).opacity(0.5),
21:                             lineWidth: 3.5
22:                         )
23:                 )
24:                 .onAppear {
25:                     withAnimation(.linear(duration: 2).repeatForever(autoreverses: false)) {
26:                         rotation = 360
27:                     }
28:                 }
29:         } else {
30:             content
31:         }
32:     }
33: }
34: 
35: extension View {
36:     func runningBorder(animated: Bool) -> some View {
37:         modifier(RunningBorder(animated: animated))
38:     }
39: }
40: 
41: #Preview {
42:     Rectangle()
43:         .runningBorder(animated: true)
44: }
````

## File: Enchanted/UI/Shared/Chat/Components/SelectedImageView.swift
````swift
 1: //
 2: //  SelectedImageView.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 21/12/2023.
 6: //
 7: 
 8: import SwiftUI
 9: 
10: struct SelectedImageView: View {
11:     @Binding var image: Image?
12:     
13:     private func onClick() {
14:         withAnimation(.snappy(duration: 0.3)) {
15:             image = nil
16:         }
17:     }
18:     
19:     var body: some View {
20:         if let selectedImage = image {
21:             Button(action: onClick) {
22:                 selectedImage
23:                     .renderingMode(.original)
24:                     .resizable()
25:                     .scaledToFit()
26:                     .frame(maxWidth: 40, maxHeight: 40)
27:                     .padding(.vertical, 4)
28:                     .clipShape(RoundedRectangle(cornerRadius: 10))
29:             }
30:         }
31:     }
32: }
33: 
34: #Preview {
35:     SelectedImageView(image: .constant(Image(systemName: "photo")))
36: }
````

## File: Enchanted/UI/Shared/Chat/Components/UnreachableAPIView.swift
````swift
 1: //
 2: //  UnreachableAPIView.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 10/02/2024.
 6: //
 7: 
 8: import SwiftUI
 9: import ActivityIndicatorView
10: 
11: struct UnreachableAPIView: View {
12:     @State var showSettings = false
13:     
14:     var body: some View {
15:         HStack {
16:             VStack {
17:                 Text("Ollama is unreachable. Go to Settings and update your Ollama API endpoint. ")
18:                     .lineLimit(nil)
19:                     .minimumScaleFactor(0.5)
20:                     .fontWeight(.medium)
21:                     .font(.system(size: 14))
22:             }
23:             
24:             Spacer()
25:             
26:             ActivityIndicatorView(isVisible: .constant(true), type: .growingCircle)
27:                  .frame(width: 21, height: 21)
28:                  .padding(.horizontal)
29:             
30:             Button(action: {showSettings.toggle()}) {
31:                 Text("Settings")
32:                     .foregroundStyle(Color.white)
33:                     .fontWeight(.semibold)
34:             }
35:             .padding(8)
36:             .background(Color.black)
37:             .clipShape(RoundedRectangle(cornerRadius: 15))
38:             .buttonStyle(GrowingButton())
39:         }
40:         .padding()
41:         .background(Color(.pink).opacity(0.2))
42:         .clipShape(RoundedRectangle(cornerRadius: 10))
43:         .padding()
44:        .sheet(isPresented: $showSettings) {
45:            Settings()
46:        }
47:     }
48: }
49: 
50: #Preview {
51:     UnreachableAPIView()
52: }
````

## File: Enchanted/UI/Shared/Chat/Chat.swift
````swift
  1: //
  2: //  MainView.swift
  3: //  Enchanted
  4: //
  5: //  Created by Augustinas Malinauskas on 09/12/2023.
  6: //
  7: 
  8: import SwiftUI
  9: 
 10: struct Chat: View, Sendable {
 11:     @State private var languageModelStore: LanguageModelStore
 12:     @State private var conversationStore: ConversationStore
 13:     @State private var appStore: AppStore
 14:     @AppStorage("systemPrompt") private var systemPrompt: String = ""
 15:     @AppStorage("appUserInitials") private var userInitials: String = ""
 16:     @AppStorage("defaultOllamaModel") private var defaultOllamaModel: String = ""
 17:     @State var showMenu = false
 18:     
 19:     init(languageModelStore: LanguageModelStore, conversationStore: ConversationStore, appStore: AppStore) {
 20:         _languageModelStore = State(initialValue: languageModelStore)
 21:         _conversationStore = State(initialValue: conversationStore)
 22:         _appStore = State(initialValue: appStore)
 23:     }
 24:     
 25:     func toggleMenu() {
 26:         withAnimation(.spring) {
 27:             showMenu.toggle()
 28:         }
 29:         Task {
 30:             await Haptics.shared.mediumTap()
 31:         }
 32:     }
 33:     
 34:     @MainActor
 35:     func updateSelectedModel() {
 36:         if languageModelStore.selectedModel == nil {
 37:             if defaultOllamaModel != "" {
 38:                 languageModelStore.setModel(modelName: defaultOllamaModel)
 39:             } else {
 40:                 languageModelStore.setModel(model: languageModelStore.models.first)
 41:             }
 42:         }
 43:     }
 44:     
 45:     @MainActor
 46:     func sendMessage(prompt: String, model: LanguageModelSD, image: Image?, trimmingMessageId: String?) {
 47:         conversationStore.sendPrompt(
 48:             userPrompt: prompt,
 49:             model: model,
 50:             image: image,
 51:             systemPrompt: systemPrompt,
 52:             trimmingMessageId: trimmingMessageId
 53:         )
 54:     }
 55:     
 56:     func onConversationTap(_ conversation: ConversationSD) {
 57:         Task {
 58:             try await conversationStore.selectConversation(conversation)
 59:             await languageModelStore.setModel(model: conversation.model)
 60:             Haptics.shared.mediumTap()
 61:         }
 62:         withAnimation {
 63:             showMenu.toggle()
 64:         }
 65:     }
 66:     
 67:     @MainActor func onStopGenerateTap() {
 68:         conversationStore.stopGenerate()
 69:         Haptics.shared.mediumTap()
 70:     }
 71:     
 72:     func onConversationDelete(_ conversation: ConversationSD) {
 73:         Task {
 74:             await Haptics.shared.mediumTap()
 75:             try? await conversationStore.delete(conversation)
 76:         }
 77:     }
 78:     
 79:     func newConversation() {
 80:         DispatchQueue.main.async {
 81:             withAnimation(.easeOut(duration: 0.3)) {
 82:                 self.conversationStore.selectedConversation = nil
 83:             }
 84:         }
 85:         
 86:         Task {
 87:             await Haptics.shared.mediumTap()
 88:             try? await languageModelStore.loadModels()
 89:         }
 90:         
 91: #if os(iOS)
 92:         UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
 93: #endif
 94:     }
 95:     
 96:     func copyChat(_ json: Bool) {
 97:         Task {
 98:             let messages = await ConversationStore.shared.messages
 99:             
100:             if messages.count == 0 {
101:                 return
102:             }
103:             
104:             if json {
105:                 let jsonArray = messages.map { message in
106:                     return [
107:                         "role": message.role,
108:                         "content": message.content
109:                     ]
110:                 }
111:                 let jsonEncoder = JSONEncoder()
112:                 jsonEncoder.outputFormatting = [.withoutEscapingSlashes]
113: 
114:                 if let jsonData = try? jsonEncoder.encode(jsonArray),
115:                    let jsonString = String(data: jsonData, encoding: .utf8) {
116:                     Clipboard.shared.setString(jsonString)
117:                 }
118:             } else {
119:                 let body = messages.map{"\($0.role.capitalized): \($0.content)"}.joined(separator: "\n\n")
120:                 Clipboard.shared.setString(body)
121:             }
122:         }
123:     }
124:     
125:     var body: some View {
126:         Group {
127: #if os(macOS) || os(visionOS)
128:             ChatView(
129:                 selectedConversation: conversationStore.selectedConversation,
130:                 conversations: conversationStore.conversations,
131:                 messages: conversationStore.messages,
132:                 modelsList: languageModelStore.models,
133:                 onMenuTap: toggleMenu,
134:                 onNewConversationTap: newConversation,
135:                 onSendMessageTap: sendMessage,
136:                 onConversationTap:onConversationTap,
137:                 conversationState: conversationStore.conversationState,
138:                 onStopGenerateTap: onStopGenerateTap,
139:                 reachable: appStore.isReachable,
140:                 modelSupportsImages: languageModelStore.supportsImages,
141:                 selectedModel: languageModelStore.selectedModel,
142:                 onSelectModel: languageModelStore.setModel,
143:                 onConversationDelete: onConversationDelete,
144:                 onDeleteDailyConversations: conversationStore.deleteDailyConversations,
145:                 userInitials: userInitials,
146:                 copyChat: copyChat
147:             )
148: #else
149:             SideBarStack(sidebarWidth: 300,showSidebar: $showMenu, sidebar: {
150:                 SidebarView(
151:                     selectedConversation: conversationStore.selectedConversation,
152:                     conversations: conversationStore.conversations,
153:                     onConversationTap: onConversationTap,
154:                     onConversationDelete: onConversationDelete,
155:                     onDeleteDailyConversations: conversationStore.deleteDailyConversations
156:                 )
157:             }) {
158:                 ChatView(
159:                     conversation: conversationStore.selectedConversation,
160:                     messages: conversationStore.messages,
161:                     modelsList: languageModelStore.models,
162:                     selectedModel: languageModelStore.selectedModel,
163:                     onSelectModel: languageModelStore.setModel,
164:                     onMenuTap: toggleMenu,
165:                     onNewConversationTap: newConversation,
166:                     onSendMessageTap: sendMessage,
167:                     conversationState: conversationStore.conversationState,
168:                     onStopGenerateTap: onStopGenerateTap,
169:                     reachable: appStore.isReachable,
170:                     modelSupportsImages: languageModelStore.supportsImages,
171:                     userInitials: userInitials
172:                 )
173:             }
174: #endif
175:         }
176:         .onChange(of: languageModelStore.models, { _, modelsList in
177:             if languageModelStore.selectedModel == nil {
178:                 updateSelectedModel()
179:             }
180:         })
181:         .onChange(of: conversationStore.selectedConversation, initial: true, { _, newConversation in
182:             if let conversation = newConversation {
183:                 languageModelStore.setModel(model: conversation.model)
184:             } else {
185:                 updateSelectedModel()
186:             }
187:         })
188:     }
189: }
````

## File: Enchanted/UI/Shared/Components/SimpleFloatingButton.swift
````swift
 1: //
 2: //  SimpleFloatingButton.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 18/02/2024.
 6: //
 7: 
 8: import SwiftUI
 9: 
10: struct SimpleFloatingButton: View {
11:     var systemImage: String
12:     var onClick: () -> ()
13:     
14:     var body: some View {
15:         Button(action: onClick) {
16:             Image(systemName: systemImage)
17:                 .renderingMode(.template)
18:                 .resizable()
19:                 .scaledToFit()
20:                 .foregroundColor(Color.label)
21:                 .frame(height: 18)
22:         }
23:         .buttonStyle(GrowingButton())
24:         .contentShape(Rectangle())
25:     }
26: }
27: 
28: #Preview {
29:     SimpleFloatingButton(systemImage: "photo.fill", onClick: {})
30:         .frame(width: 100, height: 100)
31: }
````

## File: Enchanted/UI/Shared/Settings/Settings.swift
````swift
  1: //
  2: //  Settings.swift
  3: //  Enchanted
  4: //
  5: //  Created by Augustinas Malinauskas on 28/12/2023.
  6: //
  7: 
  8: import SwiftUI
  9: import Combine
 10: 
 11: struct Settings: View {
 12:     var languageModelStore = LanguageModelStore.shared
 13:     var conversationStore = ConversationStore.shared
 14:     var swiftDataService = SwiftDataService.shared
 15:     
 16:     @AppStorage("ollamaUri") private var ollamaUri: String = ""
 17:     @AppStorage("systemPrompt") private var systemPrompt: String = ""
 18:     @AppStorage("vibrations") private var vibrations: Bool = true
 19:     @AppStorage("colorScheme") private var colorScheme = AppColorScheme.system
 20:     @AppStorage("defaultOllamaModel") private var defaultOllamaModel: String = ""
 21:     @AppStorage("ollamaBearerToken") private var ollamaBearerToken: String = ""
 22:     @AppStorage("appUserInitials") private var appUserInitials: String = ""
 23:     @AppStorage("pingInterval") private var pingInterval: String = "5"
 24:     @AppStorage("voiceIdentifier") private var voiceIdentifier: String = ""
 25:     
 26:     @StateObject private var speechSynthesiser = SpeechSynthesizer.shared
 27:     
 28:     @Environment(\.presentationMode) var presentationMode
 29:     
 30:     private let timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
 31:     @State private var cancellable: AnyCancellable?
 32:     
 33:     private func save() {
 34: #if os(iOS)
 35: #endif
 36:         // remove trailing slash
 37:         if ollamaUri.last == "/" {
 38:             ollamaUri = String(ollamaUri.dropLast())
 39:         }
 40:         
 41:         OllamaService.shared.initEndpoint(url: ollamaUri, bearerToken: ollamaBearerToken)
 42:         Task {
 43:             Haptics.shared.mediumTap()
 44:             try? await languageModelStore.loadModels()
 45:         }
 46:         presentationMode.wrappedValue.dismiss()
 47:     }
 48:     
 49:     private func checkServer() {
 50:         Task {
 51:             OllamaService.shared.initEndpoint(url: ollamaUri)
 52:             ollamaStatus = await OllamaService.shared.reachable()
 53:             try? await languageModelStore.loadModels()
 54:         }
 55:     }
 56:     
 57:     private func deleteAll() {
 58:         Task {
 59:             try? await conversationStore.deleteAllConversations()
 60:             try? await languageModelStore.deleteAllModels()
 61:         }
 62:     }
 63:     
 64:     @State var ollamaStatus: Bool?
 65:     var body: some View {
 66:         SettingsView(
 67:             ollamaUri: $ollamaUri,
 68:             systemPrompt: $systemPrompt, 
 69:             vibrations: $vibrations,
 70:             colorScheme: $colorScheme,
 71:             defaultOllamModel: $defaultOllamaModel, 
 72:             ollamaBearerToken: $ollamaBearerToken,
 73:             appUserInitials: $appUserInitials,
 74:             pingInterval: $pingInterval,
 75:             voiceIdentifier: $voiceIdentifier,
 76:             save: save,
 77:             checkServer: checkServer,
 78:             deleteAll: deleteAll,
 79:             ollamaLangugeModels: languageModelStore.models,
 80:             voices: speechSynthesiser.voices
 81:         )
 82:         .frame(maxWidth: 700)
 83:         #if os(visionOS)
 84:         .frame(minWidth: 600, minHeight: 800)
 85:         #endif
 86:         .onChange(of: defaultOllamaModel) { _, modelName in
 87:             languageModelStore.setModel(modelName: modelName)
 88:         }
 89:         .onAppear {
 90:             /// refresh voices in the background
 91:             cancellable = timer.sink { _ in
 92:                 speechSynthesiser.fetchVoices()
 93:             }
 94:         }
 95:         .onDisappear {
 96:             cancellable?.cancel()
 97:         }
 98:     }
 99: }
100: 
101: #Preview {
102:     Settings()
103: }
````

## File: Enchanted/UI/Shared/Settings/SettingsView.swift
````swift
  1: //
  2: //  SettingsView.swift
  3: //  Enchanted
  4: //
  5: //  Created by Augustinas Malinauskas on 11/12/2023.
  6: //
  7: 
  8: import SwiftUI
  9: import AVFoundation
 10: 
 11: struct SettingsView: View {
 12:     @Environment(\.presentationMode) var presentationMode
 13:     @Binding var ollamaUri: String
 14:     @Binding var systemPrompt: String
 15:     @Binding var vibrations: Bool
 16:     @Binding var colorScheme: AppColorScheme
 17:     @Binding var defaultOllamModel: String
 18:     @Binding var ollamaBearerToken: String
 19:     @Binding var appUserInitials: String
 20:     @Binding var pingInterval: String
 21:     @Binding var voiceIdentifier: String
 22:     @State var ollamaStatus: Bool?
 23:     var save: () -> ()
 24:     var checkServer: () -> ()
 25:     var deleteAll: () -> ()
 26:     var ollamaLangugeModels: [LanguageModelSD]
 27:     var voices: [AVSpeechSynthesisVoice]
 28:     
 29:     @State private var deleteConversationsDialog = false
 30:     
 31:     var body: some View {
 32:         VStack {
 33:             ZStack {
 34:                 HStack {
 35:                     Button {
 36:                         presentationMode.wrappedValue.dismiss()
 37:                     } label: {
 38:                         Text("Cancel")
 39:                             .font(.system(size: 16))
 40:                             .foregroundStyle(Color(.label))
 41:                     }
 42:                     
 43:                     
 44:                     Spacer()
 45:                     
 46:                     Button(action: save) {
 47:                         Text("Save")
 48:                             .font(.system(size: 16))
 49:                             .foregroundStyle(Color(.label))
 50:                     }
 51:                 }
 52:                 
 53:                 HStack {
 54:                     Spacer()
 55:                     Text("Settings")
 56:                         .font(.system(size: 16))
 57:                         .fontWeight(.medium)
 58:                         .foregroundStyle(Color(.label))
 59:                     Spacer()
 60:                 }
 61:             }
 62:             .padding()
 63:             
 64:             Form {
 65:                 Section(header: Text("Ollama").font(.headline)) {
 66:                     
 67:                     TextField("Ollama server URI", text: $ollamaUri, onCommit: checkServer)
 68:                         .textContentType(.URL)
 69:                         .disableAutocorrection(true)
 70:                         .textFieldStyle(RoundedBorderTextFieldStyle())
 71: #if !os(macOS)
 72:                         .padding(.top, 8)
 73:                         .keyboardType(.URL)
 74:                         .autocapitalization(.none)
 75: #endif
 76:                     
 77:                     VStack(alignment: .leading) {
 78:                         Text("System prompt")
 79:                         TextEditor(text: $systemPrompt)
 80:                             .font(.system(size: 13))
 81:                             .cornerRadius(4)
 82:                             .multilineTextAlignment(.leading)
 83:                             .frame(minHeight: 100)
 84:                     }
 85:                     
 86:                     Picker(selection: $defaultOllamModel) {
 87:                         ForEach(ollamaLangugeModels, id:\.self) { model in
 88:                             Text(model.name).tag(model.name)
 89:                         }
 90:                     } label: {
 91:                         Label {
 92:                             Text("Default Model")
 93:                         } icon: {
 94:                             Image("ollama")
 95:                                 .renderingMode(.template)
 96:                                 .resizable()
 97:                                 .scaledToFit()
 98:                                 .foregroundColor(Color(.label))
 99:                                 .frame(width: 24, height: 24)
100:                         }
101:                     }
102:                     
103:                     
104:                     TextField("Bearer Token", text: $ollamaBearerToken)
105:                         .disableAutocorrection(true)
106:                         .textFieldStyle(RoundedBorderTextFieldStyle())
107: #if os(iOS)
108:                         .autocapitalization(.none)
109: #endif
110:                     TextField("Ping Interval (seconds)", text: $pingInterval)
111:                         .disableAutocorrection(true)
112:                         .textFieldStyle(RoundedBorderTextFieldStyle())
113:                     
114:                     Section(header: Text("APP").font(.headline).padding(.top, 20)) {
115:                         
116: #if os(iOS)
117:                         Toggle(isOn: $vibrations, label: {
118:                             Label("Vibrations", systemImage: "water.waves")
119:                                 .foregroundStyle(Color.label)
120:                         })
121: #endif
122:                     }
123:                     
124:                     
125:                     Picker(selection: $colorScheme) {
126:                         ForEach(AppColorScheme.allCases, id:\.self) { scheme in
127:                             Text(scheme.toString).tag(scheme.id)
128:                         }
129:                     } label: {
130:                         Label("Appearance", systemImage: "sun.max")
131:                             .foregroundStyle(Color.label)
132:                     }
133:                     
134:                     Picker(selection: $voiceIdentifier) {
135:                         ForEach(voices, id:\.self.identifier) { voice in
136:                             Text(voice.prettyName).tag(voice.identifier)
137:                         }
138:                     } label: {
139:                         Label("Voice", systemImage: "waveform")
140:                             .foregroundStyle(Color.label)
141:                         
142: #if os(macOS)
143:                         Text("Download voices by going to Settings > Accessibility > Spoken Content > System Voice > Manage Voices.")
144: #else
145:                         Text("Download voices by going to Settings > Accessibility > Spoken Content > Voices.")
146: #endif
147:                         
148:                         Button(action: {
149: #if os(macOS)
150:                             if let url = URL(string: "x-apple.systempreferences:com.apple.preference.universalaccess?SpeakableItems") {
151:                                 NSWorkspace.shared.open(url)
152:                             }
153: #else
154:                             let url = URL(string: "App-Prefs:root=General&path=ACCESSIBILITY")
155:                             if let url = url, UIApplication.shared.canOpenURL(url) {
156:                                 UIApplication.shared.open(url, options: [:], completionHandler: nil)
157:                             }
158: #endif
159:                             
160:                         }) {
161:                             
162:                             Text("Open Settings")
163:                         }
164:                         .buttonStyle(PlainButtonStyle())
165:                     }
166:                     
167:                     
168:                     TextField("Initials", text: $appUserInitials)
169:                         .disableAutocorrection(true)
170:                         .textFieldStyle(RoundedBorderTextFieldStyle())
171: #if os(iOS)
172:                         .keyboardType(.URL)
173:                         .autocapitalization(.none)
174: #endif
175:                     
176:                     Button(action: {deleteConversationsDialog.toggle()}) {
177:                         HStack {
178:                             Spacer()
179:                             
180:                             Text("Clear All Data")
181:                                 .foregroundStyle(Color(.systemRed))
182:                                 .padding(.vertical, 6)
183:                             
184:                             Spacer()
185:                         }
186:                     }
187:                 }
188:             }
189:             .formStyle(.grouped)
190:         }
191:         .preferredColorScheme(colorScheme.toiOSFormat)
192:         .confirmationDialog("Delete All Conversations?", isPresented: $deleteConversationsDialog) {
193:             Button("Delete", role: .destructive) { deleteAll() }
194:             Button("Cancel", role: .cancel) { }
195:         } message: {
196:             Text("Delete All Conversations?")
197:         }
198:     }
199: }
200: 
201: #Preview {
202:     SettingsView(
203:         ollamaUri: .constant(""),
204:         systemPrompt: .constant("You are an intelligent assistant solving complex problems. You are an intelligent assistant solving complex problems. You are an intelligent assistant solving complex problems."),
205:         vibrations: .constant(true),
206:         colorScheme: .constant(.light),
207:         defaultOllamModel: .constant("llama2"),
208:         ollamaBearerToken: .constant("x"),
209:         appUserInitials: .constant("AM"),
210:         pingInterval: .constant("5"),
211:         voiceIdentifier: .constant("sample"),
212:         save: {},
213:         checkServer: {},
214:         deleteAll: {},
215:         ollamaLangugeModels: LanguageModelSD.sample,
216:         voices: []
217:     )
218: }
````

## File: Enchanted/UI/Shared/Sidebar/Components/ConversationHistoryListView.swift
````swift
 1: //
 2: //  ConversationHistoryList.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 10/12/2023.
 6: //
 7: 
 8: import SwiftUI
 9: 
10: struct ConversationGroup: Hashable {
11:     let date: Date
12:     var conversations: [ConversationSD]
13:     
14:     // Implementing the Hashable protocol
15:     static func == (lhs: ConversationGroup, rhs: ConversationGroup) -> Bool {
16:         lhs.date == rhs.date
17:     }
18:     
19:     func hash(into hasher: inout Hasher) {
20:         hasher.combine(date)
21:     }
22: }
23: 
24: struct ConversationHistoryList: View {
25:     var selectedConversation: ConversationSD?
26:     var conversations: [ConversationSD]
27:     var onTap: (_ conversation: ConversationSD) -> ()
28:     var onDelete: (_ conversation: ConversationSD) -> ()
29:     var onDeleteDailyConversations: (_ date: Date) -> ()
30:     
31:     func groupConversationsByDay(conversations: [ConversationSD]) -> [ConversationGroup] {
32:         let groupedDictionary = Dictionary(grouping: conversations) { (conversation) -> Date in
33:             return Calendar.current.startOfDay(for: conversation.updatedAt)
34:         }
35:         
36:         return groupedDictionary.map { (key, value) in
37:             ConversationGroup(date: key, conversations: value)
38:         }.sorted(by: { $0.date > $1.date })
39:     }
40:     
41:     var conversationGroups: [ConversationGroup] {
42:         groupConversationsByDay(conversations: conversations)
43:     }
44:     
45:     var body: some View {
46:         VStack(alignment: .leading, spacing: 17) {
47:             ForEach(conversationGroups, id:\.self) { conversationGroup in
48:                 
49:                 HStack {
50:                     Text(conversationGroup.date.daysAgoString())
51:                         .font(.system(size: 14))
52:                         .fontWeight(.semibold)
53:                         .foregroundColor(Color(.systemGray))
54:                     
55:                     Spacer()
56:                 }
57:                 .contextMenu(menuItems: {
58:                     Button(role: .destructive, action: { onDeleteDailyConversations(conversationGroup.date) }) {
59:                         Label("Delete daily conversations", systemImage: "trash")
60:                     }
61:                 })
62:                 
63:                 ForEach(conversationGroup.conversations, id:\.self) { dailyConversation in
64:                     Button(action: {onTap(dailyConversation)}) {
65:                         HStack {
66:                             Circle()
67:                                 .frame(width: 6, height: 6)
68:                                 .animation(.easeOut(duration: 0.15))
69:                                 .transition(.opacity)
70:                                 .showIf(selectedConversation == dailyConversation)
71:                             
72:                             Text(dailyConversation.name)
73:                                 .lineLimit(1)
74:                                 .font(.system(size: 16))
75:                                 .foregroundColor(Color(.label))
76:                                 .animation(.easeOut(duration: 0.15))
77:                                 .transition(.opacity)
78:                             Spacer()
79:                         }
80:                         .animation(.easeOut(duration: 0.15))
81:                     }
82:                     .buttonStyle(.plain)
83:                     .contextMenu(menuItems: {
84:                         Button(role: .destructive, action: { onDelete(dailyConversation) }) {
85:                             Label("Delete", systemImage: "trash")
86:                         }
87:                     })
88:                 }
89:                 
90:                 Divider()
91:             }
92:         }
93:     }
94: }
95: 
96: 
97: #Preview {
98:     ConversationHistoryList(selectedConversation: ConversationSD.sample[0], conversations: ConversationSD.sample, onTap: {_ in}, onDelete: {_ in}, onDeleteDailyConversations: {_ in})
99: }
````

## File: Enchanted/UI/Shared/Sidebar/Components/KeyboardShortcuts.swift
````swift
 1: //
 2: //  KeyboardShortcuts.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 19/02/2024.
 6: //
 7: 
 8: import SwiftUI
 9: 
10: struct KeyboardShortcut: Identifiable {
11:     let id: Int
12:     var keys: [String]
13:     var description: String
14: }
15: 
16: struct KeyboardShortcutsDemo: View {
17:     @Environment(\.presentationMode) var presentationMode
18:     var shortcuts = [
19:         KeyboardShortcut(id: 1, keys: ["⌃", "⌘", "K"], description: "Open Panel Window"),
20:         KeyboardShortcut(id: 2, keys: ["⌘", "N"], description: "New Conversation"),
21:         KeyboardShortcut(id: 3, keys: ["⌘", "⌥", "S"], description: "Hide/Show sidebar"),
22:         KeyboardShortcut(id: 4, keys: ["⌘", "V"], description: "Paste text or image from clipboard into message box ")
23:     ]
24:     
25:     private func close() {
26:         presentationMode.wrappedValue.dismiss()
27:     }
28:     
29:     var body: some View {
30:         VStack {
31:             HStack(alignment: .top) {
32:                 Text("Shortcuts")
33:                     .font(.title)
34:                     .fontWeight(.thin)
35:                     .enchantify()
36:                     .padding(.bottom, 30)
37:                 
38:                 Spacer()
39:                 
40:                 Button(action: close) {
41:                     Text("Close")
42:                 }
43:                 .buttonStyle(GrowingButton())
44:             }
45:             
46:             Table(shortcuts) {
47:                 TableColumn("Shortcut") { shortcut in
48:                     Text(shortcut.keys.joined(separator: " + "))
49:                 }
50:                 .width(min: 100, max: 150)
51:                 TableColumn("Description") { shortcut in
52:                     Text(String(shortcut.description))
53:                 }
54:             }
55:         }
56:         .padding()
57:         .frame(width: 800, height: 600)
58:     }
59: }
60: 
61: #Preview {
62:     KeyboardShortcutsDemo()
63: }
````

## File: Enchanted/UI/Shared/Sidebar/Components/SidebarButton.swift
````swift
 1: //
 2: //  SidebarButton.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 19/02/2024.
 6: //
 7: 
 8: import SwiftUI
 9: 
10: struct SidebarButton: View {
11:     var title: String
12:     var image: String
13:     var onClick: () -> ()
14:     
15:     var body: some View {
16:         Button(action: onClick) {
17:             HStack {
18:                 Image(systemName: image)
19:                     .resizable()
20:                     .scaledToFit()
21:                     .frame(width: 16)
22:                 
23:                 Text(title)
24:                     .lineLimit(1)
25:                     .font(.system(size: 14))
26:                     .fontWeight(.regular)
27:                 
28:                 Spacer()
29:             }
30:             .padding(8)
31:             .foregroundColor(Color(.label))
32:             .contentShape(Rectangle())
33:         }
34:         .buttonStyle(.plain)
35:     }
36: }
37: 
38: #Preview {
39:     SidebarButton(title: "Settings", image: "gearshape.fill", onClick: {})
40: }
````

## File: Enchanted/UI/Shared/Sidebar/Components/SideBarMenuView.swift
````swift
 1: //
 2: //  SideBarMenuView.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 09/12/2023.
 6: //
 7: 
 8: import SwiftUI
 9: 
10: struct SideBarStack<SidebarContent: View, Content: View>: View {
11:     let sidebarContent: SidebarContent
12:     let mainContent: Content
13:     let sidebarWidth: CGFloat
14:     @State var offset: CGFloat = 0
15:     @Binding var showSidebar: Bool
16:     
17:     init(sidebarWidth: CGFloat, showSidebar: Binding<Bool>, @ViewBuilder sidebar: ()->SidebarContent, @ViewBuilder content: ()->Content) {
18:         self.mainContent = content()
19:         self.sidebarContent = sidebar()
20:         self.sidebarWidth = sidebarWidth
21:         self._showSidebar = showSidebar
22:     }
23:     
24:     var body: some View {
25:         ZStack(alignment: .leading) {
26:             sidebarContent
27:                 .frame(width: sidebarWidth, alignment: .center)
28:                 .offset(x: showSidebar ? offset - sidebarWidth : -sidebarWidth, y: 0)
29:                 .gesture(DragGesture().onChanged({ gesture in
30:                     let t = gesture.translation.width
31:                     if t > 0 {
32:                         return
33:                     }
34:                     
35:                     withAnimation(.spring) {
36:                         offset = sidebarWidth + t
37:                     }
38:                 }).onEnded({ gesture in
39:                     withAnimation(.spring) {
40:                         if -offset < 100 {
41:                             offset = 0
42:                         } else {
43:                             offset = sidebarWidth
44:                         }
45:                         showSidebar = false
46:                     }
47:                     
48:                 }))
49:             mainContent
50:                 .overlay(
51:                     Group {
52:                         if showSidebar {
53:                             Color(.systemGray)
54:                                 .ignoresSafeArea()
55:                                 .opacity(showSidebar ? (offset/sidebarWidth * 0.3) : 0.1)
56:                                 .onTapGesture {
57:                                     withAnimation(.spring) {
58:                                         self.offset = 0
59:                                         self.showSidebar = false
60:                                     }
61:                                 }
62:                         }
63:                     }
64:                 )
65:                 .offset(x: showSidebar ? offset : 0, y: 0)
66:             
67:         }
68:         .onChange(of: showSidebar) { oldValue, newValue in
69:             if newValue {
70:                 withAnimation(.spring) {
71:                     offset = sidebarWidth
72:                 }
73:             }
74:         }
75:     }
76: }
````

## File: Enchanted/UI/Shared/Sidebar/SidebarView.swift
````swift
 1: //
 2: //  SidebarView.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 10/12/2023.
 6: //
 7: 
 8: import SwiftUI
 9: 
10: struct SidebarView: View {
11:     @Environment(\.openWindow) var openWindow
12:     var selectedConversation: ConversationSD?
13:     var conversations: [ConversationSD]
14:     var onConversationTap: (_ conversation: ConversationSD) -> ()
15:     var onConversationDelete: (_ conversation: ConversationSD) -> ()
16:     var onDeleteDailyConversations: (_ date: Date) -> ()
17:     @State var showSettings = false
18:     @State var showCompletions = false
19:     @State var showKeyboardShortcutas = false
20:     
21:     private func onSettingsTap() {
22:         Task {
23:             showSettings.toggle()
24:             await Haptics.shared.mediumTap()
25:         }
26:     }
27:     
28:     var body: some View {
29:         VStack {
30:             ScrollView() {
31:                 ConversationHistoryList(
32:                     selectedConversation: selectedConversation,
33:                     conversations: conversations,
34:                     onTap: onConversationTap,
35:                     onDelete: onConversationDelete,
36:                     onDeleteDailyConversations: onDeleteDailyConversations
37:                 )
38:             }
39:             .scrollIndicators(.never)
40:             
41:             Divider()
42:             
43: #if os(macOS)
44:             SidebarButton(title: "Completions", image: "textformat.abc", onClick: {showCompletions.toggle()})
45:             
46:             SidebarButton(title: "Shortcuts", image: "keyboard.fill", onClick: {showKeyboardShortcutas.toggle()})
47: #endif
48:             
49:             SidebarButton(title: "Settings", image: "gearshape.fill", onClick: onSettingsTap)
50:             
51:         }
52:         .padding()
53: #if os(macOS)
54:         .focusedSceneValue(\.showSettings, $showSettings)
55: #endif
56:         .sheet(isPresented: $showSettings) {
57:             Settings()
58:         }
59: #if os(macOS)
60:         .sheet(isPresented: $showCompletions) {
61:             CompletionsEditor()
62:         }
63:         .sheet(isPresented: $showKeyboardShortcutas) {
64:             KeyboardShortcutsDemo()
65:         }
66: #endif
67:         
68:     }
69: }
70: 
71: #Preview {
72:     SidebarView(selectedConversation: ConversationSD.sample[0], conversations: ConversationSD.sample, onConversationTap: {_ in}, onConversationDelete: {_ in}, onDeleteDailyConversations: {_ in})
73: }
````

## File: Enchanted/UI/Shared/Voice/Voice.swift
````swift
 1: //
 2: //  Voice.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 26/05/2024.
 6: //
 7: 
 8: import SwiftUI
 9: 
10: struct Voice: View {
11:     @State var languageModelStore: LanguageModelStore
12:     @State var conversationStore: ConversationStore
13:     @State var appStore: AppStore
14:     
15:     var body: some View {
16:         VoiceView()
17:     }
18: }
````

## File: Enchanted/UI/Shared/Voice/VoiceView.swift
````swift
 1: //
 2: //  ConversationView.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 26/05/2024.
 6: //
 7: 
 8: import SwiftUI
 9: 
10: struct VoiceView: View {
11:     var body: some View {
12:         Text("hello")
13:     }
14: }
15: 
16: #Preview {
17:     VoiceView()
18: }
````

## File: Enchanted/UI/Shared/ApplicationEntry.swift
````swift
 1: //
 2: //  ApplicationEntry.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 12/02/2024.
 6: //
 7: 
 8: import SwiftUI
 9: import SwiftData
10: 
11: struct ApplicationEntry: View {
12:     @AppStorage("colorScheme") private var colorScheme: AppColorScheme = .system
13:     @State private var languageModelStore = LanguageModelStore.shared
14:     @State private var conversationStore = ConversationStore.shared
15:     @State private var completionsStore = CompletionsStore.shared
16:     @State private var appStore = AppStore.shared
17:     
18:     var body: some View {
19:         VStack {
20:             switch appStore.appState {
21:             case .chat:
22:                 Chat(languageModelStore: languageModelStore, conversationStore: conversationStore, appStore: appStore)
23:             case .voice:
24:                 Voice(languageModelStore: languageModelStore, conversationStore: conversationStore, appStore: appStore)
25:             }
26:         }
27:         .task {
28:             
29:             if let bundleIdentifier = Bundle.main.bundleIdentifier {
30:                 print("Bundle Identifier: \(bundleIdentifier)")
31:             } else {
32:                 print("Bundle Identifier not found.")
33:             }
34:             
35:             Task.detached {
36:                 async let loadModels: () = languageModelStore.loadModels()
37:                 async let loadConversations: () = conversationStore.loadConversations()
38:                 async let loadCompletions: () = completionsStore.load()
39:                 
40:                 do {
41:                     _ = try await loadModels
42:                     _ = try await loadConversations
43:                     _ = try await loadCompletions
44:                 } catch {
45:                     print("Unexpected error: \(error).")
46:                 }
47:             }
48:         }
49:         .preferredColorScheme(colorScheme.toiOSFormat)
50:     }
51: }
````

## File: Enchanted/UI/Helpers.swift
````swift
 1: //
 2: //  Helpers.swift
 3: //  Enchanted
 4: //
 5: //  Created by Augustinas Malinauskas on 09/02/2024.
 6: //
 7: 
 8: import SwiftUI
 9: 
10: #if os(iOS) || os(visionOS)
11: typealias PlatformImage = UIImage
12: #else
13: typealias PlatformImage = NSImage
14: #endif
15: 
16: //Image(nsImage: nsImage)
````

## File: Enchanted/Accessibility.plist
````
 1: <?xml version="1.0" encoding="UTF-8"?>
 2: <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
 3: <plist version="1.0">
 4: <dict>
 5: 	<key>Accessibility Description</key>
 6: 	<string>A description of your app&apos;s accessibility features</string>
 7: 	<key>Accessibility Portable Bundle</key>
 8: 	<string>Enchanted.accessibilitybundle</string>
 9: 	<key>Accessible For Bundle</key>
10: 	<string>subj.Enchanted</string>
11: </dict>
12: </plist>
````

## File: Enchanted/Enchanted.entitlements
````
 1: <?xml version="1.0" encoding="UTF-8"?>
 2: <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
 3: <plist version="1.0">
 4: <dict>
 5: 	<key>com.apple.security.app-sandbox</key>
 6: 	<true/>
 7: 	<key>com.apple.security.device.audio-input</key>
 8: 	<true/>
 9: 	<key>com.apple.security.files.user-selected.read-only</key>
10: 	<true/>
11: 	<key>com.apple.security.network.client</key>
12: 	<true/>
13: </dict>
14: </plist>
````

## File: Enchanted/EnchantedDebug.entitlements
````
 1: <?xml version="1.0" encoding="UTF-8"?>
 2: <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
 3: <plist version="1.0">
 4: <dict>
 5: 	<key>com.apple.security.app-sandbox</key>
 6: 	<true/>
 7: 	<key>com.apple.security.device.audio-input</key>
 8: 	<true/>
 9: 	<key>com.apple.security.files.user-selected.read-only</key>
10: 	<true/>
11: 	<key>com.apple.security.network.client</key>
12: 	<true/>
13: </dict>
14: </plist>
````

## File: Enchanted/Info.plist
````
 1: <?xml version="1.0" encoding="UTF-8"?>
 2: <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
 3: <plist version="1.0">
 4: <dict>
 5: 	<key>NSSpeechRecognitionUsageDescription</key>
 6: 	<string>You can speak with enchanted with your voice.</string>
 7: 	<key>NSAccessibilityUsageDescription</key>
 8: 	<string>Enchanted can perform operatios on selected text such as fixing grammar, extending texts as well as custom commands.</string>
 9: 	<key>NSAppTransportSecurity</key>
10: 	<dict>
11: 		<key>NSAllowsArbitraryLoads</key>
12: 		<true/>
13: 	</dict>
14: 	<key>com.apple.security.network.client</key>
15: 	<true/>
16: </dict>
17: </plist>
````

## File: Enchanted.xcodeproj/project.xcworkspace/xcshareddata/swiftpm/Package.resolved
````
  1: {
  2:   "originHash" : "3fe20c6c704d04e2f924250b1ce019f513915d235cdd9aedc57f51a0a1a94763",
  3:   "pins" : [
  4:     {
  5:       "identity" : "activityindicatorview",
  6:       "kind" : "remoteSourceControl",
  7:       "location" : "https://github.com/exyte/ActivityIndicatorView.git",
  8:       "state" : {
  9:         "revision" : "9970fd0bb7a05dad0b6566ae1f56937716686b24",
 10:         "version" : "1.1.1"
 11:       }
 12:     },
 13:     {
 14:       "identity" : "alamofire",
 15:       "kind" : "remoteSourceControl",
 16:       "location" : "https://github.com/Alamofire/Alamofire.git",
 17:       "state" : {
 18:         "revision" : "f455c2975872ccd2d9c81594c658af65716e9b9a",
 19:         "version" : "5.9.1"
 20:       }
 21:     },
 22:     {
 23:       "identity" : "keyboardshortcuts",
 24:       "kind" : "remoteSourceControl",
 25:       "location" : "https://github.com/sindresorhus/KeyboardShortcuts",
 26:       "state" : {
 27:         "revision" : "2e5f15581fefb821d4b366e57d817be8bf12aa58",
 28:         "version" : "2.0.1"
 29:       }
 30:     },
 31:     {
 32:       "identity" : "magnet",
 33:       "kind" : "remoteSourceControl",
 34:       "location" : "https://github.com/AugustDev/Magnet",
 35:       "state" : {
 36:         "branch" : "master",
 37:         "revision" : "4865f86d9baa24684dedacd6677beb2d8b30d88e"
 38:       }
 39:     },
 40:     {
 41:       "identity" : "networkimage",
 42:       "kind" : "remoteSourceControl",
 43:       "location" : "https://github.com/gonzalezreal/NetworkImage",
 44:       "state" : {
 45:         "revision" : "2849f5323265386e200484b0d0f896e73c3411b9",
 46:         "version" : "6.0.1"
 47:       }
 48:     },
 49:     {
 50:       "identity" : "ollamakit",
 51:       "kind" : "remoteSourceControl",
 52:       "location" : "https://github.com/AugustDev/OllamaKit",
 53:       "state" : {
 54:         "branch" : "main",
 55:         "revision" : "0079411b4568dbc821c9e2589345d3f9b9538af4"
 56:       }
 57:     },
 58:     {
 59:       "identity" : "sauce",
 60:       "kind" : "remoteSourceControl",
 61:       "location" : "https://github.com/Clipy/Sauce",
 62:       "state" : {
 63:         "revision" : "df657bc1beba23ffd580953f183cd756b5bcd514",
 64:         "version" : "2.4.1"
 65:       }
 66:     },
 67:     {
 68:       "identity" : "splash",
 69:       "kind" : "remoteSourceControl",
 70:       "location" : "https://github.com/AugustDev/Splash",
 71:       "state" : {
 72:         "branch" : "master",
 73:         "revision" : "c31eba0866102be9be29391dac641ecb46795702"
 74:       }
 75:     },
 76:     {
 77:       "identity" : "swift-async-algorithms",
 78:       "kind" : "remoteSourceControl",
 79:       "location" : "https://github.com/apple/swift-async-algorithms.git",
 80:       "state" : {
 81:         "revision" : "da4e36f86544cdf733a40d59b3a2267e3a7bbf36",
 82:         "version" : "1.0.0"
 83:       }
 84:     },
 85:     {
 86:       "identity" : "swift-cmark",
 87:       "kind" : "remoteSourceControl",
 88:       "location" : "https://github.com/swiftlang/swift-cmark",
 89:       "state" : {
 90:         "revision" : "3ccff77b2dc5b96b77db3da0d68d28068593fa53",
 91:         "version" : "0.5.0"
 92:       }
 93:     },
 94:     {
 95:       "identity" : "swift-collections",
 96:       "kind" : "remoteSourceControl",
 97:       "location" : "https://github.com/apple/swift-collections.git",
 98:       "state" : {
 99:         "revision" : "94cf62b3ba8d4bed62680a282d4c25f9c63c2efb",
100:         "version" : "1.1.0"
101:       }
102:     },
103:     {
104:       "identity" : "swift-markdown-ui",
105:       "kind" : "remoteSourceControl",
106:       "location" : "https://github.com/gonzalezreal/swift-markdown-ui",
107:       "state" : {
108:         "revision" : "5f613358148239d0292c0cef674a3c2314737f9e",
109:         "version" : "2.4.1"
110:       }
111:     },
112:     {
113:       "identity" : "vortex",
114:       "kind" : "remoteSourceControl",
115:       "location" : "https://github.com/twostraws/Vortex",
116:       "state" : {
117:         "revision" : "bb48b128d3c13c68c68e83833c622eec9f6c701f",
118:         "version" : "1.0.1"
119:       }
120:     },
121:     {
122:       "identity" : "wrappinghstack",
123:       "kind" : "remoteSourceControl",
124:       "location" : "https://github.com/ksemianov/WrappingHStack",
125:       "state" : {
126:         "revision" : "3300f68b6bf5f8a75ee7ca8a40f136a558053d10",
127:         "version" : "0.2.0"
128:       }
129:     }
130:   ],
131:   "version" : 3
132: }
````

## File: Enchanted.xcodeproj/project.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist
````
1: <?xml version="1.0" encoding="UTF-8"?>
2: <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
3: <plist version="1.0">
4: <dict>
5: 	<key>IDEDidComputeMac32BitWarning</key>
6: 	<true/>
7: </dict>
8: </plist>
````

## File: Enchanted.xcodeproj/project.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings
````
1: <?xml version="1.0" encoding="UTF-8"?>
2: <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
3: <plist version="1.0">
4: <dict/>
5: </plist>
````

## File: Enchanted.xcodeproj/project.xcworkspace/xcuserdata/wpc.xcuserdatad/WorkspaceSettings.xcsettings
````
 1: <?xml version="1.0" encoding="UTF-8"?>
 2: <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
 3: <plist version="1.0">
 4: <dict>
 5: 	<key>BuildLocationStyle</key>
 6: 	<string>UseAppPreferences</string>
 7: 	<key>CustomBuildLocationType</key>
 8: 	<string>RelativeToDerivedData</string>
 9: 	<key>DerivedDataLocationStyle</key>
10: 	<string>Default</string>
11: 	<key>ShowSharedSchemesAutomaticallyEnabled</key>
12: 	<true/>
13: </dict>
14: </plist>
````

## File: Enchanted.xcodeproj/project.xcworkspace/contents.xcworkspacedata
````
1: <?xml version="1.0" encoding="UTF-8"?>
2: <Workspace
3:    version = "1.0">
4:    <FileRef
5:       location = "self:">
6:    </FileRef>
7: </Workspace>
````

## File: Enchanted.xcodeproj/xcshareddata/xcschemes/Enchanted.xcscheme
````
 1: <?xml version="1.0" encoding="UTF-8"?>
 2: <Scheme
 3:    LastUpgradeVersion = "1510"
 4:    version = "1.7">
 5:    <BuildAction
 6:       parallelizeBuildables = "YES"
 7:       buildImplicitDependencies = "YES">
 8:       <BuildActionEntries>
 9:          <BuildActionEntry
10:             buildForTesting = "YES"
11:             buildForRunning = "YES"
12:             buildForProfiling = "YES"
13:             buildForArchiving = "YES"
14:             buildForAnalyzing = "YES">
15:             <BuildableReference
16:                BuildableIdentifier = "primary"
17:                BlueprintIdentifier = "FFEC328C2B24779A003E5C04"
18:                BuildableName = "Enchanted.app"
19:                BlueprintName = "Enchanted"
20:                ReferencedContainer = "container:Enchanted.xcodeproj">
21:             </BuildableReference>
22:          </BuildActionEntry>
23:       </BuildActionEntries>
24:    </BuildAction>
25:    <TestAction
26:       buildConfiguration = "Debug"
27:       selectedDebuggerIdentifier = "Xcode.DebuggerFoundation.Debugger.LLDB"
28:       selectedLauncherIdentifier = "Xcode.DebuggerFoundation.Launcher.LLDB"
29:       shouldUseLaunchSchemeArgsEnv = "YES"
30:       shouldAutocreateTestPlan = "YES">
31:    </TestAction>
32:    <LaunchAction
33:       buildConfiguration = "Debug"
34:       selectedDebuggerIdentifier = "Xcode.DebuggerFoundation.Debugger.LLDB"
35:       selectedLauncherIdentifier = "Xcode.DebuggerFoundation.Launcher.LLDB"
36:       launchStyle = "0"
37:       useCustomWorkingDirectory = "NO"
38:       ignoresPersistentStateOnLaunch = "NO"
39:       debugDocumentVersioning = "YES"
40:       debugServiceExtension = "internal"
41:       allowLocationSimulation = "YES">
42:       <BuildableProductRunnable
43:          runnableDebuggingMode = "0">
44:          <BuildableReference
45:             BuildableIdentifier = "primary"
46:             BlueprintIdentifier = "FFEC328C2B24779A003E5C04"
47:             BuildableName = "Enchanted.app"
48:             BlueprintName = "Enchanted"
49:             ReferencedContainer = "container:Enchanted.xcodeproj">
50:          </BuildableReference>
51:       </BuildableProductRunnable>
52:       <CommandLineArguments>
53:          <CommandLineArgument
54:             argument = "-com.apple.CoreData.SQLDebug 1"
55:             isEnabled = "NO">
56:          </CommandLineArgument>
57:          <CommandLineArgument
58:             argument = "-com.apple.CoreData.ConcurrencyDebug 0"
59:             isEnabled = "NO">
60:          </CommandLineArgument>
61:       </CommandLineArguments>
62:    </LaunchAction>
63:    <ProfileAction
64:       buildConfiguration = "Release"
65:       shouldUseLaunchSchemeArgsEnv = "YES"
66:       savedToolIdentifier = ""
67:       useCustomWorkingDirectory = "NO"
68:       debugDocumentVersioning = "YES">
69:       <BuildableProductRunnable
70:          runnableDebuggingMode = "0">
71:          <BuildableReference
72:             BuildableIdentifier = "primary"
73:             BlueprintIdentifier = "FFEC328C2B24779A003E5C04"
74:             BuildableName = "Enchanted.app"
75:             BlueprintName = "Enchanted"
76:             ReferencedContainer = "container:Enchanted.xcodeproj">
77:          </BuildableReference>
78:       </BuildableProductRunnable>
79:    </ProfileAction>
80:    <AnalyzeAction
81:       buildConfiguration = "Debug">
82:    </AnalyzeAction>
83:    <ArchiveAction
84:       buildConfiguration = "Release"
85:       revealArchiveInOrganizer = "YES">
86:    </ArchiveAction>
87: </Scheme>
````

## File: Enchanted.xcodeproj/xcuserdata/wpc.xcuserdatad/xcdebugger/Breakpoints_v2.xcbkptlist
````
1: <?xml version="1.0" encoding="UTF-8"?>
2: <Bucket
3:    uuid = "F86A12CB-2FB3-442A-8D63-13A618A57A08"
4:    type = "1"
5:    version = "2.0">
6: </Bucket>
````

## File: Enchanted.xcodeproj/xcuserdata/wpc.xcuserdatad/xcschemes/xcschememanagement.plist
````
 1: <?xml version="1.0" encoding="UTF-8"?>
 2: <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
 3: <plist version="1.0">
 4: <dict>
 5: 	<key>SchemeUserState</key>
 6: 	<dict>
 7: 		<key>Enchanted.xcscheme_^#shared#^_</key>
 8: 		<dict>
 9: 			<key>orderHint</key>
10: 			<integer>1</integer>
11: 		</dict>
12: 	</dict>
13: 	<key>SuppressBuildableAutocreation</key>
14: 	<dict>
15: 		<key>FFEC328C2B24779A003E5C04</key>
16: 		<dict>
17: 			<key>primary</key>
18: 			<true/>
19: 		</dict>
20: 	</dict>
21: </dict>
22: </plist>
````

## File: Enchanted.xcodeproj/project.pbxproj
````
   1: // !$*UTF8*$!
   2: {
   3: 	archiveVersion = 1;
   4: 	classes = {
   5: 	};
   6: 	objectVersion = 56;
   7: 	objects = {
   8: 
   9: /* Begin PBXBuildFile section */
  10: 		3396E0762BD877D500213816 /* Menus.swift in Sources */ = {isa = PBXBuildFile; fileRef = 3396E0752BD877D500213816 /* Menus.swift */; };
  11: 		FF0146CB2B3DA1DF00A2A9F6 /* Settings.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF0146CA2B3DA1DF00A2A9F6 /* Settings.swift */; };
  12: 		FF0146CD2B3DADCA00A2A9F6 /* HapticsService.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF0146CC2B3DADCA00A2A9F6 /* HapticsService.swift */; };
  13: 		FF0611EA2C04A11800443B33 /* Magnet in Frameworks */ = {isa = PBXBuildFile; platformFilters = (macos, ); productRef = FF0611E92C04A11800443B33 /* Magnet */; };
  14: 		FF0611F12C04A2FB00443B33 /* Splash in Frameworks */ = {isa = PBXBuildFile; productRef = FF0611F02C04A2FB00443B33 /* Splash */; };
  15: 		FF0611F32C04BEFE00443B33 /* AVSpeechSynthesisVoice+Extension.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF0611F22C04BEFD00443B33 /* AVSpeechSynthesisVoice+Extension.swift */; };
  16: 		FF1002302B2482BA0011A4DC /* ChatMessageView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF10022F2B2482BA0011A4DC /* ChatMessageView.swift */; };
  17: 		FF1002322B2483A20011A4DC /* Colours+Extension.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF1002312B2483A20011A4DC /* Colours+Extension.swift */; };
  18: 		FF1002392B24BBF20011A4DC /* Chat.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF1002382B24BBF20011A4DC /* Chat.swift */; };
  19: 		FF10023E2B24F4900011A4DC /* OllamaService.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF10023D2B24F4900011A4DC /* OllamaService.swift */; };
  20: 		FF1002402B24F7320011A4DC /* SideBarMenuView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF10023F2B24F7320011A4DC /* SideBarMenuView.swift */; };
  21: 		FF1002442B25BB730011A4DC /* ConversationStore.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF1002432B25BB730011A4DC /* ConversationStore.swift */; };
  22: 		FF1002462B25BCE70011A4DC /* LanguageModelStore.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF1002452B25BCE70011A4DC /* LanguageModelStore.swift */; };
  23: 		FF10024A2B25BE740011A4DC /* LanguageModelSD.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF1002492B25BE740011A4DC /* LanguageModelSD.swift */; };
  24: 		FF10024C2B25BEA00011A4DC /* MessageSD.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF10024B2B25BEA00011A4DC /* MessageSD.swift */; };
  25: 		FF10024E2B25C2A70011A4DC /* ConversationSD.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF10024D2B25C2A70011A4DC /* ConversationSD.swift */; };
  26: 		FF1002502B25C79F0011A4DC /* SwiftDataService.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF10024F2B25C79F0011A4DC /* SwiftDataService.swift */; };
  27: 		FF1002522B2609980011A4DC /* ModelContext+Extension.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF1002512B2609970011A4DC /* ModelContext+Extension.swift */; };
  28: 		FF1002542B261D460011A4DC /* MessageListVIew.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF1002532B261D460011A4DC /* MessageListVIew.swift */; };
  29: 		FF10025A2B2624C40011A4DC /* ConversationHistoryListView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF1002592B2624C40011A4DC /* ConversationHistoryListView.swift */; };
  30: 		FF10025C2B2625BE0011A4DC /* SidebarView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF10025B2B2625BE0011A4DC /* SidebarView.swift */; };
  31: 		FF10025E2B2648460011A4DC /* ConversationState.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF10025D2B2648460011A4DC /* ConversationState.swift */; };
  32: 		FF1002602B26499B0011A4DC /* ConversationStatusView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF10025F2B26499B0011A4DC /* ConversationStatusView.swift */; };
  33: 		FF1002662B2653EE0011A4DC /* ActivityIndicatorView in Frameworks */ = {isa = PBXBuildFile; productRef = FF1002652B2653EE0011A4DC /* ActivityIndicatorView */; };
  34: 		FF1002682B2668790011A4DC /* Date+Extension.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF1002672B2668790011A4DC /* Date+Extension.swift */; };
  35: 		FF10026A2B2731C60011A4DC /* ModelSelectorView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF1002692B2731C60011A4DC /* ModelSelectorView.swift */; };
  36: 		FF10026D2B2751760011A4DC /* SettingsView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF10026C2B2751760011A4DC /* SettingsView.swift */; };
  37: 		FF1002732B276EC10011A4DC /* AppColorScheme.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF1002722B276EC10011A4DC /* AppColorScheme.swift */; };
  38: 		FF1002752B278C170011A4DC /* AppStore.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF1002742B278C170011A4DC /* AppStore.swift */; };
  39: 		FF15EF6A2B826C0300D4A541 /* SimpleFloatingButton.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF15EF692B826C0300D4A541 /* SimpleFloatingButton.swift */; };
  40: 		FF1BC3C72BA0757700A58043 /* SplashSyntaxHighlighter+Extension.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF1BC3C62BA0757700A58043 /* SplashSyntaxHighlighter+Extension.swift */; };
  41: 		FF226A652BE2A0EC00CC91F1 /* SelectTextSheet.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF226A642BE2A0EC00CC91F1 /* SelectTextSheet.swift */; };
  42: 		FF24B30E2B66BE8500AB618F /* RunningBorder.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF24B30D2B66BE8500AB618F /* RunningBorder.swift */; };
  43: 		FF2F03422B795E0B00349855 /* Clipboard.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF2F03412B795E0B00349855 /* Clipboard.swift */; };
  44: 		FF2F03442B79631800349855 /* Button+Extension.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF2F03432B79631800349855 /* Button+Extension.swift */; };
  45: 		FF2F03492B796A6500349855 /* HotkeyService.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF2F03482B796A6500349855 /* HotkeyService.swift */; };
  46: 		FF33066C2B83BB31007B33E5 /* SidebarButton.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF33066B2B83BB31007B33E5 /* SidebarButton.swift */; };
  47: 		FF33066E2B83CFEC007B33E5 /* KeyboardShortcuts.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF33066D2B83CFEC007B33E5 /* KeyboardShortcuts.swift */; };
  48: 		FF38F84F2B7A7B6700546B56 /* MenuBarControlView_macOS.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF38F84E2B7A7B6700546B56 /* MenuBarControlView_macOS.swift */; };
  49: 		FF38F8512B7A919C00546B56 /* MenuBarControl_macOS.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF38F8502B7A919C00546B56 /* MenuBarControl_macOS.swift */; };
  50: 		FF38F8532B7AA9C400546B56 /* ApplicationEntry.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF38F8522B7AA9C400546B56 /* ApplicationEntry.swift */; };
  51: 		FF38F8562B7AB01E00546B56 /* FloatingPanel.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF38F8552B7AB01E00546B56 /* FloatingPanel.swift */; };
  52: 		FF38F8582B7AB1AD00546B56 /* PanelManager.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF38F8572B7AB1AD00546B56 /* PanelManager.swift */; };
  53: 		FF38F85A2B7AB28300546B56 /* PromptPanelView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF38F8592B7AB28300546B56 /* PromptPanelView.swift */; };
  54: 		FF38F85C2B7ABC2C00546B56 /* PromptPanel.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF38F85B2B7ABC2C00546B56 /* PromptPanel.swift */; };
  55: 		FF4A605D2BC3587800D7BD4F /* KeyboardShortcuts in Frameworks */ = {isa = PBXBuildFile; productRef = FF4A605C2BC3587800D7BD4F /* KeyboardShortcuts */; };
  56: 		FF5FA0D62B35169400BC471D /* Binding+Extension.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF5FA0D52B35169400BC471D /* Binding+Extension.swift */; };
  57: 		FF66A51D2B76949A00FAAC1E /* Helpers.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF66A51C2B76949A00FAAC1E /* Helpers.swift */; };
  58: 		FF6B7B132B3EE7AC00E8FEA3 /* Throttler.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF6B7B122B3EE7AC00E8FEA3 /* Throttler.swift */; };
  59: 		FF6D820D2B90C925001183A8 /* CompletionPanelView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF6D820C2B90C925001183A8 /* CompletionPanelView.swift */; };
  60: 		FF6D82122B911079001183A8 /* PanelCompletionsVM.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF6D82112B911079001183A8 /* PanelCompletionsVM.swift */; };
  61: 		FF6D82152B911536001183A8 /* Accessibility.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF6D82142B911536001183A8 /* Accessibility.swift */; };
  62: 		FF6D82172B9122F9001183A8 /* CompletionInstructionSD.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF6D82162B9122F9001183A8 /* CompletionInstructionSD.swift */; };
  63: 		FF6D82192B912804001183A8 /* CompletionButtonView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF6D82182B912804001183A8 /* CompletionButtonView.swift */; };
  64: 		FF6D821C2B914202001183A8 /* CompletionsEditorView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF6D821B2B914202001183A8 /* CompletionsEditorView.swift */; };
  65: 		FF6D821E2B916053001183A8 /* UpsertCompletionView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF6D821D2B916053001183A8 /* UpsertCompletionView.swift */; };
  66: 		FF6D82202B916CC3001183A8 /* CompletionsEditor.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF6D821F2B916CC3001183A8 /* CompletionsEditor.swift */; };
  67: 		FF6D82252B9204F3001183A8 /* AsyncQueue.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF6D82242B9204F3001183A8 /* AsyncQueue.swift */; };
  68: 		FF79AEB62CE72ECE00EDE10C /* MarkdownUI in Frameworks */ = {isa = PBXBuildFile; productRef = FF79AEB52CE72ECE00EDE10C /* MarkdownUI */; };
  69: 		FF7FBE4C2B78E384000901F7 /* SamplePrompt.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF7FBE4B2B78E384000901F7 /* SamplePrompt.swift */; };
  70: 		FF911DF12B98F08800915E94 /* WrappingHStack in Frameworks */ = {isa = PBXBuildFile; productRef = FF911DF02B98F08800915E94 /* WrappingHStack */; };
  71: 		FF9300D42B778829000859F4 /* ChatView_macOS.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF9300D32B778829000859F4 /* ChatView_macOS.swift */; };
  72: 		FF9300DA2B781D97000859F4 /* ToolbarView_macOS.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF9300D92B781D97000859F4 /* ToolbarView_macOS.swift */; };
  73: 		FF9300DC2B7823B0000859F4 /* EmptyConversaitonView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF9300DB2B7823B0000859F4 /* EmptyConversaitonView.swift */; };
  74: 		FF9300DE2B782A28000859F4 /* UnreachableAPIView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF9300DD2B782A28000859F4 /* UnreachableAPIView.swift */; };
  75: 		FF9300E02B783945000859F4 /* InputFields_macOS.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF9300DF2B783945000859F4 /* InputFields_macOS.swift */; };
  76: 		FF9C920A2BF0B7B1004C8275 /* LanguageModel.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF9C92092BF0B7B1004C8275 /* LanguageModel.swift */; };
  77: 		FF9C920C2BF0C088004C8275 /* OptionsMenuView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF9C920B2BF0C088004C8275 /* OptionsMenuView.swift */; };
  78: 		FFB0327D2B312F3D0066A9DB /* RecordingView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFB0327C2B312F3D0066A9DB /* RecordingView.swift */; };
  79: 		FFB21A872B7BD0BA00D148A4 /* KeyboardReadable+Extension.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFB21A862B7BD0BA00D148A4 /* KeyboardReadable+Extension.swift */; };
  80: 		FFB56F432C0353CF0020AFFD /* ReadingAloudView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFB56F422C0353CF0020AFFD /* ReadingAloudView.swift */; };
  81: 		FFB56F462C0383B80020AFFD /* VoiceView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFB56F452C0383B80020AFFD /* VoiceView.swift */; };
  82: 		FFBB2C7B2C03D8AD00509204 /* Voice.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFBB2C7A2C03D8AD00509204 /* Voice.swift */; };
  83: 		FFBB2C7D2C047B6C00509204 /* Image+Extension.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFBB2C7C2C047B6B00509204 /* Image+Extension.swift */; };
  84: 		FFBBF4842B34881B008D611C /* SpeechRecogniser.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFBBF4832B34881B008D611C /* SpeechRecogniser.swift */; };
  85: 		FFBBF4882B34F9C8008D611C /* View+Extension.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFBBF4872B34F9C8008D611C /* View+Extension.swift */; };
  86: 		FFBBF48A2B350283008D611C /* SelectedImageView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFBBF4892B350283008D611C /* SelectedImageView.swift */; };
  87: 		FFBBF48C2B35051D008D611C /* UIImage+Extension.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFBBF48B2B35051D008D611C /* UIImage+Extension.swift */; };
  88: 		FFCF00F12C03209A00590E79 /* SpeechService.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFCF00F02C03209A00590E79 /* SpeechService.swift */; };
  89: 		FFD57E302BF29145003FEFF1 /* MarkdownColours.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFD57E2F2BF29145003FEFF1 /* MarkdownColours.swift */; };
  90: 		FFD57E322BF291B2003FEFF1 /* CodeBlockView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFD57E312BF291B2003FEFF1 /* CodeBlockView.swift */; };
  91: 		FFD5FAD22B8130490055AB51 /* Vortex in Frameworks */ = {isa = PBXBuildFile; productRef = FF464B122B8026DA008E5130 /* Vortex */; };
  92: 		FFD5FAD52B8130CE0055AB51 /* OllamaKit in Frameworks */ = {isa = PBXBuildFile; productRef = FFD5FAD42B8130CE0055AB51 /* OllamaKit */; };
  93: 		FFE21C782B82353A00A69B9C /* SleepTest.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFE21C772B82353A00A69B9C /* SleepTest.swift */; };
  94: 		FFE2C8232B9A657A00BD82F3 /* Accessibility.plist in Resources */ = {isa = PBXBuildFile; fileRef = FFE2C8222B9A657A00BD82F3 /* Accessibility.plist */; };
  95: 		FFEB9CA82BA04304004B1F3D /* NotificationMessage.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFEB9CA72BA04304004B1F3D /* NotificationMessage.swift */; };
  96: 		FFEC32912B24779A003E5C04 /* EnchantedApp.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFEC32902B24779A003E5C04 /* EnchantedApp.swift */; };
  97: 		FFEC32972B24779B003E5C04 /* Assets.xcassets in Resources */ = {isa = PBXBuildFile; fileRef = FFEC32962B24779B003E5C04 /* Assets.xcassets */; };
  98: 		FFEC329B2B24779B003E5C04 /* Preview Assets.xcassets in Resources */ = {isa = PBXBuildFile; fileRef = FFEC329A2B24779B003E5C04 /* Preview Assets.xcassets */; };
  99: 		FFEC32AA2B24797C003E5C04 /* ChatView_iOS.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFEC32A92B24797C003E5C04 /* ChatView_iOS.swift */; };
 100: 		FFEC9BDF2B8131B900AFBA63 /* HotKeys.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFEC9BDE2B8131B900AFBA63 /* HotKeys.swift */; };
 101: 		FFEC9BE12B81327B00AFBA63 /* DragAndDrop.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFEC9BE02B81327B00AFBA63 /* DragAndDrop.swift */; };
 102: 		FFEC9BE32B81358800AFBA63 /* DeallocPrinter.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFEC9BE22B81358800AFBA63 /* DeallocPrinter.swift */; };
 103: 		FFEC9BE72B813A8D00AFBA63 /* RemovableImage.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFEC9BE62B813A8D00AFBA63 /* RemovableImage.swift */; };
 104: 		FFFD00C22B92607800392AE6 /* CompletionsStore.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFFD00C12B92607800392AE6 /* CompletionsStore.swift */; };
 105: 		FFFD00C92B94CB5E00392AE6 /* AsyncAlgorithms in Frameworks */ = {isa = PBXBuildFile; productRef = FFFD00C82B94CB5E00392AE6 /* AsyncAlgorithms */; };
 106: /* End PBXBuildFile section */
 107: 
 108: /* Begin PBXFileReference section */
 109: 		3396E0752BD877D500213816 /* Menus.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = Menus.swift; sourceTree = "<group>"; };
 110: 		FF0146CA2B3DA1DF00A2A9F6 /* Settings.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = Settings.swift; sourceTree = "<group>"; };
 111: 		FF0146CC2B3DADCA00A2A9F6 /* HapticsService.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = HapticsService.swift; sourceTree = "<group>"; };
 112: 		FF0611F22C04BEFD00443B33 /* AVSpeechSynthesisVoice+Extension.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = "AVSpeechSynthesisVoice+Extension.swift"; sourceTree = "<group>"; };
 113: 		FF10022F2B2482BA0011A4DC /* ChatMessageView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = ChatMessageView.swift; sourceTree = "<group>"; };
 114: 		FF1002312B2483A20011A4DC /* Colours+Extension.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = "Colours+Extension.swift"; sourceTree = "<group>"; };
 115: 		FF1002382B24BBF20011A4DC /* Chat.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = Chat.swift; sourceTree = "<group>"; };
 116: 		FF10023D2B24F4900011A4DC /* OllamaService.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = OllamaService.swift; sourceTree = "<group>"; };
 117: 		FF10023F2B24F7320011A4DC /* SideBarMenuView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = SideBarMenuView.swift; sourceTree = "<group>"; };
 118: 		FF1002432B25BB730011A4DC /* ConversationStore.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = ConversationStore.swift; sourceTree = "<group>"; };
 119: 		FF1002452B25BCE70011A4DC /* LanguageModelStore.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = LanguageModelStore.swift; sourceTree = "<group>"; };
 120: 		FF1002492B25BE740011A4DC /* LanguageModelSD.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = LanguageModelSD.swift; sourceTree = "<group>"; };
 121: 		FF10024B2B25BEA00011A4DC /* MessageSD.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = MessageSD.swift; sourceTree = "<group>"; };
 122: 		FF10024D2B25C2A70011A4DC /* ConversationSD.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = ConversationSD.swift; sourceTree = "<group>"; };
 123: 		FF10024F2B25C79F0011A4DC /* SwiftDataService.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = SwiftDataService.swift; sourceTree = "<group>"; };
 124: 		FF1002512B2609970011A4DC /* ModelContext+Extension.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = "ModelContext+Extension.swift"; sourceTree = "<group>"; };
 125: 		FF1002532B261D460011A4DC /* MessageListVIew.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = MessageListVIew.swift; sourceTree = "<group>"; };
 126: 		FF1002592B2624C40011A4DC /* ConversationHistoryListView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = ConversationHistoryListView.swift; sourceTree = "<group>"; };
 127: 		FF10025B2B2625BE0011A4DC /* SidebarView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = SidebarView.swift; sourceTree = "<group>"; };
 128: 		FF10025D2B2648460011A4DC /* ConversationState.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = ConversationState.swift; sourceTree = "<group>"; };
 129: 		FF10025F2B26499B0011A4DC /* ConversationStatusView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = ConversationStatusView.swift; sourceTree = "<group>"; };
 130: 		FF1002672B2668790011A4DC /* Date+Extension.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = "Date+Extension.swift"; sourceTree = "<group>"; };
 131: 		FF1002692B2731C60011A4DC /* ModelSelectorView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = ModelSelectorView.swift; sourceTree = "<group>"; };
 132: 		FF10026C2B2751760011A4DC /* SettingsView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = SettingsView.swift; sourceTree = "<group>"; };
 133: 		FF1002722B276EC10011A4DC /* AppColorScheme.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = AppColorScheme.swift; sourceTree = "<group>"; };
 134: 		FF1002742B278C170011A4DC /* AppStore.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = AppStore.swift; sourceTree = "<group>"; };
 135: 		FF15EF692B826C0300D4A541 /* SimpleFloatingButton.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = SimpleFloatingButton.swift; sourceTree = "<group>"; };
 136: 		FF1BC3C62BA0757700A58043 /* SplashSyntaxHighlighter+Extension.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = "SplashSyntaxHighlighter+Extension.swift"; sourceTree = "<group>"; };
 137: 		FF226A642BE2A0EC00CC91F1 /* SelectTextSheet.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = SelectTextSheet.swift; sourceTree = "<group>"; };
 138: 		FF24B30D2B66BE8500AB618F /* RunningBorder.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = RunningBorder.swift; sourceTree = "<group>"; };
 139: 		FF2F03412B795E0B00349855 /* Clipboard.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = Clipboard.swift; sourceTree = "<group>"; };
 140: 		FF2F03432B79631800349855 /* Button+Extension.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = "Button+Extension.swift"; sourceTree = "<group>"; };
 141: 		FF2F03482B796A6500349855 /* HotkeyService.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = HotkeyService.swift; sourceTree = "<group>"; };
 142: 		FF33066B2B83BB31007B33E5 /* SidebarButton.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = SidebarButton.swift; sourceTree = "<group>"; };
 143: 		FF33066D2B83CFEC007B33E5 /* KeyboardShortcuts.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = KeyboardShortcuts.swift; sourceTree = "<group>"; };
 144: 		FF38F84E2B7A7B6700546B56 /* MenuBarControlView_macOS.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = MenuBarControlView_macOS.swift; sourceTree = "<group>"; };
 145: 		FF38F8502B7A919C00546B56 /* MenuBarControl_macOS.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = MenuBarControl_macOS.swift; sourceTree = "<group>"; };
 146: 		FF38F8522B7AA9C400546B56 /* ApplicationEntry.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = ApplicationEntry.swift; sourceTree = "<group>"; };
 147: 		FF38F8552B7AB01E00546B56 /* FloatingPanel.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = FloatingPanel.swift; sourceTree = "<group>"; };
 148: 		FF38F8572B7AB1AD00546B56 /* PanelManager.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = PanelManager.swift; sourceTree = "<group>"; };
 149: 		FF38F8592B7AB28300546B56 /* PromptPanelView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = PromptPanelView.swift; sourceTree = "<group>"; };
 150: 		FF38F85B2B7ABC2C00546B56 /* PromptPanel.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = PromptPanel.swift; sourceTree = "<group>"; };
 151: 		FF5FA0D52B35169400BC471D /* Binding+Extension.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = "Binding+Extension.swift"; sourceTree = "<group>"; };
 152: 		FF66A51C2B76949A00FAAC1E /* Helpers.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = Helpers.swift; sourceTree = "<group>"; };
 153: 		FF6B7B122B3EE7AC00E8FEA3 /* Throttler.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = Throttler.swift; sourceTree = "<group>"; };
 154: 		FF6D820C2B90C925001183A8 /* CompletionPanelView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = CompletionPanelView.swift; sourceTree = "<group>"; };
 155: 		FF6D82112B911079001183A8 /* PanelCompletionsVM.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = PanelCompletionsVM.swift; sourceTree = "<group>"; };
 156: 		FF6D82142B911536001183A8 /* Accessibility.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = Accessibility.swift; sourceTree = "<group>"; };
 157: 		FF6D82162B9122F9001183A8 /* CompletionInstructionSD.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = CompletionInstructionSD.swift; sourceTree = "<group>"; };
 158: 		FF6D82182B912804001183A8 /* CompletionButtonView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = CompletionButtonView.swift; sourceTree = "<group>"; };
 159: 		FF6D821B2B914202001183A8 /* CompletionsEditorView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = CompletionsEditorView.swift; sourceTree = "<group>"; };
 160: 		FF6D821D2B916053001183A8 /* UpsertCompletionView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = UpsertCompletionView.swift; sourceTree = "<group>"; };
 161: 		FF6D821F2B916CC3001183A8 /* CompletionsEditor.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = CompletionsEditor.swift; sourceTree = "<group>"; };
 162: 		FF6D82242B9204F3001183A8 /* AsyncQueue.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = AsyncQueue.swift; sourceTree = "<group>"; };
 163: 		FF7FBE4B2B78E384000901F7 /* SamplePrompt.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = SamplePrompt.swift; sourceTree = "<group>"; };
 164: 		FF9300D32B778829000859F4 /* ChatView_macOS.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = ChatView_macOS.swift; sourceTree = "<group>"; };
 165: 		FF9300D92B781D97000859F4 /* ToolbarView_macOS.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = ToolbarView_macOS.swift; sourceTree = "<group>"; };
 166: 		FF9300DB2B7823B0000859F4 /* EmptyConversaitonView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = EmptyConversaitonView.swift; sourceTree = "<group>"; };
 167: 		FF9300DD2B782A28000859F4 /* UnreachableAPIView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = UnreachableAPIView.swift; sourceTree = "<group>"; };
 168: 		FF9300DF2B783945000859F4 /* InputFields_macOS.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = InputFields_macOS.swift; sourceTree = "<group>"; };
 169: 		FF9C92072BF0B464004C8275 /* EnchantedDebug.entitlements */ = {isa = PBXFileReference; fileEncoding = 4; lastKnownFileType = text.plist.entitlements; path = EnchantedDebug.entitlements; sourceTree = "<group>"; };
 170: 		FF9C92092BF0B7B1004C8275 /* LanguageModel.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = LanguageModel.swift; sourceTree = "<group>"; };
 171: 		FF9C920B2BF0C088004C8275 /* OptionsMenuView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = OptionsMenuView.swift; sourceTree = "<group>"; };
 172: 		FFB0327C2B312F3D0066A9DB /* RecordingView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = RecordingView.swift; sourceTree = "<group>"; };
 173: 		FFB21A862B7BD0BA00D148A4 /* KeyboardReadable+Extension.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = "KeyboardReadable+Extension.swift"; sourceTree = "<group>"; };
 174: 		FFB56F422C0353CF0020AFFD /* ReadingAloudView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = ReadingAloudView.swift; sourceTree = "<group>"; };
 175: 		FFB56F452C0383B80020AFFD /* VoiceView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = VoiceView.swift; sourceTree = "<group>"; };
 176: 		FFBB2C7A2C03D8AD00509204 /* Voice.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = Voice.swift; sourceTree = "<group>"; };
 177: 		FFBB2C7C2C047B6B00509204 /* Image+Extension.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = "Image+Extension.swift"; sourceTree = "<group>"; };
 178: 		FFBBF4822B348345008D611C /* Info.plist */ = {isa = PBXFileReference; lastKnownFileType = text.plist; path = Info.plist; sourceTree = "<group>"; };
 179: 		FFBBF4832B34881B008D611C /* SpeechRecogniser.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = SpeechRecogniser.swift; sourceTree = "<group>"; };
 180: 		FFBBF4872B34F9C8008D611C /* View+Extension.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = "View+Extension.swift"; sourceTree = "<group>"; };
 181: 		FFBBF4892B350283008D611C /* SelectedImageView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = SelectedImageView.swift; sourceTree = "<group>"; };
 182: 		FFBBF48B2B35051D008D611C /* UIImage+Extension.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = "UIImage+Extension.swift"; sourceTree = "<group>"; };
 183: 		FFCF00F02C03209A00590E79 /* SpeechService.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = SpeechService.swift; sourceTree = "<group>"; };
 184: 		FFD57E2F2BF29145003FEFF1 /* MarkdownColours.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = MarkdownColours.swift; sourceTree = "<group>"; };
 185: 		FFD57E312BF291B2003FEFF1 /* CodeBlockView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = CodeBlockView.swift; sourceTree = "<group>"; };
 186: 		FFE21C772B82353A00A69B9C /* SleepTest.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = SleepTest.swift; sourceTree = "<group>"; };
 187: 		FFE2C8222B9A657A00BD82F3 /* Accessibility.plist */ = {isa = PBXFileReference; lastKnownFileType = text.plist.xml; path = Accessibility.plist; sourceTree = "<group>"; };
 188: 		FFEB9CA72BA04304004B1F3D /* NotificationMessage.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = NotificationMessage.swift; sourceTree = "<group>"; };
 189: 		FFEC328D2B24779A003E5C04 /* Enchanted.app */ = {isa = PBXFileReference; explicitFileType = wrapper.application; includeInIndex = 0; path = Enchanted.app; sourceTree = BUILT_PRODUCTS_DIR; };
 190: 		FFEC32902B24779A003E5C04 /* EnchantedApp.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = EnchantedApp.swift; sourceTree = "<group>"; };
 191: 		FFEC32962B24779B003E5C04 /* Assets.xcassets */ = {isa = PBXFileReference; lastKnownFileType = folder.assetcatalog; path = Assets.xcassets; sourceTree = "<group>"; };
 192: 		FFEC32982B24779B003E5C04 /* Enchanted.entitlements */ = {isa = PBXFileReference; lastKnownFileType = text.plist.entitlements; path = Enchanted.entitlements; sourceTree = "<group>"; };
 193: 		FFEC329A2B24779B003E5C04 /* Preview Assets.xcassets */ = {isa = PBXFileReference; lastKnownFileType = folder.assetcatalog; path = "Preview Assets.xcassets"; sourceTree = "<group>"; };
 194: 		FFEC32A92B24797C003E5C04 /* ChatView_iOS.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = ChatView_iOS.swift; sourceTree = "<group>"; };
 195: 		FFEC9BDE2B8131B900AFBA63 /* HotKeys.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = HotKeys.swift; sourceTree = "<group>"; };
 196: 		FFEC9BE02B81327B00AFBA63 /* DragAndDrop.swift */ = {isa = PBXFileReference; fileEncoding = 4; lastKnownFileType = sourcecode.swift; path = DragAndDrop.swift; sourceTree = "<group>"; };
 197: 		FFEC9BE22B81358800AFBA63 /* DeallocPrinter.swift */ = {isa = PBXFileReference; fileEncoding = 4; lastKnownFileType = sourcecode.swift; path = DeallocPrinter.swift; sourceTree = "<group>"; };
 198: 		FFEC9BE62B813A8D00AFBA63 /* RemovableImage.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = RemovableImage.swift; sourceTree = "<group>"; };
 199: 		FFFD00C12B92607800392AE6 /* CompletionsStore.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = CompletionsStore.swift; sourceTree = "<group>"; };
 200: /* End PBXFileReference section */
 201: 
 202: /* Begin PBXFrameworksBuildPhase section */
 203: 		FFEC328A2B24779A003E5C04 /* Frameworks */ = {
 204: 			isa = PBXFrameworksBuildPhase;
 205: 			buildActionMask = 2147483647;
 206: 			files = (
 207: 				FFD5FAD52B8130CE0055AB51 /* OllamaKit in Frameworks */,
 208: 				FFD5FAD22B8130490055AB51 /* Vortex in Frameworks */,
 209: 				FF0611F12C04A2FB00443B33 /* Splash in Frameworks */,
 210: 				FF79AEB62CE72ECE00EDE10C /* MarkdownUI in Frameworks */,
 211: 				FF0611EA2C04A11800443B33 /* Magnet in Frameworks */,
 212: 				FF911DF12B98F08800915E94 /* WrappingHStack in Frameworks */,
 213: 				FF1002662B2653EE0011A4DC /* ActivityIndicatorView in Frameworks */,
 214: 				FFFD00C92B94CB5E00392AE6 /* AsyncAlgorithms in Frameworks */,
 215: 				FF4A605D2BC3587800D7BD4F /* KeyboardShortcuts in Frameworks */,
 216: 			);
 217: 			runOnlyForDeploymentPostprocessing = 0;
 218: 		};
 219: /* End PBXFrameworksBuildPhase section */
 220: 
 221: /* Begin PBXGroup section */
 222: 		FF10022C2B2481790011A4DC /* Components */ = {
 223: 			isa = PBXGroup;
 224: 			children = (
 225: 				FF10025F2B26499B0011A4DC /* ConversationStatusView.swift */,
 226: 				FF9300DB2B7823B0000859F4 /* EmptyConversaitonView.swift */,
 227: 				FF1002532B261D460011A4DC /* MessageListVIew.swift */,
 228: 				FF1002692B2731C60011A4DC /* ModelSelectorView.swift */,
 229: 				FF9C920B2BF0C088004C8275 /* OptionsMenuView.swift */,
 230: 				FFB56F422C0353CF0020AFFD /* ReadingAloudView.swift */,
 231: 				FFEC9BE62B813A8D00AFBA63 /* RemovableImage.swift */,
 232: 				FF24B30D2B66BE8500AB618F /* RunningBorder.swift */,
 233: 				FFBBF4892B350283008D611C /* SelectedImageView.swift */,
 234: 				FF9300DD2B782A28000859F4 /* UnreachableAPIView.swift */,
 235: 				FFD57E2E2BF2901A003FEFF1 /* ChatMessages */,
 236: 				FFB0327B2B312F310066A9DB /* Recorder */,
 237: 			);
 238: 			path = Components;
 239: 			sourceTree = "<group>";
 240: 		};
 241: 		FF1002412B25BAAE0011A4DC /* SwiftData */ = {
 242: 			isa = PBXGroup;
 243: 			children = (
 244: 				FF1002482B25BE580011A4DC /* Models */,
 245: 			);
 246: 			path = SwiftData;
 247: 			sourceTree = "<group>";
 248: 		};
 249: 		FF1002422B25BAC50011A4DC /* Stores */ = {
 250: 			isa = PBXGroup;
 251: 			children = (
 252: 				FF1002742B278C170011A4DC /* AppStore.swift */,
 253: 				FFFD00C12B92607800392AE6 /* CompletionsStore.swift */,
 254: 				FF1002432B25BB730011A4DC /* ConversationStore.swift */,
 255: 				FF1002452B25BCE70011A4DC /* LanguageModelStore.swift */,
 256: 			);
 257: 			path = Stores;
 258: 			sourceTree = "<group>";
 259: 		};
 260: 		FF1002482B25BE580011A4DC /* Models */ = {
 261: 			isa = PBXGroup;
 262: 			children = (
 263: 				FF6D82162B9122F9001183A8 /* CompletionInstructionSD.swift */,
 264: 				FF10024D2B25C2A70011A4DC /* ConversationSD.swift */,
 265: 				FF1002492B25BE740011A4DC /* LanguageModelSD.swift */,
 266: 				FF10024B2B25BEA00011A4DC /* MessageSD.swift */,
 267: 			);
 268: 			path = Models;
 269: 			sourceTree = "<group>";
 270: 		};
 271: 		FF1002552B2624790011A4DC /* Sidebar */ = {
 272: 			isa = PBXGroup;
 273: 			children = (
 274: 				FF1002562B2624800011A4DC /* Components */,
 275: 				FF10025B2B2625BE0011A4DC /* SidebarView.swift */,
 276: 			);
 277: 			path = Sidebar;
 278: 			sourceTree = "<group>";
 279: 		};
 280: 		FF1002562B2624800011A4DC /* Components */ = {
 281: 			isa = PBXGroup;
 282: 			children = (
 283: 				FF10023F2B24F7320011A4DC /* SideBarMenuView.swift */,
 284: 				FF1002592B2624C40011A4DC /* ConversationHistoryListView.swift */,
 285: 				FF33066B2B83BB31007B33E5 /* SidebarButton.swift */,
 286: 				FF33066D2B83CFEC007B33E5 /* KeyboardShortcuts.swift */,
 287: 			);
 288: 			path = Components;
 289: 			sourceTree = "<group>";
 290: 		};
 291: 		FF10026B2B2751630011A4DC /* Settings */ = {
 292: 			isa = PBXGroup;
 293: 			children = (
 294: 				FF10026C2B2751760011A4DC /* SettingsView.swift */,
 295: 				FF0146CA2B3DA1DF00A2A9F6 /* Settings.swift */,
 296: 			);
 297: 			path = Settings;
 298: 			sourceTree = "<group>";
 299: 		};
 300: 		FF15EF682B826BF400D4A541 /* Components */ = {
 301: 			isa = PBXGroup;
 302: 			children = (
 303: 				FF15EF692B826C0300D4A541 /* SimpleFloatingButton.swift */,
 304: 			);
 305: 			path = Components;
 306: 			sourceTree = "<group>";
 307: 		};
 308: 		FF226A632BE2A0E100CC91F1 /* Components */ = {
 309: 			isa = PBXGroup;
 310: 			children = (
 311: 				FF226A642BE2A0EC00CC91F1 /* SelectTextSheet.swift */,
 312: 			);
 313: 			path = Components;
 314: 			sourceTree = "<group>";
 315: 		};
 316: 		FF38F84D2B7A7B5300546B56 /* MenuBar */ = {
 317: 			isa = PBXGroup;
 318: 			children = (
 319: 				FF38F84E2B7A7B6700546B56 /* MenuBarControlView_macOS.swift */,
 320: 				FF38F8502B7A919C00546B56 /* MenuBarControl_macOS.swift */,
 321: 			);
 322: 			path = MenuBar;
 323: 			sourceTree = "<group>";
 324: 		};
 325: 		FF38F8542B7AB00100546B56 /* PromptPanel */ = {
 326: 			isa = PBXGroup;
 327: 			children = (
 328: 				FF38F8552B7AB01E00546B56 /* FloatingPanel.swift */,
 329: 				FF6D82112B911079001183A8 /* PanelCompletionsVM.swift */,
 330: 				FF38F8572B7AB1AD00546B56 /* PanelManager.swift */,
 331: 				FF38F85B2B7ABC2C00546B56 /* PromptPanel.swift */,
 332: 			);
 333: 			path = PromptPanel;
 334: 			sourceTree = "<group>";
 335: 		};
 336: 		FF464B142B80BB9C008E5130 /* Helpers */ = {
 337: 			isa = PBXGroup;
 338: 			children = (
 339: 				FFEC9BE22B81358800AFBA63 /* DeallocPrinter.swift */,
 340: 				FFEC9BDE2B8131B900AFBA63 /* HotKeys.swift */,
 341: 				FFE21C772B82353A00A69B9C /* SleepTest.swift */,
 342: 				FF6D82142B911536001183A8 /* Accessibility.swift */,
 343: 				FF6D82242B9204F3001183A8 /* AsyncQueue.swift */,
 344: 			);
 345: 			path = Helpers;
 346: 			sourceTree = "<group>";
 347: 		};
 348: 		FF464B172B810966008E5130 /* Components */ = {
 349: 			isa = PBXGroup;
 350: 			children = (
 351: 				FF6D82182B912804001183A8 /* CompletionButtonView.swift */,
 352: 				FF6D820C2B90C925001183A8 /* CompletionPanelView.swift */,
 353: 				FFEC9BE02B81327B00AFBA63 /* DragAndDrop.swift */,
 354: 				FF38F8592B7AB28300546B56 /* PromptPanelView.swift */,
 355: 			);
 356: 			path = Components;
 357: 			sourceTree = "<group>";
 358: 		};
 359: 		FF66A51E2B77788D00FAAC1E /* macOS */ = {
 360: 			isa = PBXGroup;
 361: 			children = (
 362: 				3396E0752BD877D500213816 /* Menus.swift */,
 363: 				FF9300D52B778F1A000859F4 /* Chat */,
 364: 				FF6D821A2B9141F0001183A8 /* CompletionsEditor */,
 365: 				FF464B172B810966008E5130 /* Components */,
 366: 				FF38F84D2B7A7B5300546B56 /* MenuBar */,
 367: 				FF38F8542B7AB00100546B56 /* PromptPanel */,
 368: 			);
 369: 			path = macOS;
 370: 			sourceTree = "<group>";
 371: 		};
 372: 		FF66A51F2B77789300FAAC1E /* iOS */ = {
 373: 			isa = PBXGroup;
 374: 			children = (
 375: 				FF226A632BE2A0E100CC91F1 /* Components */,
 376: 				FFEC32A92B24797C003E5C04 /* ChatView_iOS.swift */,
 377: 			);
 378: 			path = iOS;
 379: 			sourceTree = "<group>";
 380: 		};
 381: 		FF6D821A2B9141F0001183A8 /* CompletionsEditor */ = {
 382: 			isa = PBXGroup;
 383: 			children = (
 384: 				FF6D821F2B916CC3001183A8 /* CompletionsEditor.swift */,
 385: 				FF6D821B2B914202001183A8 /* CompletionsEditorView.swift */,
 386: 				FF6D821D2B916053001183A8 /* UpsertCompletionView.swift */,
 387: 			);
 388: 			path = CompletionsEditor;
 389: 			sourceTree = "<group>";
 390: 		};
 391: 		FF9300D52B778F1A000859F4 /* Chat */ = {
 392: 			isa = PBXGroup;
 393: 			children = (
 394: 				FF9300D62B778F23000859F4 /* Components */,
 395: 				FF9300D32B778829000859F4 /* ChatView_macOS.swift */,
 396: 			);
 397: 			path = Chat;
 398: 			sourceTree = "<group>";
 399: 		};
 400: 		FF9300D62B778F23000859F4 /* Components */ = {
 401: 			isa = PBXGroup;
 402: 			children = (
 403: 				FF9300DF2B783945000859F4 /* InputFields_macOS.swift */,
 404: 				FF9300D92B781D97000859F4 /* ToolbarView_macOS.swift */,
 405: 			);
 406: 			path = Components;
 407: 			sourceTree = "<group>";
 408: 		};
 409: 		FFB0327B2B312F310066A9DB /* Recorder */ = {
 410: 			isa = PBXGroup;
 411: 			children = (
 412: 				FFB0327C2B312F3D0066A9DB /* RecordingView.swift */,
 413: 				FFBBF4832B34881B008D611C /* SpeechRecogniser.swift */,
 414: 			);
 415: 			path = Recorder;
 416: 			sourceTree = "<group>";
 417: 		};
 418: 		FFB56F442C0383A60020AFFD /* Voice */ = {
 419: 			isa = PBXGroup;
 420: 			children = (
 421: 				FFB56F452C0383B80020AFFD /* VoiceView.swift */,
 422: 				FFBB2C7A2C03D8AD00509204 /* Voice.swift */,
 423: 			);
 424: 			path = Voice;
 425: 			sourceTree = "<group>";
 426: 		};
 427: 		FFD57E2E2BF2901A003FEFF1 /* ChatMessages */ = {
 428: 			isa = PBXGroup;
 429: 			children = (
 430: 				FF10022F2B2482BA0011A4DC /* ChatMessageView.swift */,
 431: 				FFD57E312BF291B2003FEFF1 /* CodeBlockView.swift */,
 432: 				FFD57E2F2BF29145003FEFF1 /* MarkdownColours.swift */,
 433: 			);
 434: 			path = ChatMessages;
 435: 			sourceTree = "<group>";
 436: 		};
 437: 		FFEC32842B24779A003E5C04 = {
 438: 			isa = PBXGroup;
 439: 			children = (
 440: 				FFEC328F2B24779A003E5C04 /* Enchanted */,
 441: 				FFEC328E2B24779A003E5C04 /* Products */,
 442: 			);
 443: 			sourceTree = "<group>";
 444: 		};
 445: 		FFEC328E2B24779A003E5C04 /* Products */ = {
 446: 			isa = PBXGroup;
 447: 			children = (
 448: 				FFEC328D2B24779A003E5C04 /* Enchanted.app */,
 449: 			);
 450: 			name = Products;
 451: 			sourceTree = "<group>";
 452: 		};
 453: 		FFEC328F2B24779A003E5C04 /* Enchanted */ = {
 454: 			isa = PBXGroup;
 455: 			children = (
 456: 				FF9C92072BF0B464004C8275 /* EnchantedDebug.entitlements */,
 457: 				FFEC32982B24779B003E5C04 /* Enchanted.entitlements */,
 458: 				FFE2C8222B9A657A00BD82F3 /* Accessibility.plist */,
 459: 				FFBBF4822B348345008D611C /* Info.plist */,
 460: 				FFEC32962B24779B003E5C04 /* Assets.xcassets */,
 461: 				FFEC32A12B24783B003E5C04 /* Application */,
 462: 				FFEC32A22B247858003E5C04 /* Extensions */,
 463: 				FF464B142B80BB9C008E5130 /* Helpers */,
 464: 				FFEC32A32B24786D003E5C04 /* Models */,
 465: 				FFEC32992B24779B003E5C04 /* Preview Content */,
 466: 				FFEC32A42B247874003E5C04 /* Services */,
 467: 				FF1002422B25BAC50011A4DC /* Stores */,
 468: 				FF1002412B25BAAE0011A4DC /* SwiftData */,
 469: 				FFEC32A52B247879003E5C04 /* UI */,
 470: 			);
 471: 			path = Enchanted;
 472: 			sourceTree = "<group>";
 473: 		};
 474: 		FFEC32992B24779B003E5C04 /* Preview Content */ = {
 475: 			isa = PBXGroup;
 476: 			children = (
 477: 				FFEC329A2B24779B003E5C04 /* Preview Assets.xcassets */,
 478: 			);
 479: 			path = "Preview Content";
 480: 			sourceTree = "<group>";
 481: 		};
 482: 		FFEC32A12B24783B003E5C04 /* Application */ = {
 483: 			isa = PBXGroup;
 484: 			children = (
 485: 				FFEC32902B24779A003E5C04 /* EnchantedApp.swift */,
 486: 			);
 487: 			path = Application;
 488: 			sourceTree = "<group>";
 489: 		};
 490: 		FFEC32A22B247858003E5C04 /* Extensions */ = {
 491: 			isa = PBXGroup;
 492: 			children = (
 493: 				FF5FA0D52B35169400BC471D /* Binding+Extension.swift */,
 494: 				FF2F03432B79631800349855 /* Button+Extension.swift */,
 495: 				FF1002312B2483A20011A4DC /* Colours+Extension.swift */,
 496: 				FF1002672B2668790011A4DC /* Date+Extension.swift */,
 497: 				FF1002512B2609970011A4DC /* ModelContext+Extension.swift */,
 498: 				FFBBF48B2B35051D008D611C /* UIImage+Extension.swift */,
 499: 				FFBBF4872B34F9C8008D611C /* View+Extension.swift */,
 500: 				FFB21A862B7BD0BA00D148A4 /* KeyboardReadable+Extension.swift */,
 501: 				FF1BC3C62BA0757700A58043 /* SplashSyntaxHighlighter+Extension.swift */,
 502: 				FFBB2C7C2C047B6B00509204 /* Image+Extension.swift */,
 503: 				FF0611F22C04BEFD00443B33 /* AVSpeechSynthesisVoice+Extension.swift */,
 504: 			);
 505: 			path = Extensions;
 506: 			sourceTree = "<group>";
 507: 		};
 508: 		FFEC32A32B24786D003E5C04 /* Models */ = {
 509: 			isa = PBXGroup;
 510: 			children = (
 511: 				FF1002722B276EC10011A4DC /* AppColorScheme.swift */,
 512: 				FF10025D2B2648460011A4DC /* ConversationState.swift */,
 513: 				FF9C92092BF0B7B1004C8275 /* LanguageModel.swift */,
 514: 				FFEB9CA72BA04304004B1F3D /* NotificationMessage.swift */,
 515: 				FF7FBE4B2B78E384000901F7 /* SamplePrompt.swift */,
 516: 			);
 517: 			path = Models;
 518: 			sourceTree = "<group>";
 519: 		};
 520: 		FFEC32A42B247874003E5C04 /* Services */ = {
 521: 			isa = PBXGroup;
 522: 			children = (
 523: 				FF2F03412B795E0B00349855 /* Clipboard.swift */,
 524: 				FF0146CC2B3DADCA00A2A9F6 /* HapticsService.swift */,
 525: 				FF2F03482B796A6500349855 /* HotkeyService.swift */,
 526: 				FF10023D2B24F4900011A4DC /* OllamaService.swift */,
 527: 				FF10024F2B25C79F0011A4DC /* SwiftDataService.swift */,
 528: 				FF6B7B122B3EE7AC00E8FEA3 /* Throttler.swift */,
 529: 				FFCF00F02C03209A00590E79 /* SpeechService.swift */,
 530: 			);
 531: 			path = Services;
 532: 			sourceTree = "<group>";
 533: 		};
 534: 		FFEC32A52B247879003E5C04 /* UI */ = {
 535: 			isa = PBXGroup;
 536: 			children = (
 537: 				FF66A51F2B77789300FAAC1E /* iOS */,
 538: 				FF66A51E2B77788D00FAAC1E /* macOS */,
 539: 				FFEC32A72B247896003E5C04 /* Shared */,
 540: 				FF66A51C2B76949A00FAAC1E /* Helpers.swift */,
 541: 			);
 542: 			path = UI;
 543: 			sourceTree = "<group>";
 544: 		};
 545: 		FFEC32A72B247896003E5C04 /* Shared */ = {
 546: 			isa = PBXGroup;
 547: 			children = (
 548: 				FF38F8522B7AA9C400546B56 /* ApplicationEntry.swift */,
 549: 				FFEC32A82B24795A003E5C04 /* Chat */,
 550: 				FF15EF682B826BF400D4A541 /* Components */,
 551: 				FFB56F442C0383A60020AFFD /* Voice */,
 552: 				FF10026B2B2751630011A4DC /* Settings */,
 553: 				FF1002552B2624790011A4DC /* Sidebar */,
 554: 			);
 555: 			path = Shared;
 556: 			sourceTree = "<group>";
 557: 		};
 558: 		FFEC32A82B24795A003E5C04 /* Chat */ = {
 559: 			isa = PBXGroup;
 560: 			children = (
 561: 				FF10022C2B2481790011A4DC /* Components */,
 562: 				FF1002382B24BBF20011A4DC /* Chat.swift */,
 563: 			);
 564: 			path = Chat;
 565: 			sourceTree = "<group>";
 566: 		};
 567: /* End PBXGroup section */
 568: 
 569: /* Begin PBXNativeTarget section */
 570: 		FFEC328C2B24779A003E5C04 /* Enchanted */ = {
 571: 			isa = PBXNativeTarget;
 572: 			buildConfigurationList = FFEC329E2B24779B003E5C04 /* Build configuration list for PBXNativeTarget "Enchanted" */;
 573: 			buildPhases = (
 574: 				FFEC32892B24779A003E5C04 /* Sources */,
 575: 				FFEC328A2B24779A003E5C04 /* Frameworks */,
 576: 				FFEC328B2B24779A003E5C04 /* Resources */,
 577: 			);
 578: 			buildRules = (
 579: 			);
 580: 			dependencies = (
 581: 			);
 582: 			name = Enchanted;
 583: 			packageProductDependencies = (
 584: 				FF1002652B2653EE0011A4DC /* ActivityIndicatorView */,
 585: 				FF464B122B8026DA008E5130 /* Vortex */,
 586: 				FFD5FAD42B8130CE0055AB51 /* OllamaKit */,
 587: 				FFFD00C82B94CB5E00392AE6 /* AsyncAlgorithms */,
 588: 				FF911DF02B98F08800915E94 /* WrappingHStack */,
 589: 				FF4A605C2BC3587800D7BD4F /* KeyboardShortcuts */,
 590: 				FF0611E92C04A11800443B33 /* Magnet */,
 591: 				FF0611F02C04A2FB00443B33 /* Splash */,
 592: 				FF79AEB52CE72ECE00EDE10C /* MarkdownUI */,
 593: 			);
 594: 			productName = Enchanted;
 595: 			productReference = FFEC328D2B24779A003E5C04 /* Enchanted.app */;
 596: 			productType = "com.apple.product-type.application";
 597: 		};
 598: /* End PBXNativeTarget section */
 599: 
 600: /* Begin PBXProject section */
 601: 		FFEC32852B24779A003E5C04 /* Project object */ = {
 602: 			isa = PBXProject;
 603: 			attributes = {
 604: 				BuildIndependentTargetsInParallel = 1;
 605: 				LastSwiftUpdateCheck = 1500;
 606: 				LastUpgradeCheck = 1510;
 607: 				TargetAttributes = {
 608: 					FFEC328C2B24779A003E5C04 = {
 609: 						CreatedOnToolsVersion = 15.0.1;
 610: 					};
 611: 				};
 612: 			};
 613: 			buildConfigurationList = FFEC32882B24779A003E5C04 /* Build configuration list for PBXProject "Enchanted" */;
 614: 			compatibilityVersion = "Xcode 14.0";
 615: 			developmentRegion = en;
 616: 			hasScannedForEncodings = 0;
 617: 			knownRegions = (
 618: 				en,
 619: 				Base,
 620: 			);
 621: 			mainGroup = FFEC32842B24779A003E5C04;
 622: 			packageReferences = (
 623: 				FF1002642B2653EE0011A4DC /* XCRemoteSwiftPackageReference "ActivityIndicatorView" */,
 624: 				FF464B112B8026DA008E5130 /* XCRemoteSwiftPackageReference "Vortex" */,
 625: 				FFD5FAD32B8130CE0055AB51 /* XCRemoteSwiftPackageReference "OllamaKit" */,
 626: 				FFFD00C72B94CB5E00392AE6 /* XCRemoteSwiftPackageReference "swift-async-algorithms" */,
 627: 				FF911DEF2B98F08800915E94 /* XCRemoteSwiftPackageReference "WrappingHStack" */,
 628: 				FF4A605B2BC3587800D7BD4F /* XCRemoteSwiftPackageReference "KeyboardShortcuts" */,
 629: 				FF0611E82C04A11800443B33 /* XCRemoteSwiftPackageReference "Magnet" */,
 630: 				FF0611EF2C04A2FB00443B33 /* XCRemoteSwiftPackageReference "Splash" */,
 631: 				FF79AEB42CE72ECE00EDE10C /* XCRemoteSwiftPackageReference "swift-markdown-ui" */,
 632: 			);
 633: 			productRefGroup = FFEC328E2B24779A003E5C04 /* Products */;
 634: 			projectDirPath = "";
 635: 			projectRoot = "";
 636: 			targets = (
 637: 				FFEC328C2B24779A003E5C04 /* Enchanted */,
 638: 			);
 639: 		};
 640: /* End PBXProject section */
 641: 
 642: /* Begin PBXResourcesBuildPhase section */
 643: 		FFEC328B2B24779A003E5C04 /* Resources */ = {
 644: 			isa = PBXResourcesBuildPhase;
 645: 			buildActionMask = 2147483647;
 646: 			files = (
 647: 				FFEC329B2B24779B003E5C04 /* Preview Assets.xcassets in Resources */,
 648: 				FFE2C8232B9A657A00BD82F3 /* Accessibility.plist in Resources */,
 649: 				FFEC32972B24779B003E5C04 /* Assets.xcassets in Resources */,
 650: 			);
 651: 			runOnlyForDeploymentPostprocessing = 0;
 652: 		};
 653: /* End PBXResourcesBuildPhase section */
 654: 
 655: /* Begin PBXSourcesBuildPhase section */
 656: 		FFEC32892B24779A003E5C04 /* Sources */ = {
 657: 			isa = PBXSourcesBuildPhase;
 658: 			buildActionMask = 2147483647;
 659: 			files = (
 660: 				FF6D82252B9204F3001183A8 /* AsyncQueue.swift in Sources */,
 661: 				FF1002442B25BB730011A4DC /* ConversationStore.swift in Sources */,
 662: 				FF15EF6A2B826C0300D4A541 /* SimpleFloatingButton.swift in Sources */,
 663: 				FF24B30E2B66BE8500AB618F /* RunningBorder.swift in Sources */,
 664: 				FF1002602B26499B0011A4DC /* ConversationStatusView.swift in Sources */,
 665: 				FF10024C2B25BEA00011A4DC /* MessageSD.swift in Sources */,
 666: 				FFCF00F12C03209A00590E79 /* SpeechService.swift in Sources */,
 667: 				FF10023E2B24F4900011A4DC /* OllamaService.swift in Sources */,
 668: 				FFBBF48C2B35051D008D611C /* UIImage+Extension.swift in Sources */,
 669: 				FF1002302B2482BA0011A4DC /* ChatMessageView.swift in Sources */,
 670: 				FF1002322B2483A20011A4DC /* Colours+Extension.swift in Sources */,
 671: 				FFB21A872B7BD0BA00D148A4 /* KeyboardReadable+Extension.swift in Sources */,
 672: 				FF1BC3C72BA0757700A58043 /* SplashSyntaxHighlighter+Extension.swift in Sources */,
 673: 				FF33066E2B83CFEC007B33E5 /* KeyboardShortcuts.swift in Sources */,
 674: 				FF66A51D2B76949A00FAAC1E /* Helpers.swift in Sources */,
 675: 				FF10026A2B2731C60011A4DC /* ModelSelectorView.swift in Sources */,
 676: 				FF38F84F2B7A7B6700546B56 /* MenuBarControlView_macOS.swift in Sources */,
 677: 				FFB56F462C0383B80020AFFD /* VoiceView.swift in Sources */,
 678: 				FFBBF48A2B350283008D611C /* SelectedImageView.swift in Sources */,
 679: 				FFEC9BDF2B8131B900AFBA63 /* HotKeys.swift in Sources */,
 680: 				FF2F03492B796A6500349855 /* HotkeyService.swift in Sources */,
 681: 				FF9300E02B783945000859F4 /* InputFields_macOS.swift in Sources */,
 682: 				FF38F8562B7AB01E00546B56 /* FloatingPanel.swift in Sources */,
 683: 				FF0146CB2B3DA1DF00A2A9F6 /* Settings.swift in Sources */,
 684: 				FF0611F32C04BEFE00443B33 /* AVSpeechSynthesisVoice+Extension.swift in Sources */,
 685: 				FF38F8532B7AA9C400546B56 /* ApplicationEntry.swift in Sources */,
 686: 				FF6D82202B916CC3001183A8 /* CompletionsEditor.swift in Sources */,
 687: 				FF38F85C2B7ABC2C00546B56 /* PromptPanel.swift in Sources */,
 688: 				FFEC9BE12B81327B00AFBA63 /* DragAndDrop.swift in Sources */,
 689: 				FFB56F432C0353CF0020AFFD /* ReadingAloudView.swift in Sources */,
 690: 				FF2F03442B79631800349855 /* Button+Extension.swift in Sources */,
 691: 				FF1002682B2668790011A4DC /* Date+Extension.swift in Sources */,
 692: 				FF6D821E2B916053001183A8 /* UpsertCompletionView.swift in Sources */,
 693: 				FFBB2C7B2C03D8AD00509204 /* Voice.swift in Sources */,
 694: 				FF9300D42B778829000859F4 /* ChatView_macOS.swift in Sources */,
 695: 				FF38F8512B7A919C00546B56 /* MenuBarControl_macOS.swift in Sources */,
 696: 				FF38F85A2B7AB28300546B56 /* PromptPanelView.swift in Sources */,
 697: 				FF1002462B25BCE70011A4DC /* LanguageModelStore.swift in Sources */,
 698: 				FFEB9CA82BA04304004B1F3D /* NotificationMessage.swift in Sources */,
 699: 				FF10025C2B2625BE0011A4DC /* SidebarView.swift in Sources */,
 700: 				FF1002392B24BBF20011A4DC /* Chat.swift in Sources */,
 701: 				FFB0327D2B312F3D0066A9DB /* RecordingView.swift in Sources */,
 702: 				FFBB2C7D2C047B6C00509204 /* Image+Extension.swift in Sources */,
 703: 				FF6D82192B912804001183A8 /* CompletionButtonView.swift in Sources */,
 704: 				FF10024A2B25BE740011A4DC /* LanguageModelSD.swift in Sources */,
 705: 				FF6B7B132B3EE7AC00E8FEA3 /* Throttler.swift in Sources */,
 706: 				FF1002402B24F7320011A4DC /* SideBarMenuView.swift in Sources */,
 707: 				FF9300DE2B782A28000859F4 /* UnreachableAPIView.swift in Sources */,
 708: 				FF6D820D2B90C925001183A8 /* CompletionPanelView.swift in Sources */,
 709: 				FF6D821C2B914202001183A8 /* CompletionsEditorView.swift in Sources */,
 710: 				FFD57E302BF29145003FEFF1 /* MarkdownColours.swift in Sources */,
 711: 				FF9300DC2B7823B0000859F4 /* EmptyConversaitonView.swift in Sources */,
 712: 				FFBBF4882B34F9C8008D611C /* View+Extension.swift in Sources */,
 713: 				FFEC9BE32B81358800AFBA63 /* DeallocPrinter.swift in Sources */,
 714: 				FFBBF4842B34881B008D611C /* SpeechRecogniser.swift in Sources */,
 715: 				FF6D82122B911079001183A8 /* PanelCompletionsVM.swift in Sources */,
 716: 				FFEC32AA2B24797C003E5C04 /* ChatView_iOS.swift in Sources */,
 717: 				FF6D82152B911536001183A8 /* Accessibility.swift in Sources */,
 718: 				FF0146CD2B3DADCA00A2A9F6 /* HapticsService.swift in Sources */,
 719: 				FF5FA0D62B35169400BC471D /* Binding+Extension.swift in Sources */,
 720: 				FFE21C782B82353A00A69B9C /* SleepTest.swift in Sources */,
 721: 				FF1002502B25C79F0011A4DC /* SwiftDataService.swift in Sources */,
 722: 				FF7FBE4C2B78E384000901F7 /* SamplePrompt.swift in Sources */,
 723: 				FF38F8582B7AB1AD00546B56 /* PanelManager.swift in Sources */,
 724: 				FF6D82172B9122F9001183A8 /* CompletionInstructionSD.swift in Sources */,
 725: 				FF226A652BE2A0EC00CC91F1 /* SelectTextSheet.swift in Sources */,
 726: 				FF10025A2B2624C40011A4DC /* ConversationHistoryListView.swift in Sources */,
 727: 				FF10026D2B2751760011A4DC /* SettingsView.swift in Sources */,
 728: 				FF33066C2B83BB31007B33E5 /* SidebarButton.swift in Sources */,
 729: 				FFD57E322BF291B2003FEFF1 /* CodeBlockView.swift in Sources */,
 730: 				FF1002542B261D460011A4DC /* MessageListVIew.swift in Sources */,
 731: 				FF10024E2B25C2A70011A4DC /* ConversationSD.swift in Sources */,
 732: 				FF9C920C2BF0C088004C8275 /* OptionsMenuView.swift in Sources */,
 733: 				FF9C920A2BF0B7B1004C8275 /* LanguageModel.swift in Sources */,
 734: 				FFEC32912B24779A003E5C04 /* EnchantedApp.swift in Sources */,
 735: 				FF2F03422B795E0B00349855 /* Clipboard.swift in Sources */,
 736: 				3396E0762BD877D500213816 /* Menus.swift in Sources */,
 737: 				FF9300DA2B781D97000859F4 /* ToolbarView_macOS.swift in Sources */,
 738: 				FF1002522B2609980011A4DC /* ModelContext+Extension.swift in Sources */,
 739: 				FF1002752B278C170011A4DC /* AppStore.swift in Sources */,
 740: 				FF1002732B276EC10011A4DC /* AppColorScheme.swift in Sources */,
 741: 				FF10025E2B2648460011A4DC /* ConversationState.swift in Sources */,
 742: 				FFEC9BE72B813A8D00AFBA63 /* RemovableImage.swift in Sources */,
 743: 				FFFD00C22B92607800392AE6 /* CompletionsStore.swift in Sources */,
 744: 			);
 745: 			runOnlyForDeploymentPostprocessing = 0;
 746: 		};
 747: /* End PBXSourcesBuildPhase section */
 748: 
 749: /* Begin XCBuildConfiguration section */
 750: 		FFEC329C2B24779B003E5C04 /* Debug */ = {
 751: 			isa = XCBuildConfiguration;
 752: 			buildSettings = {
 753: 				ALWAYS_SEARCH_USER_PATHS = NO;
 754: 				ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS = YES;
 755: 				CLANG_ANALYZER_NONNULL = YES;
 756: 				CLANG_ANALYZER_NUMBER_OBJECT_CONVERSION = YES_AGGRESSIVE;
 757: 				CLANG_CXX_LANGUAGE_STANDARD = "gnu++20";
 758: 				CLANG_ENABLE_MODULES = YES;
 759: 				CLANG_ENABLE_OBJC_ARC = YES;
 760: 				CLANG_ENABLE_OBJC_WEAK = YES;
 761: 				CLANG_WARN_BLOCK_CAPTURE_AUTORELEASING = YES;
 762: 				CLANG_WARN_BOOL_CONVERSION = YES;
 763: 				CLANG_WARN_COMMA = YES;
 764: 				CLANG_WARN_CONSTANT_CONVERSION = YES;
 765: 				CLANG_WARN_DEPRECATED_OBJC_IMPLEMENTATIONS = YES;
 766: 				CLANG_WARN_DIRECT_OBJC_ISA_USAGE = YES_ERROR;
 767: 				CLANG_WARN_DOCUMENTATION_COMMENTS = YES;
 768: 				CLANG_WARN_EMPTY_BODY = YES;
 769: 				CLANG_WARN_ENUM_CONVERSION = YES;
 770: 				CLANG_WARN_INFINITE_RECURSION = YES;
 771: 				CLANG_WARN_INT_CONVERSION = YES;
 772: 				CLANG_WARN_NON_LITERAL_NULL_CONVERSION = YES;
 773: 				CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF = YES;
 774: 				CLANG_WARN_OBJC_LITERAL_CONVERSION = YES;
 775: 				CLANG_WARN_OBJC_ROOT_CLASS = YES_ERROR;
 776: 				CLANG_WARN_QUOTED_INCLUDE_IN_FRAMEWORK_HEADER = YES;
 777: 				CLANG_WARN_RANGE_LOOP_ANALYSIS = YES;
 778: 				CLANG_WARN_STRICT_PROTOTYPES = YES;
 779: 				CLANG_WARN_SUSPICIOUS_MOVE = YES;
 780: 				CLANG_WARN_UNGUARDED_AVAILABILITY = YES_AGGRESSIVE;
 781: 				CLANG_WARN_UNREACHABLE_CODE = YES;
 782: 				CLANG_WARN__DUPLICATE_METHOD_MATCH = YES;
 783: 				COPY_PHASE_STRIP = NO;
 784: 				DEAD_CODE_STRIPPING = YES;
 785: 				DEBUG_INFORMATION_FORMAT = dwarf;
 786: 				ENABLE_STRICT_OBJC_MSGSEND = YES;
 787: 				ENABLE_TESTABILITY = YES;
 788: 				ENABLE_USER_SCRIPT_SANDBOXING = YES;
 789: 				GCC_C_LANGUAGE_STANDARD = gnu17;
 790: 				GCC_DYNAMIC_NO_PIC = NO;
 791: 				GCC_NO_COMMON_BLOCKS = YES;
 792: 				GCC_OPTIMIZATION_LEVEL = 0;
 793: 				GCC_PREPROCESSOR_DEFINITIONS = (
 794: 					"DEBUG=1",
 795: 					"$(inherited)",
 796: 				);
 797: 				GCC_WARN_64_TO_32_BIT_CONVERSION = YES;
 798: 				GCC_WARN_ABOUT_RETURN_TYPE = YES_ERROR;
 799: 				GCC_WARN_UNDECLARED_SELECTOR = YES;
 800: 				GCC_WARN_UNINITIALIZED_AUTOS = YES_AGGRESSIVE;
 801: 				GCC_WARN_UNUSED_FUNCTION = YES;
 802: 				GCC_WARN_UNUSED_VARIABLE = YES;
 803: 				LOCALIZATION_PREFERS_STRING_CATALOGS = YES;
 804: 				MTL_ENABLE_DEBUG_INFO = INCLUDE_SOURCE;
 805: 				MTL_FAST_MATH = YES;
 806: 				ONLY_ACTIVE_ARCH = YES;
 807: 				SWIFT_ACTIVE_COMPILATION_CONDITIONS = "DEBUG $(inherited)";
 808: 				SWIFT_OPTIMIZATION_LEVEL = "-Onone";
 809: 			};
 810: 			name = Debug;
 811: 		};
 812: 		FFEC329D2B24779B003E5C04 /* Release */ = {
 813: 			isa = XCBuildConfiguration;
 814: 			buildSettings = {
 815: 				ALWAYS_SEARCH_USER_PATHS = NO;
 816: 				ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS = YES;
 817: 				CLANG_ANALYZER_NONNULL = YES;
 818: 				CLANG_ANALYZER_NUMBER_OBJECT_CONVERSION = YES_AGGRESSIVE;
 819: 				CLANG_CXX_LANGUAGE_STANDARD = "gnu++20";
 820: 				CLANG_ENABLE_MODULES = YES;
 821: 				CLANG_ENABLE_OBJC_ARC = YES;
 822: 				CLANG_ENABLE_OBJC_WEAK = YES;
 823: 				CLANG_WARN_BLOCK_CAPTURE_AUTORELEASING = YES;
 824: 				CLANG_WARN_BOOL_CONVERSION = YES;
 825: 				CLANG_WARN_COMMA = YES;
 826: 				CLANG_WARN_CONSTANT_CONVERSION = YES;
 827: 				CLANG_WARN_DEPRECATED_OBJC_IMPLEMENTATIONS = YES;
 828: 				CLANG_WARN_DIRECT_OBJC_ISA_USAGE = YES_ERROR;
 829: 				CLANG_WARN_DOCUMENTATION_COMMENTS = YES;
 830: 				CLANG_WARN_EMPTY_BODY = YES;
 831: 				CLANG_WARN_ENUM_CONVERSION = YES;
 832: 				CLANG_WARN_INFINITE_RECURSION = YES;
 833: 				CLANG_WARN_INT_CONVERSION = YES;
 834: 				CLANG_WARN_NON_LITERAL_NULL_CONVERSION = YES;
 835: 				CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF = YES;
 836: 				CLANG_WARN_OBJC_LITERAL_CONVERSION = YES;
 837: 				CLANG_WARN_OBJC_ROOT_CLASS = YES_ERROR;
 838: 				CLANG_WARN_QUOTED_INCLUDE_IN_FRAMEWORK_HEADER = YES;
 839: 				CLANG_WARN_RANGE_LOOP_ANALYSIS = YES;
 840: 				CLANG_WARN_STRICT_PROTOTYPES = YES;
 841: 				CLANG_WARN_SUSPICIOUS_MOVE = YES;
 842: 				CLANG_WARN_UNGUARDED_AVAILABILITY = YES_AGGRESSIVE;
 843: 				CLANG_WARN_UNREACHABLE_CODE = YES;
 844: 				CLANG_WARN__DUPLICATE_METHOD_MATCH = YES;
 845: 				COPY_PHASE_STRIP = NO;
 846: 				DEAD_CODE_STRIPPING = YES;
 847: 				DEBUG_INFORMATION_FORMAT = "dwarf-with-dsym";
 848: 				ENABLE_NS_ASSERTIONS = NO;
 849: 				ENABLE_STRICT_OBJC_MSGSEND = YES;
 850: 				ENABLE_USER_SCRIPT_SANDBOXING = YES;
 851: 				GCC_C_LANGUAGE_STANDARD = gnu17;
 852: 				GCC_NO_COMMON_BLOCKS = YES;
 853: 				GCC_WARN_64_TO_32_BIT_CONVERSION = YES;
 854: 				GCC_WARN_ABOUT_RETURN_TYPE = YES_ERROR;
 855: 				GCC_WARN_UNDECLARED_SELECTOR = YES;
 856: 				GCC_WARN_UNINITIALIZED_AUTOS = YES_AGGRESSIVE;
 857: 				GCC_WARN_UNUSED_FUNCTION = YES;
 858: 				GCC_WARN_UNUSED_VARIABLE = YES;
 859: 				LOCALIZATION_PREFERS_STRING_CATALOGS = YES;
 860: 				MTL_ENABLE_DEBUG_INFO = NO;
 861: 				MTL_FAST_MATH = YES;
 862: 				SWIFT_COMPILATION_MODE = wholemodule;
 863: 			};
 864: 			name = Release;
 865: 		};
 866: 		FFEC329F2B24779B003E5C04 /* Debug */ = {
 867: 			isa = XCBuildConfiguration;
 868: 			buildSettings = {
 869: 				ASSETCATALOG_COMPILER_APPICON_NAME = AppIcon;
 870: 				ASSETCATALOG_COMPILER_GLOBAL_ACCENT_COLOR_NAME = AccentColor;
 871: 				ASSETCATALOG_COMPILER_INCLUDE_ALL_APPICON_ASSETS = YES;
 872: 				CODE_SIGN_ENTITLEMENTS = Enchanted/EnchantedDebug.entitlements;
 873: 				CODE_SIGN_IDENTITY = "Apple Development";
 874: 				"CODE_SIGN_IDENTITY[sdk=macosx*]" = "Apple Development";
 875: 				CODE_SIGN_STYLE = Automatic;
 876: 				CURRENT_PROJECT_VERSION = 51;
 877: 				DEAD_CODE_STRIPPING = YES;
 878: 				DEVELOPMENT_ASSET_PATHS = "\"Enchanted/Preview Content\"";
 879: 				DEVELOPMENT_TEAM = JDDZ55DT74;
 880: 				ENABLE_HARDENED_RUNTIME = YES;
 881: 				"ENABLE_HARDENED_RUNTIME[sdk=macosx*]" = YES;
 882: 				ENABLE_PREVIEWS = YES;
 883: 				GENERATE_INFOPLIST_FILE = YES;
 884: 				INFOPLIST_FILE = Enchanted/Info.plist;
 885: 				INFOPLIST_KEY_CFBundleDisplayName = "Enchanted by Freysa";
 886: 				INFOPLIST_KEY_LSApplicationCategoryType = "public.app-category.developer-tools";
 887: 				INFOPLIST_KEY_NSMicrophoneUsageDescription = "Audio is recorded to transcribe text. Recording is discarded after transcription.";
 888: 				INFOPLIST_KEY_NSSpeechRecognitionUsageDescription = "You can view a text transcription of your meeting in the app.";
 889: 				"INFOPLIST_KEY_UIApplicationSceneManifest_Generation[sdk=iphoneos*]" = YES;
 890: 				"INFOPLIST_KEY_UIApplicationSceneManifest_Generation[sdk=iphonesimulator*]" = YES;
 891: 				"INFOPLIST_KEY_UIApplicationSupportsIndirectInputEvents[sdk=iphoneos*]" = YES;
 892: 				"INFOPLIST_KEY_UIApplicationSupportsIndirectInputEvents[sdk=iphonesimulator*]" = YES;
 893: 				"INFOPLIST_KEY_UILaunchScreen_Generation[sdk=iphoneos*]" = YES;
 894: 				"INFOPLIST_KEY_UILaunchScreen_Generation[sdk=iphonesimulator*]" = YES;
 895: 				"INFOPLIST_KEY_UIStatusBarStyle[sdk=iphoneos*]" = UIStatusBarStyleDefault;
 896: 				"INFOPLIST_KEY_UIStatusBarStyle[sdk=iphonesimulator*]" = UIStatusBarStyleDefault;
 897: 				INFOPLIST_KEY_UISupportedInterfaceOrientations_iPad = "UIInterfaceOrientationPortrait UIInterfaceOrientationPortraitUpsideDown UIInterfaceOrientationLandscapeLeft UIInterfaceOrientationLandscapeRight";
 898: 				INFOPLIST_KEY_UISupportedInterfaceOrientations_iPhone = "UIInterfaceOrientationPortrait UIInterfaceOrientationLandscapeLeft UIInterfaceOrientationLandscapeRight";
 899: 				IPHONEOS_DEPLOYMENT_TARGET = 17.0;
 900: 				LD_RUNPATH_SEARCH_PATHS = "@executable_path/Frameworks";
 901: 				"LD_RUNPATH_SEARCH_PATHS[sdk=macosx*]" = "@executable_path/../Frameworks";
 902: 				MACOSX_DEPLOYMENT_TARGET = 14.0;
 903: 				MARKETING_VERSION = 1.8.1;
 904: 				PRODUCT_BUNDLE_IDENTIFIER = subj.Enchanted;
 905: 				PRODUCT_NAME = "$(TARGET_NAME)";
 906: 				PROVISIONING_PROFILE_SPECIFIER = "";
 907: 				SDKROOT = auto;
 908: 				SUPPORTED_PLATFORMS = "iphoneos iphonesimulator macosx xros xrsimulator";
 909: 				SUPPORTS_MACCATALYST = NO;
 910: 				SUPPORTS_XR_DESIGNED_FOR_IPHONE_IPAD = NO;
 911: 				SWIFT_EMIT_LOC_STRINGS = YES;
 912: 				SWIFT_STRICT_CONCURRENCY = complete;
 913: 				SWIFT_VERSION = 5.0;
 914: 				TARGETED_DEVICE_FAMILY = "1,2,7";
 915: 				XROS_DEPLOYMENT_TARGET = 1.1;
 916: 			};
 917: 			name = Debug;
 918: 		};
 919: 		FFEC32A02B24779B003E5C04 /* Release */ = {
 920: 			isa = XCBuildConfiguration;
 921: 			buildSettings = {
 922: 				ASSETCATALOG_COMPILER_APPICON_NAME = AppIcon;
 923: 				ASSETCATALOG_COMPILER_GLOBAL_ACCENT_COLOR_NAME = AccentColor;
 924: 				ASSETCATALOG_COMPILER_INCLUDE_ALL_APPICON_ASSETS = YES;
 925: 				CODE_SIGN_ENTITLEMENTS = Enchanted/Enchanted.entitlements;
 926: 				CODE_SIGN_IDENTITY = "Apple Development";
 927: 				CODE_SIGN_STYLE = Automatic;
 928: 				CURRENT_PROJECT_VERSION = 51;
 929: 				DEAD_CODE_STRIPPING = YES;
 930: 				DEVELOPMENT_ASSET_PATHS = "\"Enchanted/Preview Content\"";
 931: 				DEVELOPMENT_TEAM = JDDZ55DT74;
 932: 				ENABLE_HARDENED_RUNTIME = YES;
 933: 				"ENABLE_HARDENED_RUNTIME[sdk=macosx*]" = YES;
 934: 				ENABLE_PREVIEWS = YES;
 935: 				GENERATE_INFOPLIST_FILE = YES;
 936: 				INFOPLIST_FILE = Enchanted/Info.plist;
 937: 				INFOPLIST_KEY_CFBundleDisplayName = "Enchanted by Freysa";
 938: 				INFOPLIST_KEY_LSApplicationCategoryType = "public.app-category.developer-tools";
 939: 				INFOPLIST_KEY_NSMicrophoneUsageDescription = "Audio is recorded to transcribe text. Recording is discarded after transcription.";
 940: 				INFOPLIST_KEY_NSSpeechRecognitionUsageDescription = "You can view a text transcription of your meeting in the app.";
 941: 				"INFOPLIST_KEY_UIApplicationSceneManifest_Generation[sdk=iphoneos*]" = YES;
 942: 				"INFOPLIST_KEY_UIApplicationSceneManifest_Generation[sdk=iphonesimulator*]" = YES;
 943: 				"INFOPLIST_KEY_UIApplicationSupportsIndirectInputEvents[sdk=iphoneos*]" = YES;
 944: 				"INFOPLIST_KEY_UIApplicationSupportsIndirectInputEvents[sdk=iphonesimulator*]" = YES;
 945: 				"INFOPLIST_KEY_UILaunchScreen_Generation[sdk=iphoneos*]" = YES;
 946: 				"INFOPLIST_KEY_UILaunchScreen_Generation[sdk=iphonesimulator*]" = YES;
 947: 				"INFOPLIST_KEY_UIStatusBarStyle[sdk=iphoneos*]" = UIStatusBarStyleDefault;
 948: 				"INFOPLIST_KEY_UIStatusBarStyle[sdk=iphonesimulator*]" = UIStatusBarStyleDefault;
 949: 				INFOPLIST_KEY_UISupportedInterfaceOrientations_iPad = "UIInterfaceOrientationPortrait UIInterfaceOrientationPortraitUpsideDown UIInterfaceOrientationLandscapeLeft UIInterfaceOrientationLandscapeRight";
 950: 				INFOPLIST_KEY_UISupportedInterfaceOrientations_iPhone = "UIInterfaceOrientationPortrait UIInterfaceOrientationLandscapeLeft UIInterfaceOrientationLandscapeRight";
 951: 				IPHONEOS_DEPLOYMENT_TARGET = 17.0;
 952: 				LD_RUNPATH_SEARCH_PATHS = "@executable_path/Frameworks";
 953: 				"LD_RUNPATH_SEARCH_PATHS[sdk=macosx*]" = "@executable_path/../Frameworks";
 954: 				MACOSX_DEPLOYMENT_TARGET = 14.0;
 955: 				MARKETING_VERSION = 1.8.1;
 956: 				PRODUCT_BUNDLE_IDENTIFIER = subj.Enchanted;
 957: 				PRODUCT_NAME = "$(TARGET_NAME)";
 958: 				PROVISIONING_PROFILE_SPECIFIER = "";
 959: 				SDKROOT = auto;
 960: 				SUPPORTED_PLATFORMS = "iphoneos iphonesimulator macosx xros xrsimulator";
 961: 				SUPPORTS_MACCATALYST = NO;
 962: 				SUPPORTS_XR_DESIGNED_FOR_IPHONE_IPAD = NO;
 963: 				SWIFT_EMIT_LOC_STRINGS = YES;
 964: 				SWIFT_STRICT_CONCURRENCY = complete;
 965: 				SWIFT_VERSION = 5.0;
 966: 				TARGETED_DEVICE_FAMILY = "1,2,7";
 967: 				XROS_DEPLOYMENT_TARGET = 1.1;
 968: 			};
 969: 			name = Release;
 970: 		};
 971: /* End XCBuildConfiguration section */
 972: 
 973: /* Begin XCConfigurationList section */
 974: 		FFEC32882B24779A003E5C04 /* Build configuration list for PBXProject "Enchanted" */ = {
 975: 			isa = XCConfigurationList;
 976: 			buildConfigurations = (
 977: 				FFEC329C2B24779B003E5C04 /* Debug */,
 978: 				FFEC329D2B24779B003E5C04 /* Release */,
 979: 			);
 980: 			defaultConfigurationIsVisible = 0;
 981: 			defaultConfigurationName = Release;
 982: 		};
 983: 		FFEC329E2B24779B003E5C04 /* Build configuration list for PBXNativeTarget "Enchanted" */ = {
 984: 			isa = XCConfigurationList;
 985: 			buildConfigurations = (
 986: 				FFEC329F2B24779B003E5C04 /* Debug */,
 987: 				FFEC32A02B24779B003E5C04 /* Release */,
 988: 			);
 989: 			defaultConfigurationIsVisible = 0;
 990: 			defaultConfigurationName = Release;
 991: 		};
 992: /* End XCConfigurationList section */
 993: 
 994: /* Begin XCRemoteSwiftPackageReference section */
 995: 		FF0611E82C04A11800443B33 /* XCRemoteSwiftPackageReference "Magnet" */ = {
 996: 			isa = XCRemoteSwiftPackageReference;
 997: 			repositoryURL = "https://github.com/AugustDev/Magnet";
 998: 			requirement = {
 999: 				branch = master;
1000: 				kind = branch;
1001: 			};
1002: 		};
1003: 		FF0611EF2C04A2FB00443B33 /* XCRemoteSwiftPackageReference "Splash" */ = {
1004: 			isa = XCRemoteSwiftPackageReference;
1005: 			repositoryURL = "https://github.com/AugustDev/Splash";
1006: 			requirement = {
1007: 				branch = master;
1008: 				kind = branch;
1009: 			};
1010: 		};
1011: 		FF1002642B2653EE0011A4DC /* XCRemoteSwiftPackageReference "ActivityIndicatorView" */ = {
1012: 			isa = XCRemoteSwiftPackageReference;
1013: 			repositoryURL = "https://github.com/exyte/ActivityIndicatorView.git";
1014: 			requirement = {
1015: 				kind = upToNextMajorVersion;
1016: 				minimumVersion = 1.1.1;
1017: 			};
1018: 		};
1019: 		FF464B112B8026DA008E5130 /* XCRemoteSwiftPackageReference "Vortex" */ = {
1020: 			isa = XCRemoteSwiftPackageReference;
1021: 			repositoryURL = "https://github.com/twostraws/Vortex";
1022: 			requirement = {
1023: 				kind = upToNextMajorVersion;
1024: 				minimumVersion = 1.0.0;
1025: 			};
1026: 		};
1027: 		FF4A605B2BC3587800D7BD4F /* XCRemoteSwiftPackageReference "KeyboardShortcuts" */ = {
1028: 			isa = XCRemoteSwiftPackageReference;
1029: 			repositoryURL = "https://github.com/sindresorhus/KeyboardShortcuts";
1030: 			requirement = {
1031: 				kind = upToNextMajorVersion;
1032: 				minimumVersion = 2.0.0;
1033: 			};
1034: 		};
1035: 		FF79AEB42CE72ECE00EDE10C /* XCRemoteSwiftPackageReference "swift-markdown-ui" */ = {
1036: 			isa = XCRemoteSwiftPackageReference;
1037: 			repositoryURL = "https://github.com/gonzalezreal/swift-markdown-ui";
1038: 			requirement = {
1039: 				kind = upToNextMajorVersion;
1040: 				minimumVersion = 2.4.1;
1041: 			};
1042: 		};
1043: 		FF911DEF2B98F08800915E94 /* XCRemoteSwiftPackageReference "WrappingHStack" */ = {
1044: 			isa = XCRemoteSwiftPackageReference;
1045: 			repositoryURL = "https://github.com/ksemianov/WrappingHStack";
1046: 			requirement = {
1047: 				kind = upToNextMajorVersion;
1048: 				minimumVersion = 0.2.0;
1049: 			};
1050: 		};
1051: 		FFD5FAD32B8130CE0055AB51 /* XCRemoteSwiftPackageReference "OllamaKit" */ = {
1052: 			isa = XCRemoteSwiftPackageReference;
1053: 			repositoryURL = "https://github.com/AugustDev/OllamaKit";
1054: 			requirement = {
1055: 				branch = main;
1056: 				kind = branch;
1057: 			};
1058: 		};
1059: 		FFFD00C72B94CB5E00392AE6 /* XCRemoteSwiftPackageReference "swift-async-algorithms" */ = {
1060: 			isa = XCRemoteSwiftPackageReference;
1061: 			repositoryURL = "https://github.com/apple/swift-async-algorithms.git";
1062: 			requirement = {
1063: 				kind = upToNextMajorVersion;
1064: 				minimumVersion = 1.0.0;
1065: 			};
1066: 		};
1067: /* End XCRemoteSwiftPackageReference section */
1068: 
1069: /* Begin XCSwiftPackageProductDependency section */
1070: 		FF0611E92C04A11800443B33 /* Magnet */ = {
1071: 			isa = XCSwiftPackageProductDependency;
1072: 			package = FF0611E82C04A11800443B33 /* XCRemoteSwiftPackageReference "Magnet" */;
1073: 			productName = Magnet;
1074: 		};
1075: 		FF0611F02C04A2FB00443B33 /* Splash */ = {
1076: 			isa = XCSwiftPackageProductDependency;
1077: 			package = FF0611EF2C04A2FB00443B33 /* XCRemoteSwiftPackageReference "Splash" */;
1078: 			productName = Splash;
1079: 		};
1080: 		FF1002652B2653EE0011A4DC /* ActivityIndicatorView */ = {
1081: 			isa = XCSwiftPackageProductDependency;
1082: 			package = FF1002642B2653EE0011A4DC /* XCRemoteSwiftPackageReference "ActivityIndicatorView" */;
1083: 			productName = ActivityIndicatorView;
1084: 		};
1085: 		FF464B122B8026DA008E5130 /* Vortex */ = {
1086: 			isa = XCSwiftPackageProductDependency;
1087: 			package = FF464B112B8026DA008E5130 /* XCRemoteSwiftPackageReference "Vortex" */;
1088: 			productName = Vortex;
1089: 		};
1090: 		FF4A605C2BC3587800D7BD4F /* KeyboardShortcuts */ = {
1091: 			isa = XCSwiftPackageProductDependency;
1092: 			package = FF4A605B2BC3587800D7BD4F /* XCRemoteSwiftPackageReference "KeyboardShortcuts" */;
1093: 			productName = KeyboardShortcuts;
1094: 		};
1095: 		FF79AEB52CE72ECE00EDE10C /* MarkdownUI */ = {
1096: 			isa = XCSwiftPackageProductDependency;
1097: 			package = FF79AEB42CE72ECE00EDE10C /* XCRemoteSwiftPackageReference "swift-markdown-ui" */;
1098: 			productName = MarkdownUI;
1099: 		};
1100: 		FF911DF02B98F08800915E94 /* WrappingHStack */ = {
1101: 			isa = XCSwiftPackageProductDependency;
1102: 			package = FF911DEF2B98F08800915E94 /* XCRemoteSwiftPackageReference "WrappingHStack" */;
1103: 			productName = WrappingHStack;
1104: 		};
1105: 		FFD5FAD42B8130CE0055AB51 /* OllamaKit */ = {
1106: 			isa = XCSwiftPackageProductDependency;
1107: 			package = FFD5FAD32B8130CE0055AB51 /* XCRemoteSwiftPackageReference "OllamaKit" */;
1108: 			productName = OllamaKit;
1109: 		};
1110: 		FFFD00C82B94CB5E00392AE6 /* AsyncAlgorithms */ = {
1111: 			isa = XCSwiftPackageProductDependency;
1112: 			package = FFFD00C72B94CB5E00392AE6 /* XCRemoteSwiftPackageReference "swift-async-algorithms" */;
1113: 			productName = AsyncAlgorithms;
1114: 		};
1115: /* End XCSwiftPackageProductDependency section */
1116: 	};
1117: 	rootObject = FFEC32852B24779A003E5C04 /* Project object */;
1118: }
````

## File: LICENSE
````
  1: Apache License
  2:                            Version 2.0, January 2004
  3:                         http://www.apache.org/licenses/
  4: 
  5:    TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION
  6: 
  7:    1. Definitions.
  8: 
  9:       "License" shall mean the terms and conditions for use, reproduction,
 10:       and distribution as defined by Sections 1 through 9 of this document.
 11: 
 12:       "Licensor" shall mean the copyright owner or entity authorized by
 13:       the copyright owner that is granting the License.
 14: 
 15:       "Legal Entity" shall mean the union of the acting entity and all
 16:       other entities that control, are controlled by, or are under common
 17:       control with that entity. For the purposes of this definition,
 18:       "control" means (i) the power, direct or indirect, to cause the
 19:       direction or management of such entity, whether by contract or
 20:       otherwise, or (ii) ownership of fifty percent (50%) or more of the
 21:       outstanding shares, or (iii) beneficial ownership of such entity.
 22: 
 23:       "You" (or "Your") shall mean an individual or Legal Entity
 24:       exercising permissions granted by this License.
 25: 
 26:       "Source" form shall mean the preferred form for making modifications,
 27:       including but not limited to software source code, documentation
 28:       source, and configuration files.
 29: 
 30:       "Object" form shall mean any form resulting from mechanical
 31:       transformation or translation of a Source form, including but
 32:       not limited to compiled object code, generated documentation,
 33:       and conversions to other media types.
 34: 
 35:       "Work" shall mean the work of authorship, whether in Source or
 36:       Object form, made available under the License, as indicated by a
 37:       copyright notice that is included in or attached to the work
 38:       (an example is provided in the Appendix below).
 39: 
 40:       "Derivative Works" shall mean any work, whether in Source or Object
 41:       form, that is based on (or derived from) the Work and for which the
 42:       editorial revisions, annotations, elaborations, or other modifications
 43:       represent, as a whole, an original work of authorship. For the purposes
 44:       of this License, Derivative Works shall not include works that remain
 45:       separable from, or merely link (or bind by name) to the interfaces of,
 46:       the Work and Derivative Works thereof.
 47: 
 48:       "Contribution" shall mean any work of authorship, including
 49:       the original version of the Work and any modifications or additions
 50:       to that Work or Derivative Works thereof, that is intentionally
 51:       submitted to Licensor for inclusion in the Work by the copyright owner
 52:       or by an individual or Legal Entity authorized to submit on behalf of
 53:       the copyright owner. For the purposes of this definition, "submitted"
 54:       means any form of electronic, verbal, or written communication sent
 55:       to the Licensor or its representatives, including but not limited to
 56:       communication on electronic mailing lists, source code control systems,
 57:       and issue tracking systems that are managed by, or on behalf of, the
 58:       Licensor for the purpose of discussing and improving the Work, but
 59:       excluding communication that is conspicuously marked or otherwise
 60:       designated in writing by the copyright owner as "Not a Contribution."
 61: 
 62:       "Contributor" shall mean Licensor and any individual or Legal Entity
 63:       on behalf of whom a Contribution has been received by Licensor and
 64:       subsequently incorporated within the Work.
 65: 
 66:    2. Grant of Copyright License. Subject to the terms and conditions of
 67:       this License, each Contributor hereby grants to You a perpetual,
 68:       worldwide, non-exclusive, no-charge, royalty-free, irrevocable
 69:       copyright license to reproduce, prepare Derivative Works of,
 70:       publicly display, publicly perform, sublicense, and distribute the
 71:       Work and such Derivative Works in Source or Object form.
 72: 
 73:    3. Grant of Patent License. Subject to the terms and conditions of
 74:       this License, each Contributor hereby grants to You a perpetual,
 75:       worldwide, non-exclusive, no-charge, royalty-free, irrevocable
 76:       (except as stated in this section) patent license to make, have made,
 77:       use, offer to sell, sell, import, and otherwise transfer the Work,
 78:       where such license applies only to those patent claims licensable
 79:       by such Contributor that are necessarily infringed by their
 80:       Contribution(s) alone or by combination of their Contribution(s)
 81:       with the Work to which such Contribution(s) was submitted. If You
 82:       institute patent litigation against any entity (including a
 83:       cross-claim or counterclaim in a lawsuit) alleging that the Work
 84:       or a Contribution incorporated within the Work constitutes direct
 85:       or contributory patent infringement, then any patent licenses
 86:       granted to You under this License for that Work shall terminate
 87:       as of the date such litigation is filed.
 88: 
 89:    4. Redistribution. You may reproduce and distribute copies of the
 90:       Work or Derivative Works thereof in any medium, with or without
 91:       modifications, and in Source or Object form, provided that You
 92:       meet the following conditions:
 93: 
 94:       (a) You must give any other recipients of the Work or
 95:           Derivative Works a copy of this License; and
 96: 
 97:       (b) You must cause any modified files to carry prominent notices
 98:           stating that You changed the files; and
 99: 
100:       (c) You must retain, in the Source form of any Derivative Works
101:           that You distribute, all copyright, patent, trademark, and
102:           attribution notices from the Source form of the Work,
103:           excluding those notices that do not pertain to any part of
104:           the Derivative Works; and
105: 
106:       (d) If the Work includes a "NOTICE" text file as part of its
107:           distribution, then any Derivative Works that You distribute must
108:           include a readable copy of the attribution notices contained
109:           within such NOTICE file, excluding those notices that do not
110:           pertain to any part of the Derivative Works, in at least one
111:           of the following places: within a NOTICE text file distributed
112:           as part of the Derivative Works; within the Source form or
113:           documentation, if provided along with the Derivative Works; or,
114:           within a display generated by the Derivative Works, if and
115:           wherever such third-party notices normally appear. The contents
116:           of the NOTICE file are for informational purposes only and
117:           do not modify the License. You may add Your own attribution
118:           notices within Derivative Works that You distribute, alongside
119:           or as an addendum to the NOTICE text from the Work, provided
120:           that such additional attribution notices cannot be construed
121:           as modifying the License.
122: 
123:       You may add Your own copyright statement to Your modifications and
124:       may provide additional or different license terms and conditions
125:       for use, reproduction, or distribution of Your modifications, or
126:       for any such Derivative Works as a whole, provided Your use,
127:       reproduction, and distribution of the Work otherwise complies with
128:       the conditions stated in this License.
129: 
130:    5. Submission of Contributions. Unless You explicitly state otherwise,
131:       any Contribution intentionally submitted for inclusion in the Work
132:       by You to the Licensor shall be under the terms and conditions of
133:       this License, without any additional terms or conditions.
134:       Notwithstanding the above, nothing herein shall supersede or modify
135:       the terms of any separate license agreement you may have executed
136:       with Licensor regarding such Contributions.
137: 
138:    6. Trademarks. This License does not grant permission to use the trade
139:       names, trademarks, service marks, or product names of the Licensor,
140:       except as required for reasonable and customary use in describing the
141:       origin of the Work and reproducing the content of the NOTICE file.
142: 
143:    7. Disclaimer of Warranty. Unless required by applicable law or
144:       agreed to in writing, Licensor provides the Work (and each
145:       Contributor provides its Contributions) on an "AS IS" BASIS,
146:       WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
147:       implied, including, without limitation, any warranties or conditions
148:       of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A
149:       PARTICULAR PURPOSE. You are solely responsible for determining the
150:       appropriateness of using or redistributing the Work and assume any
151:       risks associated with Your exercise of permissions under this License.
152: 
153:    8. Limitation of Liability. In no event and under no legal theory,
154:       whether in tort (including negligence), contract, or otherwise,
155:       unless required by applicable law (such as deliberate and grossly
156:       negligent acts) or agreed to in writing, shall any Contributor be
157:       liable to You for damages, including any direct, indirect, special,
158:       incidental, or consequential damages of any character arising as a
159:       result of this License or out of the use or inability to use the
160:       Work (including but not limited to damages for loss of goodwill,
161:       work stoppage, computer failure or malfunction, or any and all
162:       other commercial damages or losses), even if such Contributor
163:       has been advised of the possibility of such damages.
164: 
165:    9. Accepting Warranty or Additional Liability. While redistributing
166:       the Work or Derivative Works thereof, You may choose to offer,
167:       and charge a fee for, acceptance of support, warranty, indemnity,
168:       or other liability obligations and/or rights consistent with this
169:       License. However, in accepting such obligations, You may act only
170:       on Your own behalf and on Your sole responsibility, not on behalf
171:       of any other Contributor, and only if You agree to indemnify,
172:       defend, and hold each Contributor harmless for any liability
173:       incurred by, or claims asserted against, such Contributor by reason
174:       of your accepting any such warranty or additional liability.
175: 
176:    END OF TERMS AND CONDITIONS
177: 
178:    APPENDIX: How to apply the Apache License to your work.
179: 
180:       To apply the Apache License to your work, attach the following
181:       boilerplate notice, with the fields enclosed by brackets "[]"
182:       replaced with your own identifying information. (Don't include
183:       the brackets!)  The text should be enclosed in the appropriate
184:       comment syntax for the file format. We also recommend that a
185:       file or class name and description of purpose be included on the
186:       same "printed page" as the copyright notice for easier
187:       identification within third-party archives.
188: 
189:    Copyright [yyyy] [name of copyright owner]
190: 
191:    Licensed under the Apache License, Version 2.0 (the "License");
192:    you may not use this file except in compliance with the License.
193:    You may obtain a copy of the License at
194: 
195:        http://www.apache.org/licenses/LICENSE-2.0
196: 
197:    Unless required by applicable law or agreed to in writing, software
198:    distributed under the License is distributed on an "AS IS" BASIS,
199:    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
200:    See the License for the specific language governing permissions and
201:    limitations under the License.
````

## File: PRIVACY.md
````markdown
1: Enchanted app does not track any activity or actions of their users. No private information is being collected by the app outside Apple ecosystem.
````

## File: README.md
````markdown
  1: [<img src="https://img.shields.io/badge/App_Store-0D96F6?&logo=app-store&logoColor=white">](https://apps.apple.com/gb/app/enchanted-llm/id6474268307)
  2: ![Swift](https://img.shields.io/badge/swift-F54A2A?&logo=swift&logoColor=white)
  3: ![Release](https://img.shields.io/github/v/release/augustdev/enchanted)
  4: ![Stars](https://img.shields.io/github/stars/augustdev/enchanted.svg)
  5: [<img src="https://img.shields.io/twitter/url?url=https%3A%2F%2Ftwitter.com%2Famgauge">](https://twitter.com/amgauge)
  6: ![iOS](https://img.shields.io/badge/iOS-000000?&logo=os&logoColor=white)
  7: ![macOS](https://img.shields.io/badge/macOS-000000?style=?&logo=os&logoColor=white)
  8: ![visionOS](https://img.shields.io/badge/visionOS-000000?style=?&logo=os&logoColor=white)
  9: 
 10: # Enchanted
 11: 
 12: Enchanted is open source, [Ollama](https://github.com/jmorganca/ollama) compatible, elegant macOS/iOS/visionOS app for working with privately hosted models such as Llama 2, Mistral, Vicuna, Starling and more. It's essentially ChatGPT app UI that connects to your private models. The goal of Enchanted is to deliver a product allowing unfiltered, secure, private and multimodal experience across all of your devices in iOS ecosystem (macOS, iOS, Watch, Vision Pro).
 13: 
 14: If you like the project, consider leaving a ⭐️ and following on [𝕏](https://twitter.com/amgauge).
 15: 
 16: ## App Store
 17: 
 18: [<img src="https://i.ibb.co/7WXt3qZ/download.png">](https://apps.apple.com/gb/app/enchanted-llm/id6474268307)
 19: 
 20: Note: You will need to run your own Ollama server to use the app. Read instructions below.
 21: 
 22: ## Demo
 23: 
 24: [<img src="./assets/promo.png">](https://www.youtube.com/watch?v=zW3roZ_vM5Q)
 25: 
 26: [Vision Pro Demo](https://www.youtube.com/watch?v=y4ZeGU5IdHA)
 27: 
 28: ## Showcase
 29: 
 30: ### Macbook
 31: 
 32: ![image](https://github.com/AugustDev/enchanted/assets/5672094/32a6a203-19a2-4cc1-adc9-cfac8445dd42)
 33: 
 34: #### Dark mode
 35: 
 36: ![image](https://github.com/AugustDev/enchanted/assets/5672094/6202d235-6c34-4f79-b08a-a372fca0439e)
 37: 
 38: #### Settings
 39: 
 40: <img src="https://github.com/AugustDev/enchanted/assets/5672094/b03acfc7-cbc3-4bab-92cd-73d3eb75b47e" width="1000" height="100%">
 41: 
 42: #### Completions
 43: 
 44:  <img src="https://github.com/AugustDev/enchanted/assets/5672094/5ca80a65-1bec-4d6c-8065-f0a26861c3c2" width="1000" height="100%">
 45: 
 46: #### Use from anywhere
 47: 
 48: https://github.com/AugustDev/enchanted/assets/5672094/221d2a48-9218-4579-b284-a1ad2845e4d6
 49: 
 50: #### Build custom prompt templates and use anywhere
 51: 
 52: <img width="599" alt="Xnapper-2024-05-02-18 57 19" src="https://github.com/AugustDev/enchanted/assets/5672094/7b69fe50-5399-4c0b-a269-f28353b8ca27">
 53: 
 54: https://github.com/AugustDev/enchanted/assets/5672094/8bdebd5e-2910-4855-bb10-91239cafbc28
 55: 
 56: #### Custom completion
 57: 
 58: https://github.com/AugustDev/enchanted/assets/5672094/2ef476e7-8fc5-4992-9152-6df3847056d6
 59: 
 60: ### iPhone
 61: 
 62: Multimodal
 63: 
 64: <img src="https://github.com/AugustDev/enchanted/assets/5672094/f2a7dafa-9470-4689-9f5a-27b6eb0e168d" width="1000" height="100%">
 65: 
 66: Markdown
 67: 
 68: <img src="https://github.com/AugustDev/enchanted/assets/5672094/9caefcb2-69eb-46d0-8d4f-b6269d7c2937" width="1000" height="100%">
 69: 
 70: Conversation history
 71: 
 72: <img width="959" alt="Xnapper-2024-05-03-12 00 28" src="https://github.com/AugustDev/enchanted/assets/5672094/7dade8ec-e94d-4936-9237-f2f2bc1533f2">
 73: 
 74: ### Vision Pro
 75: 
 76: <img width="1534" alt="image" src="https://github.com/AugustDev/enchanted/assets/5672094/810f600a-4377-48e3-9c94-7bb90b78acaf">
 77: 
 78: <img width="1496" alt="image" src="https://github.com/AugustDev/enchanted/assets/5672094/6014a0b4-03ed-4def-b26c-b9baefad3781">
 79: 
 80: 
 81: 
 82: 
 83: - Text to Speech (Read Aloud)
 84: - Conversation history included in the API calls
 85: - Dark/Light mode
 86: - Conversation history is stored on your device
 87: - Markdown support (nicely displays tables/lists/code blocks)
 88: - Voice prompts
 89: - Image attachments for prompts
 90: - Specify system prompt used for every conversations
 91: - Edit message content or submit message with different model
 92: - Delete single conversation / delete all conversations
 93: - macOS Spotlight panel <kbd>Ctrl</kbd>+<kbd>⌘</kbd>+<kbd>K</kbd>
 94: - All features works offline
 95: 
 96: ## Usage instructions
 97: 
 98: Enchanted requires Ollama v0.1.14 or later.
 99: 
100: ### Case 1. You run Ollama server with public access
101: 
102: 1. Download Enchanted app from the App Store.
103: 2. In App Settings specify your server endpoint.
104: 
105: You're done! Make a prompt.
106: 
107: ### Case 2. You run Ollama on your computer
108: 
109: [Video instructions here](https://www.youtube.com/watch?v=SFeVCiLOABM)
110: 
111: 1. Start Ollama server and download models for usage.
112: 2. Install ngrok forward your Ollama server to make it accessible publicly
113: 
114:    ```shell
115:    ngrok http 11434 --host-header="localhost:11434"
116:    ```
117: 
118: 3. Copy "Forwarding" URL that will look something like `https://b377-82-132-216-51.ngrok-free.app`. Your Ollama server API is now accessible through this temporary URL.
119: 4. Download Enchanted app from the App Store.
120: 5. In App Settings specify your server endpoint.
121: 
122:    You're done! Make a prompt.
123: 
124: # Contact
125: 
126: For any questions please do not hesitate to contact me at augustinas@subj.org
127: 
128: # Author
129: 
130: Augustinas Malinauskas



```
