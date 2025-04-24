



```text
Directory structure:
└── pcnaid-dev-atlasagi-gateway/
    ├── README.md
    ├── LICENSE
    ├── PRIVACY.md
    ├── SUPPORT.md
    ├── assets/
    ├── Enchanted/
    │   ├── Accessibility.plist
    │   ├── Enchanted.entitlements
    │   ├── EnchantedDebug.entitlements
    │   ├── Info.plist
    │   ├── Application/
    │   │   └── EnchantedApp.swift
    │   ├── Assets.xcassets/
    │   │   ├── Contents.json
    │   │   ├── AccentColor.colorset/
    │   │   │   └── Contents.json
    │   │   ├── AppIcon.appiconset/
    │   │   │   └── Contents.json
    │   │   ├── AppIcon.solidimagestack/
    │   │   │   ├── Contents.json
    │   │   │   ├── Back.solidimagestacklayer/
    │   │   │   │   ├── Contents.json
    │   │   │   │   └── Content.imageset/
    │   │   │   │       └── Contents.json
    │   │   │   ├── Front.solidimagestacklayer/
    │   │   │   │   ├── Contents.json
    │   │   │   │   └── Content.imageset/
    │   │   │   │       └── Contents.json
    │   │   │   └── Middle.solidimagestacklayer/
    │   │   │       ├── Contents.json
    │   │   │       └── Content.imageset/
    │   │   │           └── Contents.json
    │   │   ├── Colors/
    │   │   │   ├── Contents.json
    │   │   │   ├── bgCustom.colorset/
    │   │   │   │   └── Contents.json
    │   │   │   ├── gray2Custom.colorset/
    │   │   │   │   └── Contents.json
    │   │   │   ├── gray3Custom.colorset/
    │   │   │   │   └── Contents.json
    │   │   │   ├── gray4Custom.colorset/
    │   │   │   │   └── Contents.json
    │   │   │   ├── gray5Custom.colorset/
    │   │   │   │   └── Contents.json
    │   │   │   ├── grayCustom.colorset/
    │   │   │   │   └── Contents.json
    │   │   │   └── label.colorset/
    │   │   │       └── Contents.json
    │   │   ├── logo-nobg.imageset/
    │   │   │   └── Contents.json
    │   │   └── ollama.imageset/
    │   │       └── Contents.json
    │   ├── Extensions/
    │   │   ├── AVSpeechSynthesisVoice+Extension.swift
    │   │   ├── Binding+Extension.swift
    │   │   ├── Button+Extension.swift
    │   │   ├── Colours+Extension.swift
    │   │   ├── Date+Extension.swift
    │   │   ├── Image+Extension.swift
    │   │   ├── KeyboardReadable+Extension.swift
    │   │   ├── ModelContext+Extension.swift
    │   │   ├── NSClipboardItem.swift
    │   │   ├── SplashSyntaxHighlighter+Extension.swift
    │   │   ├── UIImage+Extension.swift
    │   │   └── View+Extension.swift
    │   ├── Helpers/
    │   │   ├── Accessibility.swift
    │   │   ├── AsyncQueue.swift
    │   │   ├── DeallocPrinter.swift
    │   │   ├── HotKeys.swift
    │   │   └── SleepTest.swift
    │   ├── Models/
    │   │   ├── AppColorScheme.swift
    │   │   ├── ConversationState.swift
    │   │   ├── LanguageModel.swift
    │   │   ├── NotificationMessage.swift
    │   │   └── SamplePrompt.swift
    │   ├── Preview Content/
    │   │   └── Preview Assets.xcassets/
    │   │       └── Contents.json
    │   ├── Services/
    │   │   ├── Clipboard.swift
    │   │   ├── HapticsService.swift
    │   │   ├── HotkeyService.swift
    │   │   ├── OllamaService.swift
    │   │   ├── SpeechService.swift
    │   │   ├── SwiftDataService.swift
    │   │   └── Throttler.swift
    │   ├── Stores/
    │   │   ├── AppStore.swift
    │   │   ├── CompletionsStore.swift
    │   │   ├── ConversationStore.swift
    │   │   └── LanguageModelStore.swift
    │   ├── SwiftData/
    │   │   └── Models/
    │   │       ├── CompletionInstructionSD.swift
    │   │       ├── ConversationSD.swift
    │   │       ├── LanguageModelSD.swift
    │   │       └── MessageSD.swift
    │   └── UI/
    │       ├── Helpers.swift
    │       ├── iOS/
    │       │   ├── ChatView_iOS.swift
    │       │   └── Components/
    │       │       └── SelectTextSheet.swift
    │       ├── macOS/
    │       │   ├── Menus.swift
    │       │   ├── Chat/
    │       │   │   ├── ChatView_macOS.swift
    │       │   │   └── Components/
    │       │   │       ├── InputFields_macOS.swift
    │       │   │       ├── Sidebar_macOS.swift
    │       │   │       └── ToolbarView_macOS.swift
    │       │   ├── CompletionsEditor/
    │       │   │   ├── CompletionsEditor.swift
    │       │   │   ├── CompletionsEditorView.swift
    │       │   │   └── UpsertCompletionView.swift
    │       │   ├── Components/
    │       │   │   ├── CompletionButtonView.swift
    │       │   │   ├── CompletionPanelView.swift
    │       │   │   ├── DragAndDrop.swift
    │       │   │   └── PromptPanelView.swift
    │       │   ├── MenuBar/
    │       │   │   ├── MenuBarControl_macOS.swift
    │       │   │   └── MenuBarControlView_macOS.swift
    │       │   └── PromptPanel/
    │       │       ├── FloatingPanel.swift
    │       │       ├── PanelCompletionsVM.swift
    │       │       ├── PanelManager.swift
    │       │       └── PromptPanel.swift
    │       └── Shared/
    │           ├── ApplicationEntry.swift
    │           ├── Chat/
    │           │   ├── Chat.swift
    │           │   └── Components/
    │           │       ├── ConversationStatusView.swift
    │           │       ├── EmptyConversaitonView.swift
    │           │       ├── Header.swift
    │           │       ├── MessageListVIew.swift
    │           │       ├── ModelSelectorView.swift
    │           │       ├── OptionsMenuView.swift
    │           │       ├── ReadingAloudView.swift
    │           │       ├── RemovableImage.swift
    │           │       ├── RunningBorder.swift
    │           │       ├── SelectedImageView.swift
    │           │       ├── UnreachableAPIView.swift
    │           │       ├── ChatMessages/
    │           │       │   ├── ChatMessageView.swift
    │           │       │   ├── CodeBlockView.swift
    │           │       │   └── MarkdownColours.swift
    │           │       └── Recorder/
    │           │           ├── RecordingView.swift
    │           │           └── SpeechRecogniser.swift
    │           ├── Components/
    │           │   └── SimpleFloatingButton.swift
    │           ├── Settings/
    │           │   ├── Settings.swift
    │           │   └── SettingsView.swift
    │           ├── Sidebar/
    │           │   ├── SidebarView.swift
    │           │   └── Components/
    │           │       ├── ConversationHistoryListView.swift
    │           │       ├── KeyboardShortcuts.swift
    │           │       ├── SidebarButton.swift
    │           │       └── SideBarMenuView.swift
    │           └── Voice/
    │               ├── Voice.swift
    │               └── VoiceView.swift
    └── Enchanted.xcodeproj/
        ├── project.pbxproj
        ├── project.xcworkspace/
        │   ├── contents.xcworkspacedata
        │   ├── xcshareddata/
        │   │   ├── IDEWorkspaceChecks.plist
        │   │   ├── WorkspaceSettings.xcsettings
        │   │   └── swiftpm/
        │   │       └── Package.resolved
        │   └── xcuserdata/
        │       └── wpc.xcuserdatad/
        │           └── WorkspaceSettings.xcsettings
        ├── xcshareddata/
        │   └── xcschemes/
        │       └── Enchanted.xcscheme
        └── xcuserdata/
            └── wpc.xcuserdatad/
                ├── xcdebugger/
                │   └── Breakpoints_v2.xcbkptlist
                └── xcschemes/
                    └── xcschememanagement.plist

================================================
FILE: README.md
================================================
[<img src="https://img.shields.io/badge/App_Store-0D96F6?&logo=app-store&logoColor=white">](https://apps.apple.com/gb/app/enchanted-llm/id6474268307)
![Swift](https://img.shields.io/badge/swift-F54A2A?&logo=swift&logoColor=white)
![Release](https://img.shields.io/github/v/release/augustdev/enchanted)
![Stars](https://img.shields.io/github/stars/augustdev/enchanted.svg)
[<img src="https://img.shields.io/twitter/url?url=https%3A%2F%2Ftwitter.com%2Famgauge">](https://twitter.com/amgauge)
![iOS](https://img.shields.io/badge/iOS-000000?&logo=os&logoColor=white)
![macOS](https://img.shields.io/badge/macOS-000000?style=?&logo=os&logoColor=white)
![visionOS](https://img.shields.io/badge/visionOS-000000?style=?&logo=os&logoColor=white)

# Enchanted

Enchanted is open source, [Ollama](https://github.com/jmorganca/ollama) compatible, elegant macOS/iOS/visionOS app for working with privately hosted models such as Llama 2, Mistral, Vicuna, Starling and more. It's essentially ChatGPT app UI that connects to your private models. The goal of Enchanted is to deliver a product allowing unfiltered, secure, private and multimodal experience across all of your devices in iOS ecosystem (macOS, iOS, Watch, Vision Pro).

If you like the project, consider leaving a ⭐️ and following on [𝕏](https://twitter.com/amgauge).

## App Store

[<img src="https://i.ibb.co/7WXt3qZ/download.png">](https://apps.apple.com/gb/app/enchanted-llm/id6474268307)

Note: You will need to run your own Ollama server to use the app. Read instructions below.

## Demo

[<img src="./assets/promo.png">](https://www.youtube.com/watch?v=zW3roZ_vM5Q)

[Vision Pro Demo](https://www.youtube.com/watch?v=y4ZeGU5IdHA)

## Showcase

### Macbook

![image](https://github.com/AugustDev/enchanted/assets/5672094/32a6a203-19a2-4cc1-adc9-cfac8445dd42)

#### Dark mode

![image](https://github.com/AugustDev/enchanted/assets/5672094/6202d235-6c34-4f79-b08a-a372fca0439e)

#### Settings

<img src="https://github.com/AugustDev/enchanted/assets/5672094/b03acfc7-cbc3-4bab-92cd-73d3eb75b47e" width="1000" height="100%">

#### Completions

 <img src="https://github.com/AugustDev/enchanted/assets/5672094/5ca80a65-1bec-4d6c-8065-f0a26861c3c2" width="1000" height="100%">

#### Use from anywhere

https://github.com/AugustDev/enchanted/assets/5672094/221d2a48-9218-4579-b284-a1ad2845e4d6

#### Build custom prompt templates and use anywhere

<img width="599" alt="Xnapper-2024-05-02-18 57 19" src="https://github.com/AugustDev/enchanted/assets/5672094/7b69fe50-5399-4c0b-a269-f28353b8ca27">

https://github.com/AugustDev/enchanted/assets/5672094/8bdebd5e-2910-4855-bb10-91239cafbc28

#### Custom completion

https://github.com/AugustDev/enchanted/assets/5672094/2ef476e7-8fc5-4992-9152-6df3847056d6

### iPhone

Multimodal

<img src="https://github.com/AugustDev/enchanted/assets/5672094/f2a7dafa-9470-4689-9f5a-27b6eb0e168d" width="1000" height="100%">

Markdown

<img src="https://github.com/AugustDev/enchanted/assets/5672094/9caefcb2-69eb-46d0-8d4f-b6269d7c2937" width="1000" height="100%">

Conversation history

<img width="959" alt="Xnapper-2024-05-03-12 00 28" src="https://github.com/AugustDev/enchanted/assets/5672094/7dade8ec-e94d-4936-9237-f2f2bc1533f2">

### Vision Pro

<img width="1534" alt="image" src="https://github.com/AugustDev/enchanted/assets/5672094/810f600a-4377-48e3-9c94-7bb90b78acaf">

<img width="1496" alt="image" src="https://github.com/AugustDev/enchanted/assets/5672094/6014a0b4-03ed-4def-b26c-b9baefad3781">




- Text to Speech (Read Aloud)
- Conversation history included in the API calls
- Dark/Light mode
- Conversation history is stored on your device
- Markdown support (nicely displays tables/lists/code blocks)
- Voice prompts
- Image attachments for prompts
- Specify system prompt used for every conversations
- Edit message content or submit message with different model
- Delete single conversation / delete all conversations
- macOS Spotlight panel <kbd>Ctrl</kbd>+<kbd>⌘</kbd>+<kbd>K</kbd>
- All features works offline

## Usage instructions

Enchanted requires Ollama v0.1.14 or later.

### Case 1. You run Ollama server with public access

1. Download Enchanted app from the App Store.
2. In App Settings specify your server endpoint.

You're done! Make a prompt.

### Case 2. You run Ollama on your computer

[Video instructions here](https://www.youtube.com/watch?v=SFeVCiLOABM)

1. Start Ollama server and download models for usage.
2. Install ngrok forward your Ollama server to make it accessible publicly

   ```shell
   ngrok http 11434 --host-header="localhost:11434"
   ```

3. Copy "Forwarding" URL that will look something like `https://b377-82-132-216-51.ngrok-free.app`. Your Ollama server API is now accessible through this temporary URL.
4. Download Enchanted app from the App Store.
5. In App Settings specify your server endpoint.

   You're done! Make a prompt.

# Contact

For any questions please do not hesitate to contact me at augustinas@subj.org

# Author

Augustinas Malinauskas



================================================
FILE: LICENSE
================================================
                                 Apache License
                           Version 2.0, January 2004
                        http://www.apache.org/licenses/

   TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION

   1. Definitions.

      "License" shall mean the terms and conditions for use, reproduction,
      and distribution as defined by Sections 1 through 9 of this document.

      "Licensor" shall mean the copyright owner or entity authorized by
      the copyright owner that is granting the License.

      "Legal Entity" shall mean the union of the acting entity and all
      other entities that control, are controlled by, or are under common
      control with that entity. For the purposes of this definition,
      "control" means (i) the power, direct or indirect, to cause the
      direction or management of such entity, whether by contract or
      otherwise, or (ii) ownership of fifty percent (50%) or more of the
      outstanding shares, or (iii) beneficial ownership of such entity.

      "You" (or "Your") shall mean an individual or Legal Entity
      exercising permissions granted by this License.

      "Source" form shall mean the preferred form for making modifications,
      including but not limited to software source code, documentation
      source, and configuration files.

      "Object" form shall mean any form resulting from mechanical
      transformation or translation of a Source form, including but
      not limited to compiled object code, generated documentation,
      and conversions to other media types.

      "Work" shall mean the work of authorship, whether in Source or
      Object form, made available under the License, as indicated by a
      copyright notice that is included in or attached to the work
      (an example is provided in the Appendix below).

      "Derivative Works" shall mean any work, whether in Source or Object
      form, that is based on (or derived from) the Work and for which the
      editorial revisions, annotations, elaborations, or other modifications
      represent, as a whole, an original work of authorship. For the purposes
      of this License, Derivative Works shall not include works that remain
      separable from, or merely link (or bind by name) to the interfaces of,
      the Work and Derivative Works thereof.

      "Contribution" shall mean any work of authorship, including
      the original version of the Work and any modifications or additions
      to that Work or Derivative Works thereof, that is intentionally
      submitted to Licensor for inclusion in the Work by the copyright owner
      or by an individual or Legal Entity authorized to submit on behalf of
      the copyright owner. For the purposes of this definition, "submitted"
      means any form of electronic, verbal, or written communication sent
      to the Licensor or its representatives, including but not limited to
      communication on electronic mailing lists, source code control systems,
      and issue tracking systems that are managed by, or on behalf of, the
      Licensor for the purpose of discussing and improving the Work, but
      excluding communication that is conspicuously marked or otherwise
      designated in writing by the copyright owner as "Not a Contribution."

      "Contributor" shall mean Licensor and any individual or Legal Entity
      on behalf of whom a Contribution has been received by Licensor and
      subsequently incorporated within the Work.

   2. Grant of Copyright License. Subject to the terms and conditions of
      this License, each Contributor hereby grants to You a perpetual,
      worldwide, non-exclusive, no-charge, royalty-free, irrevocable
      copyright license to reproduce, prepare Derivative Works of,
      publicly display, publicly perform, sublicense, and distribute the
      Work and such Derivative Works in Source or Object form.

   3. Grant of Patent License. Subject to the terms and conditions of
      this License, each Contributor hereby grants to You a perpetual,
      worldwide, non-exclusive, no-charge, royalty-free, irrevocable
      (except as stated in this section) patent license to make, have made,
      use, offer to sell, sell, import, and otherwise transfer the Work,
      where such license applies only to those patent claims licensable
      by such Contributor that are necessarily infringed by their
      Contribution(s) alone or by combination of their Contribution(s)
      with the Work to which such Contribution(s) was submitted. If You
      institute patent litigation against any entity (including a
      cross-claim or counterclaim in a lawsuit) alleging that the Work
      or a Contribution incorporated within the Work constitutes direct
      or contributory patent infringement, then any patent licenses
      granted to You under this License for that Work shall terminate
      as of the date such litigation is filed.

   4. Redistribution. You may reproduce and distribute copies of the
      Work or Derivative Works thereof in any medium, with or without
      modifications, and in Source or Object form, provided that You
      meet the following conditions:

      (a) You must give any other recipients of the Work or
          Derivative Works a copy of this License; and

      (b) You must cause any modified files to carry prominent notices
          stating that You changed the files; and

      (c) You must retain, in the Source form of any Derivative Works
          that You distribute, all copyright, patent, trademark, and
          attribution notices from the Source form of the Work,
          excluding those notices that do not pertain to any part of
          the Derivative Works; and

      (d) If the Work includes a "NOTICE" text file as part of its
          distribution, then any Derivative Works that You distribute must
          include a readable copy of the attribution notices contained
          within such NOTICE file, excluding those notices that do not
          pertain to any part of the Derivative Works, in at least one
          of the following places: within a NOTICE text file distributed
          as part of the Derivative Works; within the Source form or
          documentation, if provided along with the Derivative Works; or,
          within a display generated by the Derivative Works, if and
          wherever such third-party notices normally appear. The contents
          of the NOTICE file are for informational purposes only and
          do not modify the License. You may add Your own attribution
          notices within Derivative Works that You distribute, alongside
          or as an addendum to the NOTICE text from the Work, provided
          that such additional attribution notices cannot be construed
          as modifying the License.

      You may add Your own copyright statement to Your modifications and
      may provide additional or different license terms and conditions
      for use, reproduction, or distribution of Your modifications, or
      for any such Derivative Works as a whole, provided Your use,
      reproduction, and distribution of the Work otherwise complies with
      the conditions stated in this License.

   5. Submission of Contributions. Unless You explicitly state otherwise,
      any Contribution intentionally submitted for inclusion in the Work
      by You to the Licensor shall be under the terms and conditions of
      this License, without any additional terms or conditions.
      Notwithstanding the above, nothing herein shall supersede or modify
      the terms of any separate license agreement you may have executed
      with Licensor regarding such Contributions.

   6. Trademarks. This License does not grant permission to use the trade
      names, trademarks, service marks, or product names of the Licensor,
      except as required for reasonable and customary use in describing the
      origin of the Work and reproducing the content of the NOTICE file.

   7. Disclaimer of Warranty. Unless required by applicable law or
      agreed to in writing, Licensor provides the Work (and each
      Contributor provides its Contributions) on an "AS IS" BASIS,
      WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
      implied, including, without limitation, any warranties or conditions
      of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A
      PARTICULAR PURPOSE. You are solely responsible for determining the
      appropriateness of using or redistributing the Work and assume any
      risks associated with Your exercise of permissions under this License.

   8. Limitation of Liability. In no event and under no legal theory,
      whether in tort (including negligence), contract, or otherwise,
      unless required by applicable law (such as deliberate and grossly
      negligent acts) or agreed to in writing, shall any Contributor be
      liable to You for damages, including any direct, indirect, special,
      incidental, or consequential damages of any character arising as a
      result of this License or out of the use or inability to use the
      Work (including but not limited to damages for loss of goodwill,
      work stoppage, computer failure or malfunction, or any and all
      other commercial damages or losses), even if such Contributor
      has been advised of the possibility of such damages.

   9. Accepting Warranty or Additional Liability. While redistributing
      the Work or Derivative Works thereof, You may choose to offer,
      and charge a fee for, acceptance of support, warranty, indemnity,
      or other liability obligations and/or rights consistent with this
      License. However, in accepting such obligations, You may act only
      on Your own behalf and on Your sole responsibility, not on behalf
      of any other Contributor, and only if You agree to indemnify,
      defend, and hold each Contributor harmless for any liability
      incurred by, or claims asserted against, such Contributor by reason
      of your accepting any such warranty or additional liability.

   END OF TERMS AND CONDITIONS

   APPENDIX: How to apply the Apache License to your work.

      To apply the Apache License to your work, attach the following
      boilerplate notice, with the fields enclosed by brackets "[]"
      replaced with your own identifying information. (Don't include
      the brackets!)  The text should be enclosed in the appropriate
      comment syntax for the file format. We also recommend that a
      file or class name and description of purpose be included on the
      same "printed page" as the copyright notice for easier
      identification within third-party archives.

   Copyright [yyyy] [name of copyright owner]

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.



================================================
FILE: PRIVACY.md
================================================
Enchanted app does not track any activity or actions of their users. No private information is being collected by the app outside Apple ecosystem.



================================================
FILE: SUPPORT.md
================================================
# Support

Enchanted is an open source project and collaborators are very welcome.

For support please create a Github issue or contact me at augustinas@subj.org.




================================================
FILE: Enchanted/Accessibility.plist
================================================
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>Accessibility Description</key>
	<string>A description of your app&apos;s accessibility features</string>
	<key>Accessibility Portable Bundle</key>
	<string>Enchanted.accessibilitybundle</string>
	<key>Accessible For Bundle</key>
	<string>subj.Enchanted</string>
</dict>
</plist>



================================================
FILE: Enchanted/Enchanted.entitlements
================================================
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>com.apple.security.app-sandbox</key>
	<true/>
	<key>com.apple.security.device.audio-input</key>
	<true/>
	<key>com.apple.security.files.user-selected.read-only</key>
	<true/>
	<key>com.apple.security.network.client</key>
	<true/>
</dict>
</plist>



================================================
FILE: Enchanted/EnchantedDebug.entitlements
================================================
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>com.apple.security.app-sandbox</key>
	<true/>
	<key>com.apple.security.device.audio-input</key>
	<true/>
	<key>com.apple.security.files.user-selected.read-only</key>
	<true/>
	<key>com.apple.security.network.client</key>
	<true/>
</dict>
</plist>



================================================
FILE: Enchanted/Info.plist
================================================
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>NSSpeechRecognitionUsageDescription</key>
	<string>You can speak with enchanted with your voice.</string>
	<key>NSAccessibilityUsageDescription</key>
	<string>Enchanted can perform operatios on selected text such as fixing grammar, extending texts as well as custom commands.</string>
	<key>NSAppTransportSecurity</key>
	<dict>
		<key>NSAllowsArbitraryLoads</key>
		<true/>
	</dict>
	<key>com.apple.security.network.client</key>
	<true/>
</dict>
</plist>



================================================
FILE: Enchanted/Application/EnchantedApp.swift
================================================
//
//  EnchantedApp.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 09/12/2023.
//

import SwiftUI
import SwiftData

#if os(macOS)
import KeyboardShortcuts
extension KeyboardShortcuts.Name {
    static let togglePanelMode = Self("togglePanelMode1", default: .init(.k, modifiers: [.command, .option]))
}
#endif

@main
struct EnchantedApp: App {
    @State private var appStore = AppStore.shared
#if os(macOS)
    @NSApplicationDelegateAdaptor(PanelManager.self) var panelManager
#endif
    
    var body: some Scene {
        WindowGroup {
            ApplicationEntry()
#if os(macOS)
                .onKeyboardShortcut(KeyboardShortcuts.Name.togglePanelMode, type: .keyDown) {
                    print("heya")
                    panelManager.togglePanel()
                }
                .onAppear {
                    NSWindow.allowsAutomaticWindowTabbing = false
                }
#endif
        }
#if os(macOS)
        .commands {
            Menus()
        }
#endif
#if os(macOS)
        Window("Keyboard Shortcuts", id: "keyboard-shortcuts") {
            KeyboardShortcutsDemo()
        }
#endif
        
#if os(macOS)
#if false
        MenuBarExtra {
            MenuBarControl()
        } label: {
            if let iconName = appStore.menuBarIcon {
                Image(systemName: iconName)
            } else {
                MenuBarControlView.icon
            }
        }
        .menuBarExtraStyle(.window)
#endif
#endif
    }
}




================================================
FILE: Enchanted/Assets.xcassets/Contents.json
================================================
{
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}



================================================
FILE: Enchanted/Assets.xcassets/AccentColor.colorset/Contents.json
================================================
{
  "colors" : [
    {
      "idiom" : "universal"
    }
  ],
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}



================================================
FILE: Enchanted/Assets.xcassets/AppIcon.appiconset/Contents.json
================================================
{
  "images" : [
    {
      "filename" : "ios 1.png",
      "idiom" : "universal",
      "platform" : "ios",
      "size" : "1024x1024"
    },
    {
      "filename" : "latest-16.png",
      "idiom" : "mac",
      "scale" : "1x",
      "size" : "16x16"
    },
    {
      "filename" : "latest-32.png",
      "idiom" : "mac",
      "scale" : "2x",
      "size" : "16x16"
    },
    {
      "filename" : "latest-32.png",
      "idiom" : "mac",
      "scale" : "1x",
      "size" : "32x32"
    },
    {
      "filename" : "latest-64.png",
      "idiom" : "mac",
      "scale" : "2x",
      "size" : "32x32"
    },
    {
      "filename" : "latest-128.png",
      "idiom" : "mac",
      "scale" : "1x",
      "size" : "128x128"
    },
    {
      "filename" : "latest-256.png",
      "idiom" : "mac",
      "scale" : "2x",
      "size" : "128x128"
    },
    {
      "filename" : "latest-256.png",
      "idiom" : "mac",
      "scale" : "1x",
      "size" : "256x256"
    },
    {
      "filename" : "latest-512.png",
      "idiom" : "mac",
      "scale" : "2x",
      "size" : "256x256"
    },
    {
      "filename" : "latest-512.png",
      "idiom" : "mac",
      "scale" : "1x",
      "size" : "512x512"
    },
    {
      "filename" : "latest-1024.png",
      "idiom" : "mac",
      "scale" : "2x",
      "size" : "512x512"
    }
  ],
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}



================================================
FILE: Enchanted/Assets.xcassets/AppIcon.solidimagestack/Contents.json
================================================
{
  "info" : {
    "author" : "xcode",
    "version" : 1
  },
  "layers" : [
    {
      "filename" : "Front.solidimagestacklayer"
    },
    {
      "filename" : "Middle.solidimagestacklayer"
    },
    {
      "filename" : "Back.solidimagestacklayer"
    }
  ]
}



================================================
FILE: Enchanted/Assets.xcassets/AppIcon.solidimagestack/Back.solidimagestacklayer/Contents.json
================================================
{
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}



================================================
FILE: Enchanted/Assets.xcassets/AppIcon.solidimagestack/Back.solidimagestacklayer/Content.imageset/Contents.json
================================================
{
  "images" : [
    {
      "filename" : "back.jpg",
      "idiom" : "vision",
      "scale" : "2x"
    }
  ],
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}



================================================
FILE: Enchanted/Assets.xcassets/AppIcon.solidimagestack/Front.solidimagestacklayer/Contents.json
================================================
{
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}



================================================
FILE: Enchanted/Assets.xcassets/AppIcon.solidimagestack/Front.solidimagestacklayer/Content.imageset/Contents.json
================================================
{
  "images" : [
    {
      "filename" : "vision-front.png",
      "idiom" : "vision",
      "scale" : "2x"
    }
  ],
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}



================================================
FILE: Enchanted/Assets.xcassets/AppIcon.solidimagestack/Middle.solidimagestacklayer/Contents.json
================================================
{
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}



================================================
FILE: Enchanted/Assets.xcassets/AppIcon.solidimagestack/Middle.solidimagestacklayer/Content.imageset/Contents.json
================================================
{
  "images" : [
    {
      "filename" : "vision-front.png",
      "idiom" : "vision",
      "scale" : "2x"
    }
  ],
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}



================================================
FILE: Enchanted/Assets.xcassets/Colors/Contents.json
================================================
{
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}



================================================
FILE: Enchanted/Assets.xcassets/Colors/bgCustom.colorset/Contents.json
================================================
{
  "colors" : [
    {
      "color" : {
        "color-space" : "extended-gray",
        "components" : {
          "alpha" : "1.000",
          "white" : "1.000"
        }
      },
      "idiom" : "universal"
    },
    {
      "appearances" : [
        {
          "appearance" : "luminosity",
          "value" : "dark"
        }
      ],
      "color" : {
        "platform" : "XR",
        "reference" : "systemBackgroundColor"
      },
      "idiom" : "universal"
    }
  ],
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}



================================================
FILE: Enchanted/Assets.xcassets/Colors/gray2Custom.colorset/Contents.json
================================================
{
  "colors" : [
    {
      "color" : {
        "color-space" : "display-p3",
        "components" : {
          "alpha" : "1.000",
          "blue" : "0.679",
          "green" : "0.697",
          "red" : "0.676"
        }
      },
      "idiom" : "universal"
    },
    {
      "appearances" : [
        {
          "appearance" : "luminosity",
          "value" : "dark"
        }
      ],
      "color" : {
        "platform" : "XR",
        "reference" : "systemGray2Color"
      },
      "idiom" : "universal"
    }
  ],
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}



================================================
FILE: Enchanted/Assets.xcassets/Colors/gray3Custom.colorset/Contents.json
================================================
{
  "colors" : [
    {
      "color" : {
        "color-space" : "display-p3",
        "components" : {
          "alpha" : "1.000",
          "blue" : "0.814",
          "green" : "0.790",
          "red" : "0.792"
        }
      },
      "idiom" : "universal"
    },
    {
      "appearances" : [
        {
          "appearance" : "luminosity",
          "value" : "dark"
        }
      ],
      "color" : {
        "platform" : "XR",
        "reference" : "systemGray3Color"
      },
      "idiom" : "universal"
    }
  ],
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}



================================================
FILE: Enchanted/Assets.xcassets/Colors/gray4Custom.colorset/Contents.json
================================================
{
  "colors" : [
    {
      "color" : {
        "color-space" : "extended-srgb",
        "components" : {
          "alpha" : "1.000",
          "blue" : "0.839",
          "green" : "0.820",
          "red" : "0.820"
        }
      },
      "idiom" : "universal"
    },
    {
      "appearances" : [
        {
          "appearance" : "luminosity",
          "value" : "dark"
        }
      ],
      "color" : {
        "platform" : "ios",
        "reference" : "systemGray4Color"
      },
      "idiom" : "universal"
    }
  ],
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}



================================================
FILE: Enchanted/Assets.xcassets/Colors/gray5Custom.colorset/Contents.json
================================================
{
  "colors" : [
    {
      "color" : {
        "color-space" : "extended-srgb",
        "components" : {
          "alpha" : "1.000",
          "blue" : "0.918",
          "green" : "0.898",
          "red" : "0.898"
        }
      },
      "idiom" : "universal"
    },
    {
      "appearances" : [
        {
          "appearance" : "luminosity",
          "value" : "dark"
        }
      ],
      "color" : {
        "color-space" : "extended-srgb",
        "components" : {
          "alpha" : "1.000",
          "blue" : "0.180",
          "green" : "0.173",
          "red" : "0.173"
        }
      },
      "idiom" : "universal"
    }
  ],
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}



================================================
FILE: Enchanted/Assets.xcassets/Colors/grayCustom.colorset/Contents.json
================================================
{
  "colors" : [
    {
      "color" : {
        "color-space" : "extended-srgb",
        "components" : {
          "alpha" : "1.000",
          "blue" : "0.576",
          "green" : "0.557",
          "red" : "0.557"
        }
      },
      "idiom" : "universal"
    },
    {
      "appearances" : [
        {
          "appearance" : "luminosity",
          "value" : "dark"
        }
      ],
      "color" : {
        "color-space" : "extended-srgb",
        "components" : {
          "alpha" : "1.000",
          "blue" : "0.576",
          "green" : "0.557",
          "red" : "0.557"
        }
      },
      "idiom" : "universal"
    }
  ],
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}



================================================
FILE: Enchanted/Assets.xcassets/Colors/label.colorset/Contents.json
================================================
{
  "colors" : [
    {
      "color" : {
        "platform" : "universal",
        "reference" : "labelColor"
      },
      "idiom" : "universal"
    },
    {
      "appearances" : [
        {
          "appearance" : "luminosity",
          "value" : "dark"
        }
      ],
      "color" : {
        "platform" : "universal",
        "reference" : "labelColor"
      },
      "idiom" : "universal"
    }
  ],
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}



================================================
FILE: Enchanted/Assets.xcassets/logo-nobg.imageset/Contents.json
================================================
{
  "images" : [
    {
      "filename" : "flatss.png",
      "idiom" : "universal",
      "scale" : "1x"
    },
    {
      "idiom" : "universal",
      "scale" : "2x"
    },
    {
      "idiom" : "universal",
      "scale" : "3x"
    }
  ],
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}



================================================
FILE: Enchanted/Assets.xcassets/ollama.imageset/Contents.json
================================================
{
  "images" : [
    {
      "filename" : "ollama.png",
      "idiom" : "universal",
      "scale" : "1x"
    },
    {
      "idiom" : "universal",
      "scale" : "2x"
    },
    {
      "idiom" : "universal",
      "scale" : "3x"
    }
  ],
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}



================================================
FILE: Enchanted/Extensions/AVSpeechSynthesisVoice+Extension.swift
================================================
//
//  AVSpeechSynthesisVoice+Extension.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 27/05/2024.
//

import Foundation
import AVFoundation

extension AVSpeechSynthesisVoice {
    var prettyName: String {
        let name = self.name
        if name.lowercased().contains("default") || name.lowercased().contains("premium") || name.lowercased().contains("enhanced") {
            return name
        }
        
        let qualityString = {
            switch self.quality.rawValue {
            case 1: return "Default"
            case 2: return "Enhanced"
            case 3: return "Premium"
            default: return "Unknown"
            }
        }()
        
        return "\(name) (\(qualityString))"
    }
}



================================================
FILE: Enchanted/Extensions/Binding+Extension.swift
================================================
//
//  Binding+Extension.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 22/12/2023.
//

import SwiftUI

extension Binding {
    func onChange(_ handler: @escaping (Value) -> Void) -> Binding<Value> {
        Binding(
            get: { self.wrappedValue },
            set: { newValue in
                self.wrappedValue = newValue
                handler(newValue)
            }
        )
    }
}



================================================
FILE: Enchanted/Extensions/Button+Extension.swift
================================================
//
//  Button+Extension.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 11/02/2024.
//

import SwiftUI

struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}



================================================
FILE: Enchanted/Extensions/Colours+Extension.swift
================================================
//
//  Colours.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 09/12/2023.
//

import SwiftUI

// MARK: - Palette
extension Color {
    static let primary = Color(.label)
    static let secondary =  Color(.systemGray)
    
    static let labelCustom = Color("label")
}

// MARK: - hex
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}



================================================
FILE: Enchanted/Extensions/Date+Extension.swift
================================================
//
//  Date.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 10/12/2023.
//

import Foundation

extension Date {
    func daysAgoString() -> String {
        let calendar = Calendar.current
        let now = Date()
        let components = calendar.dateComponents([.day], from: self, to: now)
        
        guard let daysAgo = components.day else {
            return "Today"
        }
        
        switch daysAgo {
        case 0:
            return "Today"
        case 1:
            return "1 day ago"
        default:
            return "\(daysAgo) days ago"
        }
    }
}



================================================
FILE: Enchanted/Extensions/Image+Extension.swift
================================================
//
//  Image+Extension.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 27/05/2024.
//

import SwiftUI

#if os(iOS) || os(watchOS) || os(tvOS) || os(visionOS)
extension Image {
    init?(data: Data) {
        guard let uiImage = UIImage(data: data) else { return nil }
        self.init(uiImage: uiImage)
    }
}
#elseif os(macOS)
extension Image {
    init?(data: Data) {
        guard let nsImage = NSImage(data: data) else { return nil }
        self.init(nsImage: nsImage)
    }
}
#endif



================================================
FILE: Enchanted/Extensions/KeyboardReadable+Extension.swift
================================================
//
//  KeyboardReadable+Extension.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 13/02/2024.
//

import SwiftUI
import Combine

#if os(iOS)
/// Publisher to read keyboard changes.
protocol KeyboardReadable {
    @MainActor var keyboardPublisher: AnyPublisher<Bool, Never> { get }
}

extension KeyboardReadable {
    @MainActor var keyboardPublisher: AnyPublisher<Bool, Never> {
        Publishers.Merge(
            NotificationCenter.default
                .publisher(for: UIResponder.keyboardWillShowNotification)
                .map { _ in true },
            
            NotificationCenter.default
                .publisher(for: UIResponder.keyboardWillHideNotification)
                .map { _ in false }
        )
        .eraseToAnyPublisher()
    }
}
#elseif os(macOS) || os(visionOS)
/// Mock protocol
protocol KeyboardReadable {}
#endif



================================================
FILE: Enchanted/Extensions/ModelContext+Extension.swift
================================================
//
//  ModelContext.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 10/12/2023.
//

import Foundation
import SwiftData

extension ModelContext {
    func saveChanges() throws {
        if self.hasChanges {
            try self.save()
        }
    }
}



================================================
FILE: Enchanted/Extensions/NSClipboardItem.swift
================================================
//
//  NSPasteboardItem.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 17/02/2024.
//

#if os(macOS)
import Foundation
import AppKit

extension NSPasteboardItem {
    func image(forType type: NSPasteboard.PasteboardType) -> Data? {
        guard let tiffData = data(forType: type) else { return nil }
        let image = NSImage(data: tiffData)
        return image?.tiffRepresentation
    }
}
#endif



================================================
FILE: Enchanted/Extensions/SplashSyntaxHighlighter+Extension.swift
================================================
//
//  SplashSyntaxHighlighter+Extension.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 12/03/2024.
//

import MarkdownUI
import SwiftUI
import Splash


struct SplashCodeSyntaxHighlighter: CodeSyntaxHighlighter {
  private let syntaxHighlighter: SyntaxHighlighter<TextOutputFormat>

  init(theme: Splash.Theme) {
    self.syntaxHighlighter = SyntaxHighlighter(format: TextOutputFormat(theme: theme))
  }

  func highlightCode(_ content: String, language: String?) -> Text {
      guard language != nil else {
      return Text(content)
    }

    return self.syntaxHighlighter.highlight(content)
  }
}

extension CodeSyntaxHighlighter where Self == SplashCodeSyntaxHighlighter {
  static func splash(theme: Splash.Theme) -> Self {
    SplashCodeSyntaxHighlighter(theme: theme)
  }
}

struct TextOutputFormat: OutputFormat {
    private let theme: Splash.Theme

    init(theme: Splash.Theme) {
    self.theme = theme
  }

  func makeBuilder() -> Builder {
    Builder(theme: self.theme)
  }
}

extension TextOutputFormat {
  struct Builder: OutputBuilder {
      private let theme: Splash.Theme
    private var accumulatedText: [Text]

      fileprivate init(theme: Splash.Theme) {
      self.theme = theme
      self.accumulatedText = []
    }

    mutating func addToken(_ token: String, ofType type: TokenType) {
      let color = self.theme.tokenColors[type] ?? self.theme.plainTextColor
        self.accumulatedText.append(Text(token).foregroundColor(.init(color)))
    }

    mutating func addPlainText(_ text: String) {
      self.accumulatedText.append(
        Text(text).foregroundColor(.init(self.theme.plainTextColor))
      )
    }

    mutating func addWhitespace(_ whitespace: String) {
      self.accumulatedText.append(Text(whitespace))
    }

    func build() -> Text {
      self.accumulatedText.reduce(Text(""), +)
    }
  }
}



================================================
FILE: Enchanted/Extensions/UIImage+Extension.swift
================================================
//
//  UIImage+Extension.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 21/12/2023.
//

import SwiftUI

#if os(iOS) || os(visionOS)
extension UIImage {
    func convertImageToBase64String() -> String {
        return self.jpegData(compressionQuality: 1)?.base64EncodedString() ?? ""
    }
    
    func aspectFittedToHeight(_ newHeight: CGFloat) -> UIImage {
        let scale = newHeight / self.size.height
        let newWidth = self.size.width * scale
        let newSize = CGSize(width: newWidth, height: newHeight)
        let renderer = UIGraphicsImageRenderer(size: newSize)
        
        return renderer.image { _ in
            self.draw(in: CGRect(origin: .zero, size: newSize))
        }
    }
    
    func compressImageData() -> Data? {
        let resizedImage = self.aspectFittedToHeight(200)
        return resizedImage.jpegData(compressionQuality: 0.2)
    }
}
#elseif os(macOS)
extension NSImage {
    func convertImageToBase64String() -> String {
        guard let tiffRepresentation = self.tiffRepresentation,
              let bitmapImage = NSBitmapImageRep(data: tiffRepresentation),
              let jpegData = bitmapImage.representation(using: .jpeg, properties: [:]) else {
            return ""
        }
        return jpegData.base64EncodedString()
    }
    
    func aspectFittedToHeight(_ newHeight: CGFloat) -> NSImage {
        let scale = newHeight / self.size.height
        let newWidth = self.size.width * scale
        let newSize = NSSize(width: newWidth, height: newHeight)
        
        let newImage = NSImage(size: newSize)
        newImage.lockFocus()
        self.draw(in: NSRect(origin: .zero, size: newSize), from: NSRect(origin: .zero, size: self.size), operation: .copy, fraction: 1.0)
        newImage.unlockFocus()
        
        return newImage
    }
    
    func compressImageData() -> Data? {
        let resizedImage = self.aspectFittedToHeight(200)
        guard let tiffRepresentation = resizedImage.tiffRepresentation,
              let bitmapImage = NSBitmapImageRep(data: tiffRepresentation) else {
            return nil
        }
        return bitmapImage.representation(using: .jpeg, properties: [.compressionFactor: 0.2])
    }
}
#endif



================================================
FILE: Enchanted/Extensions/View+Extension.swift
================================================
//
//  View+Extension.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 21/12/2023.
//

import SwiftUI

// MARK: - Conditional View
extension View {
    /// Whether the view should be empty.
    /// - Parameter bool: Set to `true` to show the view (return EmptyView instead).
    func showIf(_ bool: Bool) -> some View {
        modifier(ConditionalView(show: [bool]))
    }
    
    /// returns a original view only if all conditions are true
    func showIf(_ conditions: Bool...) -> some View {
        modifier(ConditionalView(show: conditions))
    }
}

struct ConditionalView: ViewModifier {
    
    let show: [Bool]
    
    func body(content: Content) -> some View {
        Group {
            if show.filter({ $0 == false }).count == 0 {
                content
            } else {
                EmptyView()
            }
        }
    }
}


extension View {
    /// Usually you would pass  `@Environment(\.displayScale) var displayScale`
    @MainActor func render(scale displayScale: CGFloat = 1.0) -> PlatformImage? {
        let renderer = ImageRenderer(content: self)
        
        renderer.scale = displayScale
        
#if os(iOS) || os(visionOS)
        let image = renderer.uiImage
#elseif os(macOS)
        let image = renderer.nsImage
#endif
        
        return image
    }
}

extension View {
    /// Applies the given transform if the given condition evaluates to `true`.
    /// - Parameters:
    ///   - condition: The condition to evaluate.
    ///   - transform: The transform to apply to the source `View`.
    /// - Returns: Either the original `View` or the modified `View` if the condition is `true`.
    /// https://www.avanderlee.com/swiftui/conditional-view-modifier/
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}

struct GradientForegroundStyle: ViewModifier {
    func body(content: Content) -> some View {
        content.foregroundStyle(
            LinearGradient(
                colors: [Color(hex: "4285f4"), Color(hex: "9b72cb"), Color(hex: "d96570"), Color(hex: "#d96570")],
                startPoint: .leading,
                endPoint: .trailing
            )
        )
    }
}

struct MovingGradientForegroundStyle: ViewModifier {
    @State private var animateGradient = false

    func body(content: Content) -> some View {
        content.overlay(
            LinearGradient(
                colors: [Color(hex: "4285f4"), Color(hex: "9b72cb")],
                startPoint: animateGradient ? .leading : .trailing,
                endPoint: animateGradient ? .trailing : .leading
            )
            .animation(Animation.linear(duration: 3).repeatForever(autoreverses: false), value: animateGradient)
        )
        .mask(content)
        .onAppear {
            animateGradient = true
        }
    }
}


extension View {
    func enchantify() -> some View {
        modifier(GradientForegroundStyle())
    }
    
    func enchantifyMoving() -> some View {
        self.modifier(MovingGradientForegroundStyle())
    }
}


extension View {
    /// Adds an underlying hidden button with a performing action that is triggered on pressed shortcut
    /// - Parameters:
    ///   - key: Key equivalents consist of a letter, punctuation, or function key that can be combined with an optional set of modifier keys to specify a keyboard shortcut.
    ///   - modifiers: A set of key modifiers that you can add to a gesture.
    ///   - perform: Action to perform when the shortcut is pressed
    public func onKeyboardShortcut(key: KeyEquivalent, modifiers: EventModifiers = .command, perform: @escaping () -> ()) -> some View {
        ZStack {
            Button("") {
                perform()
            }
            .hidden()
            .keyboardShortcut(key, modifiers: modifiers)
            
            self
        }
    }
}



================================================
FILE: Enchanted/Helpers/Accessibility.swift
================================================
//
//  Accessibility.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 29/02/2024.
//

#if os(macOS)
import Foundation
import AppKit
import ApplicationServices
import CoreGraphics

final class Accessibility {
    static let shared = Accessibility()

    /// Check if Enchanted has the right permissions
    func checkAccessibility() -> Bool {
        let options = [kAXTrustedCheckOptionPrompt.takeUnretainedValue() as String: false, ]
        return AXIsProcessTrustedWithOptions(options as CFDictionary)
    }
    
    func showAccessibilityInstructionsWindow() {
        if checkAccessibility() {
            return
        }
        
        if let url = URL(string: "x-apple.systempreferences:com.apple.preference.security?Privacy_Accessibility") {
            NSWorkspace.shared.open(url)
        }
    }
    
    func getSelectedText() -> String? {
        if let text = getSelectedTextAX(), text.count > 1  {
            print("getSelectedTextAX", text)
            return text
        }
        
        return getSelectedTextViaCopy()
    }
    
    func getSelectedTextAX() -> String? {
        let systemWideElement = AXUIElementCreateSystemWide()
        
        var focusedApp: AnyObject?
        var error = AXUIElementCopyAttributeValue(systemWideElement, kAXFocusedApplicationAttribute as CFString, &focusedApp)
        guard error == .success, let focusedAppElement = focusedApp as! AXUIElement? else { return nil }
        
        var focusedUIElement: AnyObject?
        error = AXUIElementCopyAttributeValue(focusedAppElement, kAXFocusedUIElementAttribute as CFString, &focusedUIElement)
        guard error == .success, let focusedElement = focusedUIElement as! AXUIElement? else { return nil }
        
        var selectedTextValue: AnyObject?
        error = AXUIElementCopyAttributeValue(focusedElement, kAXSelectedTextAttribute as CFString, &selectedTextValue)
        guard error == .success, let selectedText = selectedTextValue as? String else { return nil }
        
        return selectedText
    }
    
    
    func getSelectedTextViaCopy(retryAttempts: Int = 1) -> String? {
        
        let pasteboard = NSPasteboard.general
        let originalContents = pasteboard.pasteboardItems?.compactMap { $0.string(forType: .string) } ?? []
        pasteboard.clearContents()
        var attempts = 0
        var newContent: String?
        
        while attempts < retryAttempts && newContent == nil {
            simulateCopyKeyPress()
            usleep(100000)
            
            newContent = pasteboard.string(forType: .string)
            if let newContent = newContent, !newContent.isEmpty {
                break
            } else {
                newContent = nil
            }
            attempts += 1
        }
        
        if newContent == nil {
            pasteboard.clearContents()
            for item in originalContents {
                pasteboard.setString(item, forType: .string)
            }
        }
        
        return newContent
        
        
        print("via copy invocation")
        DispatchQueue.main.async {
            print("one", NSPasteboard.general.string(forType: .string))
            sleep(1)
            print("two", NSPasteboard.general.string(forType: .string))
            sleep(1)
            print("three", NSPasteboard.general.string(forType: .string))
            sleep(1)
            print("four", NSPasteboard.general.string(forType: .string))
            
        }
//        let pasteboard = NSPasteboard.general
//        let originalContents = pasteboard.pasteboardItems?.compactMap { $0.string(forType: .string) } ?? []
//        print("step 1", pasteboard.string(forType: .string))
//        pasteboard.clearContents()
//        pasteboard.setString("", forType: .string)
//        print("step 2", pasteboard.string(forType: .string))
//        usleep(1000000)
//        sleep(1)
//        var attempts = 0
//        var newContent: String?
        

//        while attempts < retryAttempts && newContent == nil {
            
//            simulateCopyKeyPress()
//            usleep(100000)
            

//            print("step 3", pasteboard.string(forType: .string))
//            newContent = pasteboard.string(forType: .string)
//            print("pasteboard content", newContent)
//            print("step 3.5", pasteboard.string(forType: .string))
//            if let newContent = newContent, !newContent.isEmpty {
//                break
//            } else {
//                newContent = nil
//            }
//            attempts += 1
//        }
        
//        if newContent == nil {
//            pasteboard.clearContents()
//            for item in originalContents {
//                pasteboard.setString(item, forType: .string)
//            }
//        }
        
//        defer {
//            pasteboard.clearContents()
//        }
//        
//        print("step 4", pasteboard.string(forType: .string))
//        print("returning via copy method", newContent)
        
        return nil
//        return newContent
    }
    
    func simulateCopyKeyPress() {
        let source = CGEventSource(stateID: .hidSystemState)
        
        // Define the virtual keycode for 'C' and the command modifier
        let commandKey = CGEventFlags.maskCommand.rawValue
        let cKeyCode = CGKeyCode(8)  // Virtual keycode for 'C'
        
        // Create and post a key down event
        if let commandCDown = CGEvent(keyboardEventSource: source, virtualKey: cKeyCode, keyDown: true) {
            commandCDown.flags = CGEventFlags(rawValue: commandKey)
            commandCDown.post(tap: .cghidEventTap)
        }
        
        // Create and post a key up event
        if let commandCUp = CGEvent(keyboardEventSource: source, virtualKey: cKeyCode, keyDown: false) {
            commandCUp.flags = CGEventFlags(rawValue: commandKey)
            commandCUp.post(tap: .cghidEventTap)
        }
    }
    
    
    func simulateTyping(for string: String) {
        let source = CGEventSource(stateID: .combinedSessionState)
        let utf16Chars = Array(string.utf16)
        
        utf16Chars.forEach { uniChar in
            var uniChar = uniChar
            if uniChar == 0x000A {
                
                if let shiftDown = CGEvent(keyboardEventSource: source, virtualKey: CGKeyCode(0x38), keyDown: true) {
                    shiftDown.post(tap: .cghidEventTap)
                }
                
                // Simulate pressing and releasing the Return key
                if let eventDown = CGEvent(keyboardEventSource: source, virtualKey: CGKeyCode(0x24), keyDown: true),
                   let eventUp = CGEvent(keyboardEventSource: source, virtualKey: CGKeyCode(0x24), keyDown: false) {
                    
                    eventDown.post(tap: .cghidEventTap)
                    Thread.sleep(forTimeInterval: 0.005)
                    eventUp.post(tap: .cghidEventTap)
                }
                
                // Simulate releasing the Shift key
                if let shiftUp = CGEvent(keyboardEventSource: source, virtualKey: CGKeyCode(0x38), keyDown: false) {
                    shiftUp.post(tap: .cghidEventTap)
                }
                
            } else {
                // Handle other characters as before
                if let eventDown = CGEvent(keyboardEventSource: source, virtualKey: 0, keyDown: true),
                   let eventUp = CGEvent(keyboardEventSource: source, virtualKey: 0, keyDown: false) {
                    
                    eventDown.keyboardSetUnicodeString(stringLength: 1, unicodeString: &uniChar)
                    eventUp.keyboardSetUnicodeString(stringLength: 1, unicodeString: &uniChar)
                    
                    eventDown.post(tap: .cghidEventTap)
                    Thread.sleep(forTimeInterval: 0.005)
                    eventUp.post(tap: .cghidEventTap)
                }
            }
        }
    }
    
    static func simulatePasteCommand() {
        let commandKey = CGEventFlags.maskCommand.rawValue
        let vKeyCode = 0x09
        let source = CGEventSource(stateID: .hidSystemState)
        if let commandVDown = CGEvent(keyboardEventSource: source, virtualKey: CGKeyCode(vKeyCode), keyDown: true) {
            commandVDown.flags = CGEventFlags(rawValue: commandKey)
            commandVDown.post(tap: .cghidEventTap)
        }
        
        usleep(50000)
        
        if let commandVUp = CGEvent(keyboardEventSource: source, virtualKey: CGKeyCode(vKeyCode), keyDown: false) {
            commandVUp.flags = CGEventFlags(rawValue: commandKey)
            commandVUp.post(tap: .cghidEventTap)
        }
    }
    
    
}
#endif



================================================
FILE: Enchanted/Helpers/AsyncQueue.swift
================================================
//
//  AsyncQueue.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 01/03/2024.
//

import Foundation

actor AsyncQueue<T> {
    private var items: [T] = []

    func enqueue(_ item: T) {
        items.append(item)
    }

    func dequeueAll() -> [T] {
        defer { items.removeAll() }
        return items
    }
}



================================================
FILE: Enchanted/Helpers/DeallocPrinter.swift
================================================
//
//  DeallocPrinter.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 17/02/2024.
//

import Foundation

class DeallocPrinter {
    var message: String
    
    init(_ message: String) {
        self.message = message
    }
    
    deinit {
        print("deallocated \(message)")
    }
}



================================================
FILE: Enchanted/Helpers/HotKeys.swift
================================================
//
//  HotKeys.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 17/02/2024.
//

#if os(macOS)
import Foundation
import SwiftUI
import Combine

@available(OSX 11.0, *)
extension View {
    func addCustomHotkeys( _ hotkeys: [HotkeyCombination] ) -> some View {
        self.modifier(HotKeysMod(hotkeys))
    }
}

@available(OSX 11.0, *)
public struct HotKeysMod: ViewModifier {
    @State var subs = Set<AnyCancellable>() // Cancel onDisappear
    var hotkeys: [HotkeyCombination]
    
    init(_ hotkeys: [HotkeyCombination] ) {
        self.hotkeys = hotkeys
    }
    
    public func body(content: Content) -> some View {
        ZStack {
            DisableSoundsView(hotkeys:hotkeys)
                .frame(width: 1, height: 1)
            content
        }
    }
}

struct DisableSoundsView: NSViewRepresentable {
    var hotkeys: [HotkeyCombination]
    
    func makeNSView(context: Context) -> NSView {
        let view = DisableSoundsNSView()
        
        view.hotkeys = hotkeys
        
        return view
    }
    
    func updateNSView(_ nsView: NSView, context: Context) { }
}

class DisableSoundsNSView: NSView {
    var hotkeys: [HotkeyCombination] = []
    
    override func performKeyEquivalent(with event: NSEvent) -> Bool {
        return hotkeysSubscription(combinations: hotkeys)
    }
}

fileprivate func hotkeysSubscription(combinations: [HotkeyCombination]) -> Bool {
    for comb in combinations {
        let basePressedCorrectly = comb.keyBasePressed
        
        if basePressedCorrectly && comb.key.isPressed {
            comb.action()
//            return true
        }
    }
    
    return false
}

///////////////////////
///HELPERS
///////////////////////
struct HotkeyCombination {
    let keyBase: [KeyBase]
    let key: CGKeyCode
    let action: () -> ()
}

extension HotkeyCombination {
    var keyBasePressed: Bool {
        let mustBePressed    = KeyBase.allCases.filter{ keyBase.contains($0) }
        let mustBeNotPressed = KeyBase.allCases.filter{ !keyBase.contains($0) }
        
        for base in mustBePressed {
            if !base.isPressed {
                return false
            }
        }
        
        for base in mustBeNotPressed {
            if base.isPressed {
                return false
            }
        }
        
        return true
    }
}

enum KeyBase: CaseIterable {
    case option
    case command
    case shift
    case control
    
    var isPressed: Bool {
        switch self {
        case .option:
            return CGKeyCode.kVK_Option.isPressed  || CGKeyCode.kVK_RightOption.isPressed
        case .command:
            return CGKeyCode.kVK_Command.isPressed || CGKeyCode.kVK_RightCommand.isPressed
        case .shift:
            return CGKeyCode.kVK_Shift.isPressed   || CGKeyCode.kVK_RightShift.isPressed
        case .control:
            return CGKeyCode.kVK_Control.isPressed || CGKeyCode.kVK_RightControl.isPressed
        }
    }
}

import Foundation

///https://gist.github.com/chipjarred/cbb324c797aec865918a8045c4b51d14
extension CGKeyCode {
    static let kVK_ANSI_A                    : CGKeyCode = 0x00
    static let kVK_ANSI_S                    : CGKeyCode = 0x01
    static let kVK_ANSI_D                    : CGKeyCode = 0x02
    static let kVK_ANSI_F                    : CGKeyCode = 0x03
    static let kVK_ANSI_H                    : CGKeyCode = 0x04
    static let kVK_ANSI_G                    : CGKeyCode = 0x05
    static let kVK_ANSI_Z                    : CGKeyCode = 0x06
    static let kVK_ANSI_X                    : CGKeyCode = 0x07
    static let kVK_ANSI_C                    : CGKeyCode = 0x08
    static let kVK_ANSI_V                    : CGKeyCode = 0x09
    static let kVK_ANSI_B                    : CGKeyCode = 0x0B
    static let kVK_ANSI_Q                    : CGKeyCode = 0x0C
    static let kVK_ANSI_W                    : CGKeyCode = 0x0D
    static let kVK_ANSI_E                    : CGKeyCode = 0x0E
    static let kVK_ANSI_R                    : CGKeyCode = 0x0F
    static let kVK_ANSI_Y                    : CGKeyCode = 0x10
    static let kVK_ANSI_T                    : CGKeyCode = 0x11
    static let kVK_ANSI_1                    : CGKeyCode = 0x12
    static let kVK_ANSI_2                    : CGKeyCode = 0x13
    static let kVK_ANSI_3                    : CGKeyCode = 0x14
    static let kVK_ANSI_4                    : CGKeyCode = 0x15
    static let kVK_ANSI_6                    : CGKeyCode = 0x16
    static let kVK_ANSI_5                    : CGKeyCode = 0x17
    static let kVK_ANSI_Equal                : CGKeyCode = 0x18
    static let kVK_ANSI_9                    : CGKeyCode = 0x19
    static let kVK_ANSI_7                    : CGKeyCode = 0x1A
    static let kVK_ANSI_Minus                : CGKeyCode = 0x1B
    static let kVK_ANSI_8                    : CGKeyCode = 0x1C
    static let kVK_ANSI_0                    : CGKeyCode = 0x1D
    static let kVK_ANSI_RightBracket         : CGKeyCode = 0x1E
    static let kVK_ANSI_O                    : CGKeyCode = 0x1F
    static let kVK_ANSI_U                    : CGKeyCode = 0x20
    static let kVK_ANSI_LeftBracket          : CGKeyCode = 0x21
    static let kVK_ANSI_I                    : CGKeyCode = 0x22
    static let kVK_ANSI_P                    : CGKeyCode = 0x23
    static let kVK_ANSI_L                    : CGKeyCode = 0x25
    static let kVK_ANSI_J                    : CGKeyCode = 0x26
    static let kVK_ANSI_Quote                : CGKeyCode = 0x27
    static let kVK_ANSI_K                    : CGKeyCode = 0x28
    static let kVK_ANSI_Semicolon            : CGKeyCode = 0x29
    static let kVK_ANSI_Backslash            : CGKeyCode = 0x2A
    static let kVK_ANSI_Comma                : CGKeyCode = 0x2B
    static let kVK_ANSI_Slash                : CGKeyCode = 0x2C
    static let kVK_ANSI_N                    : CGKeyCode = 0x2D
    static let kVK_ANSI_M                    : CGKeyCode = 0x2E
    static let kVK_ANSI_Period               : CGKeyCode = 0x2F
    static let kVK_ANSI_Grave                : CGKeyCode = 0x32
    static let kVK_ANSI_KeypadDecimal        : CGKeyCode = 0x41
    static let kVK_ANSI_KeypadMultiply       : CGKeyCode = 0x43
    static let kVK_ANSI_KeypadPlus           : CGKeyCode = 0x45
    static let kVK_ANSI_KeypadClear          : CGKeyCode = 0x47
    static let kVK_ANSI_KeypadDivide         : CGKeyCode = 0x4B
    static let kVK_ANSI_KeypadEnter          : CGKeyCode = 0x4C
    static let kVK_ANSI_KeypadMinus          : CGKeyCode = 0x4E
    static let kVK_ANSI_KeypadEquals         : CGKeyCode = 0x51
    static let kVK_ANSI_Keypad0              : CGKeyCode = 0x52
    static let kVK_ANSI_Keypad1              : CGKeyCode = 0x53
    static let kVK_ANSI_Keypad2              : CGKeyCode = 0x54
    static let kVK_ANSI_Keypad3              : CGKeyCode = 0x55
    static let kVK_ANSI_Keypad4              : CGKeyCode = 0x56
    static let kVK_ANSI_Keypad5              : CGKeyCode = 0x57
    static let kVK_ANSI_Keypad6              : CGKeyCode = 0x58
    static let kVK_ANSI_Keypad7              : CGKeyCode = 0x59
    static let kVK_ANSI_Keypad8              : CGKeyCode = 0x5B
    static let kVK_ANSI_Keypad9              : CGKeyCode = 0x5C

    // keycodes for keys that are independent of keyboard layout
    static let kVK_Return                    : CGKeyCode = 0x24
    static let kVK_Tab                       : CGKeyCode = 0x30
    static let kVK_Space                     : CGKeyCode = 0x31
    static let kVK_Delete                    : CGKeyCode = 0x33
    static let kVK_Escape                    : CGKeyCode = 0x35
    static let kVK_Command                   : CGKeyCode = 0x37
    static let kVK_Shift                     : CGKeyCode = 0x38
    static let kVK_CapsLock                  : CGKeyCode = 0x39
    static let kVK_Option                    : CGKeyCode = 0x3A
    static let kVK_Control                   : CGKeyCode = 0x3B
    static let kVK_RightCommand              : CGKeyCode = 0x36 // Out of order
    static let kVK_RightShift                : CGKeyCode = 0x3C
    static let kVK_RightOption               : CGKeyCode = 0x3D
    static let kVK_RightControl              : CGKeyCode = 0x3E
    static let kVK_Function                  : CGKeyCode = 0x3F
    static let kVK_F17                       : CGKeyCode = 0x40
    static let kVK_VolumeUp                  : CGKeyCode = 0x48
    static let kVK_VolumeDown                : CGKeyCode = 0x49
    static let kVK_Mute                      : CGKeyCode = 0x4A
    static let kVK_F18                       : CGKeyCode = 0x4F
    static let kVK_F19                       : CGKeyCode = 0x50
    static let kVK_F20                       : CGKeyCode = 0x5A
    static let kVK_F5                        : CGKeyCode = 0x60
    static let kVK_F6                        : CGKeyCode = 0x61
    static let kVK_F7                        : CGKeyCode = 0x62
    static let kVK_F3                        : CGKeyCode = 0x63
    static let kVK_F8                        : CGKeyCode = 0x64
    static let kVK_F9                        : CGKeyCode = 0x65
    static let kVK_F11                       : CGKeyCode = 0x67
    static let kVK_F13                       : CGKeyCode = 0x69
    static let kVK_F16                       : CGKeyCode = 0x6A
    static let kVK_F14                       : CGKeyCode = 0x6B
    static let kVK_F10                       : CGKeyCode = 0x6D
    static let kVK_F12                       : CGKeyCode = 0x6F
    static let kVK_F15                       : CGKeyCode = 0x71
    static let kVK_Help                      : CGKeyCode = 0x72
    static let kVK_Home                      : CGKeyCode = 0x73
    static let kVK_PageUp                    : CGKeyCode = 0x74
    static let kVK_ForwardDelete             : CGKeyCode = 0x75
    static let kVK_F4                        : CGKeyCode = 0x76
    static let kVK_End                       : CGKeyCode = 0x77
    static let kVK_F2                        : CGKeyCode = 0x78
    static let kVK_PageDown                  : CGKeyCode = 0x79
    static let kVK_F1                        : CGKeyCode = 0x7A
    static let kVK_LeftArrow                 : CGKeyCode = 0x7B
    static let kVK_RightArrow                : CGKeyCode = 0x7C
    static let kVK_DownArrow                 : CGKeyCode = 0x7D
    static let kVK_UpArrow                   : CGKeyCode = 0x7E

    // ISO keyboards only
    static let kVK_ISO_Section               : CGKeyCode = 0x0A

    // JIS keyboards only
    static let kVK_JIS_Yen                   : CGKeyCode = 0x5D
    static let kVK_JIS_Underscore            : CGKeyCode = 0x5E
    static let kVK_JIS_KeypadComma           : CGKeyCode = 0x5F
    static let kVK_JIS_Eisu                  : CGKeyCode = 0x66
    static let kVK_JIS_Kana                  : CGKeyCode = 0x68

    var isModifier: Bool {
        return (.kVK_RightCommand...(.kVK_Function)).contains(self)
    }

    var baseModifier: CGKeyCode?
    {
        if (.kVK_Command...(.kVK_Control)).contains(self)
                || self == .kVK_Function
        {
                return self
        }

        switch self
        {
                case .kVK_RightShift: return .kVK_Shift
                case .kVK_RightCommand: return .kVK_Command
                case .kVK_RightOption: return .kVK_Option
                case .kVK_RightControl: return .kVK_Control

                default: return nil
        }
    }
    
    var isPressed: Bool {
        CGEventSource.keyState(.combinedSessionState, key: self)
    }
}
#endif



================================================
FILE: Enchanted/Helpers/SleepTest.swift
================================================
//
//  SleepTest.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 18/02/2024.
//

import Foundation

func sleepTest(_ name: String) {
    print("before \(name)")
    sleep(3)
    print("after \(name)")
}



================================================
FILE: Enchanted/Models/AppColorScheme.swift
================================================
//
//  AppColorScheme.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 11/12/2023.
//

import Foundation
import SwiftUI

enum AppColorScheme: String, Identifiable, CaseIterable {
    case light, dark, system
    
    var id: String {
        self.rawValue
    }
    
    var toString: String {
        switch self {
        case .system:
            "System"
        case .light:
            "Light"
        case .dark:
            "Dark"
        }
    }
    
    var toiOSFormat: ColorScheme? {
        switch self {
        case .system:
            return nil
        case .light:
            return ColorScheme.light
        case .dark:
            return ColorScheme.dark
        }
    }
}



================================================
FILE: Enchanted/Models/ConversationState.swift
================================================
//
//  ConversationState.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 10/12/2023.
//

import Foundation

enum ConversationState: Equatable {
    case loading
    case completed
    case error(message: String)
}



================================================
FILE: Enchanted/Models/LanguageModel.swift
================================================
//
//  LanguageModel.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 12/05/2024.
//

import Foundation

struct LanguageModel {
    var name: String
    var provider: ModelProvider
    var imageSupport: Bool
}

enum ModelProvider: Codable {
    case ollama
}



================================================
FILE: Enchanted/Models/NotificationMessage.swift
================================================
//
//  NotificationMessage.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 12/03/2024.
//

import Foundation

struct NotificationMessage: Identifiable {
    var id = UUID()
    var message: String
    var status: Status
    var timestamp = Date()
    
    enum Status {
        case error
        case info
    }
}

// MARK: Sample data
extension NotificationMessage {
    static let sample: [NotificationMessage] = [
        .init(message: "Querying ollama", status: .info),
        .init(message: "Window changed. Stopping writing.", status: .info)
    ]
}



================================================
FILE: Enchanted/Models/SamplePrompt.swift
================================================
//
//  SamplePrompt.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 11/02/2024.
//

import Foundation

struct SamplePrompts: Identifiable, Hashable {
    enum SamplePromptType {
        case question
        case action
        
        var icon: String {
            switch self {
            case .question:
                return "questionmark.circle"
            case .action:
                return "lightbulb.circle"
            }
        }
    }
    
    var prompt: String
    var type: SamplePromptType
    
    var id: String {
        prompt
    }
}

// MARK: - Sample Data
extension SamplePrompts {
    static let samples: [SamplePrompts] = [
        .init(prompt: "Give me phrases to learn in a new language", type: .action),
        .init(prompt: "Act like Mowgli from The Jungle Book and answer questions", type: .action),
        .init(prompt: "How to center div in HTML?", type: .question),
        .init(prompt: "What's unique about Go programming language?", type: .question),
        .init(prompt: "Give 10 gift ideas for best friend", type: .action),
        .init(prompt: "Write a text message asking a friend to be my plus-one at a wedding", type: .action),
        .init(prompt: "Explain supercomputers like I'm five years old", type: .action),
        .init(prompt: "How to do personal taxes in USA?", type: .question),
        .init(prompt: "What are the largest cities in USA in population? Give a table", type: .question),
        .init(prompt: "Give me ideas about New Years resolutions", type: .action),
        .init(prompt: "What is bubble sort? Write example in python", type: .question)
    ]
    
    static var shuffled: [SamplePrompts] {
        return samples.shuffled()
    }
}



================================================
FILE: Enchanted/Preview Content/Preview Assets.xcassets/Contents.json
================================================
{
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}



================================================
FILE: Enchanted/Services/Clipboard.swift
================================================
//
//  Clipboard.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 11/02/2024.
//

import Foundation

#if os(macOS)
import AppKit
#else
import UIKit
#endif


final class Clipboard: Sendable {
    static let shared = Clipboard()
    
    func setString(_ message: String) {
#if os(iOS)
        UIPasteboard.general.string = message
#elseif os(macOS)
        let pasteboard = NSPasteboard.general
        pasteboard.declareTypes([.string], owner: nil)
        pasteboard.setString(message, forType: .string)
#endif
    }
    
    func getImage() -> PlatformImage? {
        #if os(iOS)
        if let image = UIPasteboard.general.image {
            return image
        }
#elseif os(macOS)
        let pb = NSPasteboard.general
        let type = NSPasteboard.PasteboardType.tiff
        guard let imgData = pb.data(forType: type) else { return nil }
        return NSImage(data: imgData)
#endif
        return nil
    }
    
    func getText() -> String? {
#if os(iOS) || os(visionOS)
        return UIPasteboard.general.string
#elseif os(macOS)
        return NSPasteboard.general.string(forType: .string)
#endif
    }
}





================================================
FILE: Enchanted/Services/HapticsService.swift
================================================
//
//  HapticsService.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 28/12/2023.
//

#if os(iOS)
import UIKit

class Haptics: @unchecked Sendable {
    static let shared = Haptics()
    
    private init() { }

    private func play(_ feedbackStyle: UIImpactFeedbackGenerator.FeedbackStyle) {
        let vibrations = UserDefaults.standard.bool(forKey: "vibrations")
        if vibrations {
            UIImpactFeedbackGenerator(style: feedbackStyle).impactOccurred()
        }
    }
    
    private func notify(_ feedbackType: UINotificationFeedbackGenerator.FeedbackType) {
        let vibrations = UserDefaults.standard.bool(forKey: "vibrations")
        if vibrations {
            UINotificationFeedbackGenerator().notificationOccurred(feedbackType)
        }
    }
    
    func lightTap() {
        play(.light)
    }
    
    func mediumTap() {
        play(.medium)
    }
}
#else
class Haptics {
    static let shared = Haptics()
    func lightTap() {}
    func mediumTap() {}
}
#endif



================================================
FILE: Enchanted/Services/HotkeyService.swift
================================================
//
//  HotkeyService.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 11/02/2024.
//

#if os(macOS)
import Foundation
import Magnet
import SwiftUI

final class HotkeyService {
    static let shared = HotkeyService()
    
    func registerSingleUseSpace(modifiers: NSEvent.ModifierFlags, completion: @escaping () -> ()?) {
        if let keyCombo = KeyCombo(key: .space, cocoaModifiers: modifiers) {
            let hotKey = HotKey(identifier: "space", keyCombo: keyCombo) { hotKey in
                completion()
                hotKey.unregister()
            }
            hotKey.register()
        }
    }
    
//    func registerSingleUseEscape(modifiers: NSEvent.ModifierFlags, completion: @escaping () -> ()?) {
//        if let keyCombo = KeyCombo(key: .escape, cocoaModifiers: modifiers) {
//            let hotKey = HotKey(identifier: "escape", keyCombo: keyCombo) { hotKey in
//                completion()
//                hotKey.unregister()
//            }
//            hotKey.register()
//        }
//    }
}

#endif



================================================
FILE: Enchanted/Services/OllamaService.swift
================================================
//
//  OllamaService.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 09/12/2023.
//

import Foundation
import OllamaKit

class OllamaService: @unchecked Sendable {
    static let shared = OllamaService()
    
    var ollamaKit: OllamaKit
    
    init() {
        ollamaKit = OllamaKit(baseURL: URL(string: "http://localhost:11434")!)
        initEndpoint()
    }
    
    func initEndpoint(url: String? = nil, bearerToken: String? = "okki") {
        let defaultUrl = "http://localhost:11434"
        let localStorageUrl = UserDefaults.standard.string(forKey: "ollamaUri")
        let bearerToken = UserDefaults.standard.string(forKey: "ollamaBearerToken")
        if var ollamaUrl = [localStorageUrl, defaultUrl].compactMap({$0}).filter({$0.count > 0}).first {
            if !ollamaUrl.contains("http") {
                ollamaUrl = "http://" + ollamaUrl
            }
            
            if let url = URL(string: ollamaUrl) {
                ollamaKit =  OllamaKit(baseURL: url, bearerToken: bearerToken)
                return
            }
        }
    }
    
    func getModels() async throws -> [LanguageModel]  {
        let response = try await ollamaKit.models()
        let models = response.models.map{
            LanguageModel(
                name: $0.name,
                provider: .ollama,
                imageSupport: $0.details.families?.contains(where: { $0 == "clip" || $0 == "mllama" }) ?? false
            )
        }
        return models
    }
    
    func reachable() async -> Bool {
        return await ollamaKit.reachable()
    }
}



================================================
FILE: Enchanted/Services/SpeechService.swift
================================================
//
//  SpeechService.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 26/05/2024.
//

import Foundation
import AVFoundation
import SwiftUI


class SpeechSynthesizerDelegate: NSObject, AVSpeechSynthesizerDelegate {
    var onSpeechFinished: (() -> Void)?
    var onSpeechStart: (() -> Void)?
    
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didFinish utterance: AVSpeechUtterance) {
        onSpeechFinished?()
    }
    
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didStart utterance: AVSpeechUtterance) {
        onSpeechStart?()
    }
    
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didReceiveError error: Error, for utterance: AVSpeechUtterance, at characterIndex: UInt) {
        print("Speech synthesis error: \(error)")
    }
}

@MainActor final class SpeechSynthesizer: NSObject, ObservableObject {
    static let shared = SpeechSynthesizer()
    private let synthesizer = AVSpeechSynthesizer()
    private let delegate = SpeechSynthesizerDelegate()
    
    @Published var isSpeaking = false
    @Published var voices: [AVSpeechSynthesisVoice] = []
    
    override init() {
        super.init()
        synthesizer.delegate = delegate
        fetchVoices()
    }
    
    func getVoiceIdentifier() -> String? {
        let voiceIdentifier = UserDefaults.standard.string(forKey: "voiceIdentifier")
        if let voice = voices.first(where: {$0.identifier == voiceIdentifier}) {
            return voice.identifier
        }
        
        return voices.first?.identifier
    }
    
    var lastCancelation: (()->Void)? = {}
    
    func speak(text: String, onFinished: @escaping () -> Void = {}) async {
        guard let voiceIdentifier = getVoiceIdentifier() else {
            print("could not find identifier")
            return
        }
        
        print("selected", voiceIdentifier)
        
#if os(iOS)
        let audioSession = AVAudioSession()
        do {
            try audioSession.setCategory(.playback, mode: .default, options: .duckOthers)
            try audioSession.setActive(false)
        } catch let error {
            print("❓", error.localizedDescription)
        }
#endif
        
        lastCancelation = onFinished
        delegate.onSpeechFinished = {
            withAnimation {
                self.isSpeaking = false
            }
            onFinished()
        }
        delegate.onSpeechStart = {
            withAnimation {
                self.isSpeaking = true
            }
        }
        
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(identifier: voiceIdentifier)
        utterance.rate = 0.5
        synthesizer.speak(utterance)
        
        let voices = AVSpeechSynthesisVoice.speechVoices()
        voices.forEach { voice in
            print("\(voice.identifier) - \(voice.name)")
        }
    }
    
    func stopSpeaking() async {
        withAnimation {
            isSpeaking = false
        }
        lastCancelation?()
        synthesizer.stopSpeaking(at: .immediate)
    }
    
    
    func fetchVoices() {
        let voices = AVSpeechSynthesisVoice.speechVoices().sorted { (firstVoice: AVSpeechSynthesisVoice, secondVoice: AVSpeechSynthesisVoice) -> Bool in
            return firstVoice.quality.rawValue > secondVoice.quality.rawValue
        }
        
        /// prevent state refresh if there are no new elements
        let diff = self.voices.elementsEqual(voices, by: { $0.identifier == $1.identifier })
        if diff {
            return
        }
        
        DispatchQueue.main.async {
            self.voices = voices
        }
    }
}



================================================
FILE: Enchanted/Services/SwiftDataService.swift
================================================
//
//  SwiftDataService.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 10/12/2023.
//

import Foundation
import SwiftData

final actor SwiftDataService: ModelActor {
    let modelContainer: ModelContainer
    let modelExecutor: ModelExecutor
    private let modelContext: ModelContext
    
    static let shared = SwiftDataService()
    
    init() {
        let sharedModelContainer: ModelContainer = {
            let schema = Schema([
                LanguageModelSD.self,
                ConversationSD.self,
                MessageSD.self,
                CompletionInstructionSD.self
            ])
            let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
            
            do {
                return try ModelContainer(for: schema, configurations: [modelConfiguration])
            } catch {
                fatalError("Could not create ModelContainer: \(error)")
            }
        }()
        
        self.modelContext = ModelContext(sharedModelContainer)
        self.modelContext.autosaveEnabled = false
        modelContainer = sharedModelContainer
        modelExecutor = DefaultSerialModelExecutor(modelContext: modelContext)
    }
}

// MARK: - Language Models
extension SwiftDataService {
    func fetchModels() throws -> [LanguageModelSD] {
        let sortDescriptor = SortDescriptor(\LanguageModelSD.name)
        let fetchDescriptor = FetchDescriptor<LanguageModelSD>(sortBy: [sortDescriptor])
        let models = try modelContext.fetch(fetchDescriptor)
        
        return models
    }
    
    func saveModels(models: [LanguageModelSD]) throws {
        for model in models {
            modelContext.insert(model)
        }
        
        try modelContext.saveChanges()
    }
    
    func deleteModels() throws {
        try modelContext.delete(model: LanguageModelSD.self)
        try modelContext.saveChanges()
    }
}

// MARK: - Conversations
extension SwiftDataService {
    func createConversation(_ conversation: ConversationSD) throws {
        self.modelContext.insert(conversation)
        try modelContext.saveChanges()
    }
    
    func renameConversation(_ conversation: ConversationSD) throws {
        try modelContext.saveChanges()
    }
    
    func deleteConversation(_ conversation: ConversationSD) throws {
        self.modelContext.delete(conversation)
        try modelContext.saveChanges()
    }
    
    func updateConversation(_ conversation: ConversationSD) throws {
        conversation.updatedAt = .now
        try modelContext.saveChanges()
    }
    
    func fetchConversations() throws -> [ConversationSD] {
        let sortDescriptor = SortDescriptor(\ConversationSD.updatedAt, order: .reverse)
        let fetchDescriptor = FetchDescriptor<ConversationSD>(sortBy: [sortDescriptor])
        return try modelContext.fetch(fetchDescriptor)
    }
    
    func getConversation(_ conversationId: UUID) throws -> ConversationSD? {
        let predicate = #Predicate<ConversationSD>{ $0.id == conversationId }
        let fetchDescriptor = FetchDescriptor<ConversationSD>(predicate: predicate)
        let conversations = try modelContext.fetch(fetchDescriptor)
        return conversations.first
    }
    
    func deleteConversations() throws {
        try modelContext.delete(model: ConversationSD.self)
        try modelContext.saveChanges()
    }
    
    func deleteMessages() throws {
        try modelContext.delete(model: MessageSD.self)
        try modelContext.saveChanges()
    }
    
    func deleteConversations(_ date: Date) throws {
        let predicate = #Predicate<ConversationSD>{ $0.createdAt >=  date && $0.createdAt <= date}
        try modelContext.delete(model: ConversationSD.self, where: predicate)
    }
}


// MARK: - Messages
extension SwiftDataService {
    func fetchMessages(_ conversationId: UUID) throws -> [MessageSD] {
        let predicate = #Predicate<MessageSD>{ $0.conversation?.id == conversationId }
        let sortDescriptor = SortDescriptor(\MessageSD.createdAt)
        let fetchDescriptor = FetchDescriptor<MessageSD>(predicate: predicate, sortBy: [sortDescriptor])
        return try modelContext.fetch(fetchDescriptor)
    }
    
    func updateMessage(_ message: MessageSD) throws {
        try modelContext.saveChanges()
    }
    
    func createMessage(_ mesasge: MessageSD) throws {
        self.modelContext.insert(mesasge)
        try modelContext.saveChanges()
    }
}

// MARK: - CompletionInstruction
extension SwiftDataService {
    func fetchCompletionInstructions() throws -> [CompletionInstructionSD] {
        let sortDescriptor = SortDescriptor(\CompletionInstructionSD.order, order: .forward)
        let fetchDescriptor = FetchDescriptor<CompletionInstructionSD>(sortBy: [sortDescriptor])
        return try modelContext.fetch(fetchDescriptor)
    }
    
    func updateCompletionInstructions(_ instructions: [CompletionInstructionSD]) throws {
        for index in instructions.indices {
            instructions[index].order = index
            modelContext.insert(instructions[index])
        }
        try modelContext.saveChanges()
    }
    
    func deleteCompletionInstruction(_ instruction: CompletionInstructionSD) throws {
        self.modelContext.delete(instruction)
        try modelContext.saveChanges()
    }
}

// MARK: - General
extension SwiftDataService {
    func deleteEverything() throws {
        try modelContext.delete(model: ConversationSD.self)
        try modelContext.delete(model: LanguageModelSD.self)
        try modelContext.delete(model: MessageSD.self)
        try modelContext.delete(model: CompletionInstructionSD.self)
        try modelContext.saveChanges()
    }
}



================================================
FILE: Enchanted/Services/Throttler.swift
================================================
//
//  Throttler.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 29/12/2023.
//

import Foundation

class Throttler {
    private var workItem: DispatchWorkItem?
    private var lastRun: Date = .distantPast
    private let queue: DispatchQueue
    private let delay: TimeInterval

    init(delay: TimeInterval, queue: DispatchQueue = DispatchQueue.main) {
        self.delay = delay
        self.queue = queue
    }

    func throttle(_ block: @escaping () -> Void) {
        workItem?.cancel()

        let item = DispatchWorkItem { [weak self] in
            self?.lastRun = Date()
            block()
        }
        self.workItem = item

        let delayFactor = Date().timeIntervalSince(lastRun) >= delay ? 0 : delay
        queue.asyncAfter(deadline: .now() + delayFactor, execute: item)
    }
}



================================================
FILE: Enchanted/Stores/AppStore.swift
================================================
//
//  AppStore.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 11/12/2023.
//

import Foundation
import Combine
import SwiftUI

enum AppState {
    case chat
    case voice
}

@Observable
final class AppStore {
    static let shared = AppStore()
    
    private var cancellables = Set<AnyCancellable>()
    private var timer: Timer?
    private var pingInterval: TimeInterval = 5
    @MainActor var isReachable: Bool = true
    @MainActor var notifications: [NotificationMessage] = []
    @MainActor var menuBarIcon: String? = nil
    var appState: AppState = .chat

    init() {
        if let storedIntervalString = UserDefaults.standard.string(forKey: "pingInterval") {
            pingInterval = Double(storedIntervalString) ?? 5
            
            if pingInterval <= 0 {
                pingInterval = .infinity
            }
        }
        startCheckingReachability(interval: pingInterval)
    }
    
    deinit {
        stopCheckingReachability()
    }
    
    private func startCheckingReachability(interval: TimeInterval = 5) {
        timer = Timer.scheduledTimer(withTimeInterval: interval, repeats: true) { _ in
            Task { [weak self] in
                let status = await self?.reachable() ?? false
                self?.updateReachable(status)
            }
        }
    }
    
    private func updateReachable(_ isReachable: Bool) {
        DispatchQueue.main.async {
            withAnimation {
                self.isReachable = isReachable
            }
        }
    }

    private func stopCheckingReachability() {
        timer?.invalidate()
        timer = nil
    }

    private func reachable() async -> Bool {
        let status = await OllamaService.shared.reachable()
        return status
    }
    
    @MainActor func uiLog(message: String, status: NotificationMessage.Status) {
        notifications = [NotificationMessage(message: message, status: status)] + notifications.suffix(5)
    }
}



================================================
FILE: Enchanted/Stores/CompletionsStore.swift
================================================
//
//  CompletionsStore.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 01/03/2024.
//

import Foundation
import SwiftUI

@Observable
final class CompletionsStore {
    static let shared = CompletionsStore(swiftDataService: SwiftDataService.shared)
    private var swiftDataService: SwiftDataService
    
    var completions: [CompletionInstructionSD] = []
    
    init(swiftDataService: SwiftDataService) {
        self.swiftDataService = swiftDataService
        load()
    }
    
    func save() {
        Task {
            try? await swiftDataService.updateCompletionInstructions(completions)
        }
    }
    
    func delete(_ completion: CompletionInstructionSD) {
        Task {
            try? await swiftDataService.deleteCompletionInstruction(completion)
            load()
        }
    }
    
    func load() {
        Task {
            var loadedCompletions: [CompletionInstructionSD] = []
            loadedCompletions = (try? await SwiftDataService.shared.fetchCompletionInstructions()) ?? []
            
            if loadedCompletions.count == 0 {
                try? await SwiftDataService.shared.updateCompletionInstructions(CompletionInstructionSD.samples)
                loadedCompletions = (try? await SwiftDataService.shared.fetchCompletionInstructions()) ?? []
            }
            
            withAnimation {
                completions = loadedCompletions
            }
        }
    }
}



================================================
FILE: Enchanted/Stores/ConversationStore.swift
================================================
//
//  ChatsStore.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 10/12/2023.
//

import Foundation
import SwiftData
import OllamaKit
import Combine
import SwiftUI

@Observable
final class ConversationStore: Sendable {
    static let shared = ConversationStore(swiftDataService: SwiftDataService.shared)
    
    private var swiftDataService: SwiftDataService
    private var generation: AnyCancellable?
    
    /// For some reason (SwiftUI bug / too frequent UI updates) updating UI for each stream message sometimes freezes the UI.
    /// Throttling UI updates seem to fix the issue.
    private var currentMessageBuffer: String = ""
#if os(macOS)
    private let throttler = Throttler(delay: 0.1)
#else
    private let throttler = Throttler(delay: 0.1)
#endif
    
    @MainActor var conversationState: ConversationState = .completed
    @MainActor var conversations: [ConversationSD] = []
    @MainActor var selectedConversation: ConversationSD?
    @MainActor var messages: [MessageSD] = []
    
    init(swiftDataService: SwiftDataService) {
        self.swiftDataService = swiftDataService
    }
    
    func loadConversations() async throws {
        print("loading conversations")
        let fetchedConversations = try await swiftDataService.fetchConversations()
        DispatchQueue.main.async {
            self.conversations = fetchedConversations
        }
        print("loaded conversations")
    }
    
    func deleteAllConversations() {
        Task {
            DispatchQueue.main.async { [weak self] in
                self?.messages = []
                self?.selectedConversation = nil
            }
            try? await swiftDataService.deleteConversations()
            try? await swiftDataService.deleteMessages()
            try? await loadConversations()
        }
    }
    
    func deleteDailyConversations(_ date: Date) {
        Task {
            DispatchQueue.main.async { [self] in
                selectedConversation = nil
                messages = []
            }
            try? await swiftDataService.deleteConversations()
            try? await loadConversations()
        }
    }
    
    
    func create(_ conversation: ConversationSD) async throws {
        try await swiftDataService.createConversation(conversation)
    }
    
    func reloadConversation(_ conversation: ConversationSD) async throws {
        let (messages, selectedConversation) = try await (
            swiftDataService.fetchMessages(conversation.id),
            swiftDataService.getConversation(conversation.id)
        )
        
        DispatchQueue.main.async {
                self.messages = messages
                self.selectedConversation = selectedConversation
        }
    }
    
    func selectConversation(_ conversation: ConversationSD) async throws {
        try await reloadConversation(conversation)
    }
    
    func delete(_ conversation: ConversationSD) async throws {
        try await swiftDataService.deleteConversation(conversation)
        let fetchedConversations = try await swiftDataService.fetchConversations()
        DispatchQueue.main.async {
            self.selectedConversation = nil
            self.conversations = fetchedConversations
        }
    }
    
    @MainActor func stopGenerate() {
        generation?.cancel()
        handleComplete()
        withAnimation {
            conversationState = .completed
        }
    }
    
    @MainActor
    func sendPrompt(userPrompt: String, model: LanguageModelSD, image: Image? = nil, systemPrompt: String = "", trimmingMessageId: String? = nil) {
        guard userPrompt.trimmingCharacters(in: .whitespacesAndNewlines).count > 0 else { return }
        
        let conversation = selectedConversation ?? ConversationSD(name: userPrompt)
        conversation.updatedAt = Date.now
        conversation.model = model
        
        print("model", model.name)
        print("conversation", conversation.name)
        
        /// trim conversation if on edit mode
        if let trimmingMessageId = trimmingMessageId {
            conversation.messages = conversation.messages
                .sorted{$0.createdAt < $1.createdAt}
                .prefix(while: {$0.id.uuidString != trimmingMessageId})
        }
        
        /// add system prompt to very first message in the conversation
        if !systemPrompt.isEmpty && conversation.messages.isEmpty {
            let systemMessage = MessageSD(content: systemPrompt, role: "system")
            systemMessage.conversation = conversation
        }
        
        /// construct new message
        let userMessage = MessageSD(content: userPrompt, role: "user", image: image?.render()?.compressImageData())
        userMessage.conversation = conversation
        
        /// prepare message history for Ollama
        var messageHistory = conversation.messages
            .sorted{$0.createdAt < $1.createdAt}
            .map{OKChatRequestData.Message(role: OKChatRequestData.Message.Role(rawValue: $0.role) ?? .assistant, content: $0.content)}
        
        
        print(messageHistory.map({$0.content}))
        
        /// attach selected image to the last Message
        if let image = image?.render() {
            if let lastMessage = messageHistory.popLast() {
                let imagesBase64: [String] = [image.convertImageToBase64String()]
                let messageWithImage = OKChatRequestData.Message(role: lastMessage.role, content: lastMessage.content, images: imagesBase64)
                messageHistory.append(messageWithImage)
            }
        }
        
        let assistantMessage = MessageSD(content: "", role: "assistant")
        assistantMessage.conversation = conversation
        
        conversationState = .loading
        
        Task {
            try await swiftDataService.updateConversation(conversation)
            try await swiftDataService.createMessage(userMessage)
            try await swiftDataService.createMessage(assistantMessage)
            try await reloadConversation(conversation)
            try? await loadConversations()
            
            if await OllamaService.shared.ollamaKit.reachable() {
                DispatchQueue.global(qos: .background).async {
                    var request = OKChatRequestData(model: model.name, messages: messageHistory)
                    request.options = OKCompletionOptions(temperature: 0)
                    
                    self.generation = OllamaService.shared.ollamaKit.chat(data: request)
                        .sink(receiveCompletion: { [weak self] completion in
                            switch completion {
                            case .finished:
                                self?.handleComplete()
                            case .failure(let error):
                                self?.handleError(error.localizedDescription)
                            }
                        }, receiveValue: { [weak self] response in
                            self?.handleReceive(response)
                        })
                    
                }
            } else {
                self.handleError("Server unreachable")
            }
        }
    }
    
    @MainActor
    private func handleReceive(_ response: OKChatResponse)  {
        if messages.isEmpty { return }
        
        if let responseContent = response.message?.content {
            currentMessageBuffer = currentMessageBuffer + responseContent
            
            throttler.throttle { [weak self] in
                guard let self = self else { return }
                let lastIndex = self.messages.count - 1
                self.messages[lastIndex].content.append(currentMessageBuffer)
                currentMessageBuffer = ""
            }
        }
    }
    
    @MainActor
    private func handleError(_ errorMessage: String) {
        guard let lastMesasge = messages.last else { return }
        lastMesasge.error = true
        lastMesasge.done = false
        
        Task(priority: .background) {
            try? await swiftDataService.updateMessage(lastMesasge)
        }
        
        withAnimation {
            conversationState = .error(message: errorMessage)
        }
    }
    
    @MainActor
    private func handleComplete() {
        guard let lastMesasge = messages.last else { return }
        lastMesasge.error = false
        lastMesasge.done = true
        
        Task(priority: .background) {
            try await self.swiftDataService.updateMessage(lastMesasge)
        }
        
        withAnimation {
            conversationState = .completed
        }
    }
}



================================================
FILE: Enchanted/Stores/LanguageModelStore.swift
================================================
//
//  ModelStore.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 10/12/2023.
//

import Foundation
import SwiftData

@Observable
final class LanguageModelStore {
    static let shared = LanguageModelStore(swiftDataService: SwiftDataService.shared)
    
    private var swiftDataService: SwiftDataService
    @MainActor var models: [LanguageModelSD] = []
    @MainActor var supportsImages = false
    @MainActor var selectedModel: LanguageModelSD?
    
    init(swiftDataService: SwiftDataService) {
        self.swiftDataService = swiftDataService
    }
    
    @MainActor
    func setModel(model: LanguageModelSD?) {
        if let model = model {
            // check if model still exists
            if models.contains(model) {
                selectedModel = model
            }
        } else {
            selectedModel = nil
        }
    }
    
    @MainActor
    func setModel(modelName: String) {
        for model in models {
            if model.name == modelName {
                setModel(model: model)
                return
            }
        }
        if let lastModel = models.last {
            setModel(model: lastModel)
        }
    }
    
    func loadModels() async throws {
        let remoteModels = try await OllamaService.shared.getModels()
        try await swiftDataService.saveModels(models: remoteModels.map{LanguageModelSD(name: $0.name, imageSupport: $0.imageSupport, modelProvider: .ollama)})
        
        let storedModels = (try? await swiftDataService.fetchModels()) ?? []
        
        DispatchQueue.main.async {
            let remoteModelNames = remoteModels.map { $0.name }
            self.models = storedModels.filter{remoteModelNames.contains($0.name)}
        }
    }
    
    func deleteAllModels() async throws {
        DispatchQueue.main.async {
            self.models = []
        }
        try await swiftDataService.deleteModels()
    }
}



================================================
FILE: Enchanted/SwiftData/Models/CompletionInstructionSD.swift
================================================
//
//  CompletionInstructionSD.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 29/02/2024.
//

import Foundation
import SwiftData

@Model
final class CompletionInstructionSD: Identifiable {
    @Attribute(.unique) var id: UUID = UUID()
    var name: String
    var keyboardCharacterStr: String
    var instruction: String
    var order: Int
    var modelTemperature: Float? = 0.8
    
    var keyboardCharacter: Character {
        keyboardCharacterStr.first ?? "x"
    }
    
    init(name: String, keyboardCharacterStr: String, instruction: String, order: Int, modelTemperature: Float = 0.8) {
        self.name = name
        self.keyboardCharacterStr = keyboardCharacterStr
        self.instruction = instruction
        self.order = order
        self.modelTemperature = modelTemperature
    }
}

// MARK: - Sample data
extension CompletionInstructionSD {
    static let samples: [CompletionInstructionSD] = [
        .init(name: "Fix Grammar", keyboardCharacterStr: "f", instruction: "Fix grammar for the text below", order: 1),
        .init(name: "Summarize", keyboardCharacterStr: "s", instruction: "Summarize the following text, focusing strictly on the key facts and core arguments. Exclude any model-generated politeness or introductory phrases. Provide a direct, concise summary in bulletpoints.", order: 2),
        .init(name: "Write More", keyboardCharacterStr: "w", instruction: "Elaborate on the following content, providing additional insights, examples, detailed explanations, and related concepts. Dive deeper into the topic to offer a comprehensive understanding and explore various dimensions not covered in the original text.", order: 3),
        .init(name: "Politely Decline", keyboardCharacterStr: "d", instruction: "Write a response politely declining the offer below", order: 4)
    ]
}


// MARK: - @unchecked Sendable
extension CompletionInstructionSD: @unchecked Sendable {
    /// We hide compiler warnings for concurency. We have to make sure to modify the data only via SwiftDataManager to ensure concurrent operations.
}



================================================
FILE: Enchanted/SwiftData/Models/ConversationSD.swift
================================================
//
//  ConversationSD.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 10/12/2023.
//

import Foundation
import SwiftData

@Model
final class ConversationSD: Identifiable {
    @Attribute(.unique) var id: UUID = UUID()
    
    var name: String
    var createdAt: Date
    var updatedAt: Date

    @Relationship(deleteRule: .nullify)
    var model: LanguageModelSD?

    @Relationship(deleteRule: .cascade, inverse: \MessageSD.conversation)
    var messages: [MessageSD] = []
    
    init(name: String, updatedAt: Date = Date.now) {
        self.name = name
        self.updatedAt = updatedAt
        self.createdAt = updatedAt
    }
}

// MARK: - Sample data
extension ConversationSD {
    static let sample = [
        ConversationSD(name: "New Chat", updatedAt: Date.now),
        ConversationSD(name: "Presidential", updatedAt: Calendar.current.date(byAdding: .day, value: -1, to: Date.now)!),
        ConversationSD(name: "What is QFT?", updatedAt: Calendar.current.date(byAdding: .day, value: -2, to: Date.now)!)
    ]
}

// MARK: - @unchecked Sendable
extension ConversationSD: @unchecked Sendable {
    /// We hide compiler warnings for concurency. We have to make sure to modify the data only via SwiftDataManager to ensure concurrent operations.
}



================================================
FILE: Enchanted/SwiftData/Models/LanguageModelSD.swift
================================================
//
//  ModelSD.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 10/12/2023.
//

import Foundation
import SwiftData

@Model
final class LanguageModelSD: Identifiable {
    @Attribute(.unique) var name: String
    var isAvailable: Bool = false
    var imageSupport: Bool = false
    @Attribute var modelProvider: ModelProvider? = ModelProvider.ollama
    
    @Relationship(deleteRule: .cascade, inverse: \ConversationSD.model)
    var conversations: [ConversationSD]? = []
    
    
    init(name: String, imageSupport: Bool = false, modelProvider: ModelProvider) {
        self.name = name
        self.imageSupport = imageSupport
        self.modelProvider = modelProvider
    }
    
    @Transient var isNotAvailable: Bool {
        isAvailable == false
    }
}

// MARK: - Helpers
extension LanguageModelSD {
    var prettyName: String {
        guard let modelName = name.components(separatedBy: ":").first else {
            return name
        }
        
        return modelName.capitalized
    }
    
    var prettyVersion: String {
        let components = name.components(separatedBy: ":")
        if components.count >= 2 {
            return components[1]
        }
        return ""
    }
    
    var supportsImages: Bool {
        if imageSupport {
            return true
        }
        
        /// older technique to detect image modality
        /// @deprecated
        let imageSupportedModels = ["llava"]
        for modelName in imageSupportedModels {
            if name.contains(modelName) {
                return true
            }
        }
        return false
    }
    
    static let sample: [LanguageModelSD] = [
        .init(name: "Llama:latest", modelProvider: .ollama),
        .init(name: "Mistral:latest", modelProvider: .ollama)
    ]
}


// MARK: - @unchecked Sendable
extension LanguageModelSD: @unchecked Sendable {
    /// We hide compiler warnings for concurency. We have to make sure to modify the data only via SwiftDataManager to ensure concurrent operations.
}



================================================
FILE: Enchanted/SwiftData/Models/MessageSD.swift
================================================
//
//  ConversationSD.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 10/12/2023.
//

import Foundation
import SwiftData

@Model
final class MessageSD: Identifiable {
    @Attribute(.unique) var id: UUID = UUID()
    
    var think: String? {
        if content.contains("<think>") {
            if content.contains("</think>") {
                let tmps = content.components(separatedBy: "</think>")
                if tmps.count > 1 {
                    return tmps[0].replacingOccurrences(of: "<think>", with: "")
                }
            }
            return content.replacingOccurrences(of: "<think>", with: "")
        }
        return nil
    }
    var hasThink: Bool {
        if content.contains("<think>") {
            return true
        }
        return false
    }
    var thinkComplete: Bool {
        if content.contains("<think>") {
            if content.contains("</think>") {
                return true
            }
        }
        return false
    }
    var content: String
    var realContent: String? {
        if content.contains("<think>") {
            if content.contains("</think>") {
                let tmps = content.components(separatedBy: "</think>")
                if tmps.count > 1 {
                    return tmps[1]
                }
            }
            return nil
        }
        return content
    }
    var role: String
    var done: Bool = false
    var error: Bool = false
    var createdAt: Date = Date.now
    @Attribute(.externalStorage) var image: Data?
    
    @Relationship var conversation: ConversationSD?
        
    
    init(content: String, role: String, done: Bool = false, error: Bool = false, image: Data? = nil) {
        self.content = content
        self.role = role
        self.done = done
        self.error = error
        self.conversation = conversation
        self.image = image
    }

    @Transient var model: String {
        conversation?.model?.name ?? ""
    }
}

extension MessageSD {
    static let sample: [MessageSD] = [
        .init(content: "How many quarks there are in SM?", role: "user"),
        .init(content: "There are 6 quarks in SM, each of them has an antiparticle and colour.", role: "assistant"),
        .init(content: "How elementary particle is defined in mathematics?", role: "user"),
        .init(content: "Elementary particle is defined as an irreducible representation of the poincase group.", role: "assistant")
    ]
}

// MARK: - @unchecked Sendable
extension MessageSD: @unchecked Sendable {
    /// We hide compiler warnings for concurency. We have to make sure to modify the data only via SwiftDataManager to ensure concurrent operations.
}



================================================
FILE: Enchanted/UI/Helpers.swift
================================================
//
//  Helpers.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 09/02/2024.
//

import SwiftUI

#if os(iOS) || os(visionOS)
typealias PlatformImage = UIImage
#else
typealias PlatformImage = NSImage
#endif

//Image(nsImage: nsImage)



================================================
FILE: Enchanted/UI/iOS/ChatView_iOS.swift
================================================
//
//  ChatView.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 09/12/2023.
//

#if os(iOS)
import SwiftUI
import PhotosUI

struct ChatView: View {
    var conversation: ConversationSD?
    var messages: [MessageSD]
    var modelsList: [LanguageModelSD]
    var onMenuTap: () -> ()
    var onNewConversationTap: () -> ()
    var onSendMessageTap: @MainActor (_ prompt: String, _ model: LanguageModelSD, _ image: Image?, _ trimmingMessageId: String?) -> ()
    var conversationState: ConversationState
    var onStopGenerateTap: @MainActor () -> ()
    var reachable: Bool
    var onSelectModel: @MainActor (_ model: LanguageModelSD?) -> ()
    var userInitials: String
    
    private var selectedModel: LanguageModelSD?
    @State private var message = ""
    @State private var isRecording = false
    @State private var editMessage: MessageSD?
    @FocusState private var isFocusedInput: Bool
    @StateObject var speechRecognizer = SpeechRecognizer()
    
    /// Image selection
    @State private var pickerSelectorActive: PhotosPickerItem?
    @State private var selectedImage: Image?
    
    init(
        conversation: ConversationSD? = nil,
        messages: [MessageSD],
        modelsList: [LanguageModelSD],
        selectedModel: LanguageModelSD?,
        onSelectModel: @MainActor @escaping (_ model: LanguageModelSD?) -> (),
        onMenuTap: @escaping () -> Void,
        onNewConversationTap: @escaping () -> Void,
        onSendMessageTap: @MainActor @escaping (_ prompt: String, _ model: LanguageModelSD, _ image: Image?, _ trimmingMessageId: String?) -> Void,
        conversationState: ConversationState,
        onStopGenerateTap: @MainActor @escaping () -> Void,
        reachable: Bool,
        modelSupportsImages: Bool = false,
        userInitials: String
    ) {
        self.conversation = conversation
        self.messages = messages
        self.modelsList = modelsList
        self.onMenuTap = onMenuTap
        self.onNewConversationTap = onNewConversationTap
        self.onSendMessageTap = onSendMessageTap
        self.conversationState = conversationState
        self.onStopGenerateTap = onStopGenerateTap
        self.reachable = reachable
        self.onSelectModel = onSelectModel
        self.selectedModel = selectedModel
        self.userInitials = userInitials
    }
    
    private func onMessageSubmit() {
        Task {
            await Haptics.shared.mediumTap()
            
            guard let selectedModel = selectedModel else { return }
            
            await onSendMessageTap(
                message,
                selectedModel,
                selectedImage,
                editMessage?.id.uuidString
            )
            
            withAnimation {
                isFocusedInput = false
                editMessage = nil
                selectedImage = nil
                message = ""
            }
        }
    }
    
    var header: some View {
        HStack(alignment: .center) {
            Button(action: onMenuTap) {
                Image(systemName: "line.3.horizontal")
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 22)
                    .foregroundColor(Color(.label))
            }
            
            Spacer()
            
            ModelSelectorView(
                modelsList: modelsList,
                selectedModel: selectedModel,
                onSelectModel: onSelectModel
            )
            .showIf(!modelsList.isEmpty)
            
            Spacer()
            
            Button(action: onNewConversationTap) {
                Image(systemName: "square.and.pencil")
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 22)
                    .foregroundColor(Color(.label))
            }
        }
    }
    
    var inputFields: some View {
        HStack(spacing: 10) {
            PhotosPicker(selection: $pickerSelectorActive) {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.foreground)
                    .frame(height: 19)
            }
            .onChange(of: pickerSelectorActive) {
                Task {
                    if let loaded = try? await pickerSelectorActive?.loadTransferable(type: Image.self) {
                        selectedImage = loaded
                    } else {
                        print("Failed")
                    }
                }
            }
            .showIf(selectedModel?.supportsImages ?? false)
            
            
            HStack {
                SelectedImageView(image: $selectedImage)
                
                TextField("Message", text: $message, axis: .vertical)
                    .focused($isFocusedInput)
                    .frame(minHeight: 40)
                    .font(.system(size: 14))
                
                RecordingView(speechRecognizer: speechRecognizer, isRecording: $isRecording.animation()) { transcription in
                    self.message = transcription
                }
            }
            .onChange(of: isFocusedInput, { oldValue, newValue in
                withAnimation {
                    isFocusedInput = newValue
                }
            })
            .padding(.horizontal)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(
                        isRecording ? Color(.systemBlue) : Color(.systemGray2),
                        style: StrokeStyle(lineWidth: isRecording ? 2 : 0.5)
                    )
            )
            
            switch conversationState {
            case .loading:
                SimpleFloatingButton(systemImage: "square.fill", onClick: onStopGenerateTap)
                    .frame(width: 12)
            default:
                SimpleFloatingButton(systemImage: "paperplane.fill", onClick: onMessageSubmit)
                    .frame(width: 18)
            }
        }
        .contentShape(Rectangle())
        .onTapGesture {
            // allow focusing text area on greater tap area
            isFocusedInput = true
        }
    }
    
    var body: some View {
        VStack {
            header
                .padding(.horizontal)
            
            if conversation != nil {
                MessageListView(
                    messages: messages,
                    conversationState: conversationState,
                    userInitials: userInitials,
                    editMessage: $editMessage
                )
            } else {
                EmptyConversaitonView(sendPrompt: {selectedMessage in
                    if let selectedModel = selectedModel {
                        onSendMessageTap(selectedMessage, selectedModel, nil, nil)
                    }
                })
            }
            
            ConversationStatusView(state: conversationState)
                .padding()
            
            if !reachable {
                UnreachableAPIView()
            }
            
            inputFields
                .padding(.horizontal)
            
        }
        .padding(.bottom, 5)
        .onChange(of: editMessage, initial: false) { _, newMessage in
            if let newMessage = newMessage {
                message = newMessage.content
                isFocusedInput = true
            }
        }
    }
}

#Preview {
    ChatView(
        conversation: ConversationSD.sample[0],
        messages: MessageSD.sample,
        modelsList: LanguageModelSD.sample,
        selectedModel: LanguageModelSD.sample[0],
        onSelectModel: {_ in },
        onMenuTap: {},
        onNewConversationTap: { },
        onSendMessageTap: {_,_,_,_    in},
        conversationState: .loading,
        onStopGenerateTap: {},
        reachable: false,
        modelSupportsImages: true, 
        userInitials: "AM"
    )
}

#Preview {
    ChatView(
        conversation: nil,
        messages: [],
        modelsList: LanguageModelSD.sample,
        selectedModel: LanguageModelSD.sample[0],
        onSelectModel: {_ in},
        onMenuTap: {},
        onNewConversationTap: { },
        onSendMessageTap: {_,_,_,_    in},
        conversationState: .completed,
        onStopGenerateTap: {},
        reachable: true,
        modelSupportsImages: true,
        userInitials: "AM"
    )
}
#endif



================================================
FILE: Enchanted/UI/iOS/Components/SelectTextSheet.swift
================================================
//
//  SelectTextSheet.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 01/05/2024.
//

#if os(iOS) || os(visionOS)
import SwiftUI
import UIKit

struct SelectTextSheet: View {
    @Environment(\.presentationMode) var presentationMode
    @FocusState private var isTextEditorFocused: Bool
    
    var message: MessageSD
    var body: some View {
        VStack {
            ZStack {
                Text("Select Text")
                    .font(.system(size: 16))
                    .fontWeight(.bold)
                
                HStack {
                    Spacer()
                    Button(action: {presentationMode.wrappedValue.dismiss()}) {
                        Image(systemName: "x.circle.fill")
                            .padding(7)
                    }
                    .buttonStyle(.plain)
                }
                .padding()
            }
            
            TextEditor(text: .constant(message.content))
                .focusable()
                .focused($isTextEditorFocused)
                .onReceive(NotificationCenter.default.publisher(for: UITextField.textDidBeginEditingNotification)) { obj in
                    if let textField = obj.object as? UITextView {
                        textField.selectedTextRange = textField.textRange(from: textField.beginningOfDocument, to: textField.endOfDocument)
                    }
                }
            #if os(visionOS)
                .frame(width: 600, height: 600)
            #endif
            
        }
        .textSelection(.enabled)
        .onAppear {
            isTextEditorFocused = true
        }
        
    }
}

#Preview {
    SelectTextSheet(message: MessageSD.sample[0])
}

#endif



================================================
FILE: Enchanted/UI/macOS/Menus.swift
================================================
//
//  Menus.swift
//  Enchanted
//
//  Created by Wildan Zulfikar on 24.4.2024.
//

import Foundation
import SwiftUI

#if os(macOS)
struct ShowSettingsKey: FocusedValueKey {
    typealias Value = Binding<Bool>
}

extension FocusedValues {
    var showSettings: Binding<Bool>? {
        get { self[ShowSettingsKey.self] }
        set { self[ShowSettingsKey.self] = newValue }
    }
}

struct Menus: Commands {
   @FocusedValue(\.showSettings) var showSettings

   var body: some Commands {
       CommandGroup(replacing: .appSettings) {
           Button("Settings") {
               showSettings?.wrappedValue = true
           }
           .keyboardShortcut(",", modifiers: .command)
       }
  }
}
#endif



================================================
FILE: Enchanted/UI/macOS/Chat/ChatView_macOS.swift
================================================
//
//  Chat.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 10/02/2024.
//

#if os(macOS) || os(visionOS)
import SwiftUI

struct ChatView: View {
    @State private var columnVisibility = NavigationSplitViewVisibility.doubleColumn
    var selectedConversation: ConversationSD?
    var conversations: [ConversationSD]
    var messages: [MessageSD]
    var modelsList: [LanguageModelSD]
    var onMenuTap: () -> ()
    var onNewConversationTap: () -> ()
    var onSendMessageTap: @MainActor (_ prompt: String, _ model: LanguageModelSD, _ image: Image?, _ trimmingMessageId: String?) -> ()
    var onConversationTap: (_ conversation: ConversationSD) -> ()
    var conversationState: ConversationState
    var onStopGenerateTap: @MainActor () -> ()
    var reachable: Bool
    var modelSupportsImages: Bool
    var selectedModel: LanguageModelSD?
    var onSelectModel: @MainActor (_ model: LanguageModelSD?) -> ()
    var onConversationDelete: (_ conversation: ConversationSD) -> ()
    var onDeleteDailyConversations: (_ date: Date) -> ()
    var userInitials: String
    var copyChat: (_ json: Bool) -> ()
    
    @State private var message = ""
    @State private var editMessage: MessageSD?
    @State var isRecording = false
    @FocusState private var isFocusedInput: Bool
    
    var body: some View {
        NavigationSplitView(columnVisibility: $columnVisibility) {
            SidebarView(
                selectedConversation: selectedConversation,
                conversations: conversations,
                onConversationTap: onConversationTap,
                onConversationDelete: onConversationDelete,
                onDeleteDailyConversations: onDeleteDailyConversations
            )
            .toolbar {
#if os(visionOS)
                ToolbarItemGroup(placement:.navigationBarTrailing) {
                    Button(action: {
                        withAnimation(.easeIn(duration: 0.3)) {
                            columnVisibility = .detailOnly
                        }
                    }) {
                        Image(systemName: "sidebar.left")
                    }
                    .buttonStyle(PlainButtonStyle())
                    .showIf(columnVisibility != .detailOnly)
                }
                
#endif
            }
        } detail: {
            VStack(alignment: .center) {
                if selectedConversation != nil {
                    MessageListView(
                        messages: messages,
                        conversationState: conversationState,
                        userInitials: userInitials,
                        editMessage: $editMessage
                    )
                } else {
                    EmptyConversaitonView(sendPrompt: {selectedMessage in
                        if let selectedModel = selectedModel {
                            onSendMessageTap(selectedMessage, selectedModel, nil, nil)
                        }
                    })
                }
                
                if !reachable {
                    UnreachableAPIView()
                }
                
                InputFieldsView(
                    message: $message,
                    conversationState: conversationState,
                    onStopGenerateTap: onStopGenerateTap,
                    selectedModel: selectedModel,
                    onSendMessageTap: onSendMessageTap,
                    editMessage: $editMessage
                )
                .padding()
                .frame(maxWidth: 800)
            }
            .toolbar {
                #if os(visionOS)
                ToolbarItemGroup(placement: .topBarLeading) {
                    Button(action: {
                        withAnimation {
                            columnVisibility = .automatic
                        }
                    }) {
                        Image(systemName: "sidebar.left")
                    }
                    .buttonStyle(PlainButtonStyle())
                    .showIf(columnVisibility == .detailOnly)
                    
                    Text("Enchanted")
                }
                #else
                ToolbarItem(placement: .navigation) {
                    Text("Enchanted")
                }
                #endif

                
                ToolbarItemGroup(placement: .automatic) {
                    ToolbarView(
                        modelsList: modelsList,
                        selectedModel: selectedModel,
                        onSelectModel: onSelectModel,
                        onNewConversationTap: onNewConversationTap,
                        copyChat: copyChat
                    )
                }
            }
        }
        .navigationTitle("")
        .onChange(of: editMessage, initial: false) { _, newMessage in
            if let newMessage = newMessage {
                message = newMessage.content
                isFocusedInput = true
            }
        }
    }
}

#Preview {
    ChatView(
        selectedConversation: ConversationSD.sample[0],
        conversations: ConversationSD.sample,
        messages: MessageSD.sample,
        modelsList: LanguageModelSD.sample,
        onMenuTap: {},
        onNewConversationTap: { },
        onSendMessageTap: {_,_,_,_    in},
        onConversationTap: {_ in},
        conversationState: .completed,
        onStopGenerateTap: {},
        reachable: true,
        modelSupportsImages: true,
        selectedModel: LanguageModelSD.sample[0], onSelectModel: {_ in},
        onConversationDelete: {_ in},
        onDeleteDailyConversations: {_ in},
        userInitials: "AM",
        copyChat: {_ in}
    )
}
#endif



================================================
FILE: Enchanted/UI/macOS/Chat/Components/InputFields_macOS.swift
================================================
//
//  InputFields_macOS.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 10/02/2024.
//

#if os(macOS) || os(visionOS)
import SwiftUI

struct InputFieldsView: View {
    @Binding var message: String
    var conversationState: ConversationState
    var onStopGenerateTap: @MainActor () -> Void
    var selectedModel: LanguageModelSD?
    var onSendMessageTap: @MainActor (_ prompt: String, _ model: LanguageModelSD, _ image: Image?, _ trimmingMessageId: String?) -> ()
    @Binding var editMessage: MessageSD?
    @State var isRecording = false
    
    @State private var selectedImage: Image?
    @State private var fileDropActive: Bool = false
    @State private var fileSelectingActive: Bool = false
    @FocusState private var isFocusedInput: Bool
    
    @MainActor private func sendMessage() {
        guard let selectedModel = selectedModel else { return }
        
        onSendMessageTap(
            message,
            selectedModel,
            selectedImage,
            editMessage?.id.uuidString
        )
        withAnimation {
            isRecording = false
            isFocusedInput = false
            editMessage = nil
            selectedImage = nil
            message = ""
        }
    }
    
    private func updateSelectedImage(_ image: Image) {
        selectedImage = image
    }
    
#if os(macOS)
    var hotkeys: [HotkeyCombination] {
        [
            HotkeyCombination(keyBase: [.command], key: .kVK_ANSI_V) {
                if let nsImage = Clipboard.shared.getImage() {
                    let image = Image(nsImage: nsImage)
                    updateSelectedImage(image)
                }
            }
        ]
    }
#endif
    
    var body: some View {
        HStack(spacing: 20) {
            if let image = selectedImage {
                RemovableImage(
                    image: image,
                    onClick: {selectedImage = nil},
                    height: 70
                )
                .padding(5)
            }
            
            ZStack(alignment: .trailing) {
                TextField("Message", text: $message.animation(.easeOut(duration: 0.3)), axis: .vertical)
                    .focused($isFocusedInput)
                    .font(.system(size: 14))
                    .frame(maxWidth:.infinity, minHeight: 40)
                    .clipped()
                    .textFieldStyle(.plain)
#if os(macOS)
                    .onSubmit {
                        if NSApp.currentEvent?.modifierFlags.contains(.shift) == true {
                            message += "\n"
                        } else {
                            sendMessage()
                        }
                    }
#endif
                /// TextField bypasses drop area
                    .allowsHitTesting(!fileDropActive)
#if os(macOS)
                    .addCustomHotkeys(hotkeys)
#endif
                    .padding(.trailing, 80)
                
                
                HStack {
                    RecordingView(isRecording: $isRecording.animation()) { transcription in
                        withAnimation(.easeIn(duration: 0.3)) {
                            self.message = transcription
                        }
                    }
                    
                    SimpleFloatingButton(systemImage: "photo.fill", onClick: { fileSelectingActive.toggle() })
                        .showIf(selectedModel?.supportsImages ?? false)
                        .fileImporter(isPresented: $fileSelectingActive,
                                      allowedContentTypes: [.png, .jpeg, .tiff],
                                      onCompletion: { result in
                            switch result {
                            case .success(let url):
                                guard url.startAccessingSecurityScopedResource() else { return }
                                if let imageData = try? Data(contentsOf: url) {
                                    selectedImage = Image(data: imageData)
                                }
                                url.stopAccessingSecurityScopedResource()
                            case .failure(let error):
                                print(error)
                            }
                        })
                    
                    
                    Group {
                        switch conversationState {
                        case .loading:
                            SimpleFloatingButton(systemImage: "square.fill", onClick: onStopGenerateTap)
                        default:
                            SimpleFloatingButton(systemImage: "paperplane.fill", onClick: { Task { sendMessage() } })
                                .showIf(!message.isEmpty)
                        }
                    }
                    
                }
            }
            
        }
        .transition(.slide)
        .padding(.horizontal)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .strokeBorder(
                    Color.gray2Custom,
                    style: StrokeStyle(lineWidth: 1)
                )
        )
        .overlay {
            if fileDropActive {
                DragAndDrop(cornerRadius: 10)
            }
        }
        .animation(.default, value: fileDropActive)
        .onDrop(of: [.image], isTargeted: $fileDropActive.animation(), perform: { providers in
            guard let provider = providers.first else { return false }
            _ = provider.loadDataRepresentation(for: .image) { data, error in
                if error == nil, let data {
                    selectedImage = Image(data: data)
                }
            }
            
            return true
        })
        .contentShape(Rectangle())
        .onTapGesture {
            // allow focusing text area on greater tap area
            isFocusedInput = true
        }
    }
}

#Preview {
    @State var message = ""
    return InputFieldsView(
        message: $message,
        conversationState: .completed,
        onStopGenerateTap: {},
        onSendMessageTap: {_, _, _, _  in},
        editMessage: .constant(nil)
    )
}
#endif



================================================
FILE: Enchanted/UI/macOS/Chat/Components/Sidebar_macOS.swift
================================================
//
//  Sidebar_macOS.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 10/02/2024.
//

import SwiftUI



================================================
FILE: Enchanted/UI/macOS/Chat/Components/ToolbarView_macOS.swift
================================================
//
//  ToolbarView_macOS.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 10/02/2024.
//

#if os(macOS) || os(visionOS)
import SwiftUI

struct ToolbarView: View {
    var modelsList: [LanguageModelSD]
    var selectedModel: LanguageModelSD?
    var onSelectModel: @MainActor (_ model: LanguageModelSD?) -> ()
    var onNewConversationTap: () -> ()
    var copyChat: (_ json: Bool) -> ()
    
    var body: some View {
        ModelSelectorView(
            modelsList: modelsList,
            selectedModel: selectedModel,
            onSelectModel: onSelectModel,
            showChevron: false
        )
        .frame(height: 20)
        
        MoreOptionsMenuView(copyChat: copyChat)
        
        Button(action: onNewConversationTap) {
            Image(systemName: "square.and.pencil")
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .frame(height: 20)
                .padding(5)
        }
        .buttonStyle(PlainButtonStyle())
        .keyboardShortcut(KeyEquivalent("n"), modifiers: .command)
    }
}

#Preview {
    ToolbarView(
        modelsList: LanguageModelSD.sample,
        selectedModel: LanguageModelSD.sample[0],
        onSelectModel: {_ in},
        onNewConversationTap: {}, 
        copyChat: {_ in}
    )
}

#endif



================================================
FILE: Enchanted/UI/macOS/CompletionsEditor/CompletionsEditor.swift
================================================
//
//  Completions.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 01/03/2024.
//

#if os(macOS)
import SwiftUI

struct CompletionsEditor: View {
    @State private var completionsStore = CompletionsStore.shared
    @State private var accessibilityStatus = true
    @State private var timer: Timer?
    
    private func requestAccessibility() {
        Task {
            print("Requesting accessibility")
            await Accessibility.shared.showAccessibilityInstructionsWindow()
            Accessibility.shared.simulateCopyKeyPress()
        }
    }
    
    var body: some View {
        CompletionsEditorView(
            completions: $completionsStore.completions,
            onSave: completionsStore.save,
            onDelete: completionsStore.delete,
            accessibilityAccess: accessibilityStatus,
            requestAccessibilityAccess: requestAccessibility
        )
        .onAppear {
            timer = Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { _ in
                withAnimation {
                    accessibilityStatus = Accessibility.shared.checkAccessibility()
                    print("accessibility", accessibilityStatus)
                }
            }
        }
        .onDisappear {
            timer?.invalidate()
        }
    }
}
#endif



================================================
FILE: Enchanted/UI/macOS/CompletionsEditor/CompletionsEditorView.swift
================================================
//
//  CompletionsEditorView.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 29/02/2024.
//

#if os(macOS)
import SwiftUI
import KeyboardShortcuts

struct CompletionsEditorView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var completions: [CompletionInstructionSD]
    @State var selectedCompletion: CompletionInstructionSD?
    var onSave: () -> ()
    var onDelete: (CompletionInstructionSD) -> ()
    var accessibilityAccess: Bool
    var requestAccessibilityAccess: () -> ()
    
    private func close() {
        presentationMode.wrappedValue.dismiss()
    }
    
    private func newCompletion() {
        let newCompletion = CompletionInstructionSD(
            name: "New Completion",
            keyboardCharacterStr: "x",
            instruction: "",
            order: completions.count,
            modelTemperature: 0.8
        )
        withAnimation {
            completions.append(newCompletion)
            selectedCompletion = newCompletion
        }
    }
    
    private func discard(for completion: CompletionInstructionSD) {
        selectedCompletion = nil
        withAnimation {
            completions = completions.filter{$0.id != completion.id}
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Text("Completions")
                    .font(.title)
                    .fontWeight(.thin)
                    .enchantify()
                    .padding(.bottom, 30)
                
                Spacer()
                
                Button(action: close) {
                    Text("Close")
                }
                .buttonStyle(GrowingButton())
            }
            
            Text("Create your own dynamic prompts usable anywhere on your mac with keyboard shortcuts to speed up common tasks. You can reorder, delete and edit your completions.")
                .padding(.bottom, 10)
                .fixedSize(horizontal: false, vertical: true)
            
            HStack(alignment: .center) {
                KeyboardShortcuts.Recorder("Keyboard shortcut", name: .togglePanelMode)
                Spacer()
                Button(action: newCompletion) {
                    Text("New Completion")
                        .foregroundStyle(.blue)
                }
                .buttonStyle(GrowingButton())
            }
            .padding(.bottom, 10)
            
            List {
                ForEach($completions, editActions: .move) { $completion in
                    HStack(alignment: .center) {
                        CompletionButtonView(name: completion.name, keyboardCharacter: completion.keyboardCharacter, action: {})
                        
                        Spacer()
                        
                        Text(completion.instruction)
                            .lineLimit(1)
                            .frame(width: 500, alignment: .leading)
                        
                        Button(action: {
                            selectedCompletion = completion
                        }) {
                            Image(systemName: "pencil")
                        }
                        .buttonStyle(GrowingButton())
                        
                        Button(action: {onDelete(completion)}) {
                            Image(systemName: "xmark")
                        }
                        .buttonStyle(GrowingButton())
                    }
                }
                .onMove { source , destination in
                    completions.move(fromOffsets: source, toOffset: destination)
                    onSave()
                }
            }
            .listStyle(PlainListStyle())
            
            HStack {
                Text("Completions require Accessibility access to capture selected text outside Enchanted.")
                
                Spacer()
                
                Button(action: requestAccessibilityAccess) {
                    Text("Open Privacy Settings")
                }
            }
            .padding()
            .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.red, lineWidth: 1)
                )
            .background(RoundedRectangle(cornerRadius: 5).fill(Color.red.opacity(0.05)))
            .showIf(!accessibilityAccess)
        }
        .padding()
        .frame(width: 800, height: 600)
        .sheet(item: $selectedCompletion) { selectedCompletion in
            UpsertCompletionView(completion: selectedCompletion, onSave: onSave)
                .onDisappear {
                    if selectedCompletion.name == "New Completion" {
                        discard(for: selectedCompletion)
                    }
                }
        }
    }
}

#Preview {
    CompletionsEditorView(completions: .constant(CompletionInstructionSD.samples), onSave: {}, onDelete: {_ in }, accessibilityAccess: false, requestAccessibilityAccess: {})
}
#endif



================================================
FILE: Enchanted/UI/macOS/CompletionsEditor/UpsertCompletionView.swift
================================================
//
//  UpsertCompletionView.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 01/03/2024.
//

#if os(macOS)
import SwiftUI

struct UpsertCompletionView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var name: String = "New Instruction"
    @State var prompt: String = ""
    @State var keyboardShortcutKey: String = "x"
    @State var temperature: String = "0.8"
    
    var existingCompletion: CompletionInstructionSD?
    var onSave: () -> ()
    
    init(completion: CompletionInstructionSD? = nil, onSave: @escaping () -> ()) {
        self.existingCompletion = completion
        self.onSave = onSave
        
        if let completion = completion {
            _name = State(initialValue: completion.name)
            _prompt = State(initialValue: completion.instruction)
            _keyboardShortcutKey = State(initialValue: completion.keyboardCharacter.lowercased())
            _temperature = State(initialValue: String(format: "%.2f", completion.modelTemperature ?? 0.8))
        }
    }
    
    private func save() {
        existingCompletion?.name = name
        existingCompletion?.instruction = prompt
        existingCompletion?.keyboardCharacterStr = keyboardShortcutKey
        existingCompletion?.modelTemperature = Float(temperature) ?? 0.8
        onSave()
        presentationMode.wrappedValue.dismiss()
    }
    @FocusState private var isFocused: Bool
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Cancel")
                        .foregroundStyle(.blue)
                }
                .buttonStyle(GrowingButton())
                
                Spacer()
                
                Button(action: save) {
                    Text("Save")
                        .foregroundStyle(.blue)
                }
                .buttonStyle(GrowingButton())
            }
            .padding(.bottom, 20)
            
            Form {
                TextField("Name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                
                VStack(alignment: .trailing) {
                    LabeledContent("Instruction Prompt") {
                        TextEditor(text: $prompt)
                            .scrollContentBackground(.hidden)
                            .lineLimit(6)
                            .frame(height: 80)
                        
                    }
                    
                    Text("Instruction Prompt gets appended before the selected text and together sent to the LLM.")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                VStack(alignment: .trailing) {
                    TextField("Keyboard Shortcut Letter", text: $keyboardShortcutKey)
                        .onChange(of: keyboardShortcutKey) { newValue in
                            if newValue.count > 1 {
                                keyboardShortcutKey = String(newValue.prefix(1))
                            }
                        }
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("Only single character keyboard shortcuts allowed.")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                TextField("Temperature", text: $temperature)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding(.bottom, 20)
            
            CompletionButtonView(name: name, keyboardCharacter: keyboardShortcutKey.first ?? Character("x"), action: {})
        }
        .padding()
        .frame(maxWidth: 600)
    }
}

#Preview {
    UpsertCompletionView(completion: nil, onSave: {})
}

#endif



================================================
FILE: Enchanted/UI/macOS/Components/CompletionButtonView.swift
================================================
//
//  CompletionButtonView.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 29/02/2024.
//

import SwiftUI

struct CompletionButtonView: View {
    var name: String
    var keyboardCharacter: Character
    var action: () -> ()
    
    var body: some View {
        Button(action: action) {
            HStack {
                Text(keyboardCharacter.lowercased())
                    .textCase(.uppercase)
                    .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(5)
                    .font(.system(size: 10, weight: .medium, design: .default))
                
                Text(name)
                    .font(.system(size: 12))
            }
            .padding(.vertical, 4)
            .padding(.horizontal, 8)
            .foregroundStyle(.label)
            .background(RoundedRectangle(cornerRadius: 5).fill(.bgCustom))
        }
        .buttonStyle(GrowingButton())
    }
}

#Preview {
    CompletionButtonView(name: "Fix Grammar", keyboardCharacter: "f", action: {})
}



================================================
FILE: Enchanted/UI/macOS/Components/CompletionPanelView.swift
================================================
//
//  PanelCompletionsView.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 29/02/2024.
//

#if os(macOS)
import SwiftUI
import Magnet
import WrappingHStack

enum CompletionsPromptMode {
    case completionsInCurrentWindow
    case completionsInApp
    
    var next: CompletionsPromptMode {
        switch self {
        case .completionsInApp:
            return .completionsInCurrentWindow
        case .completionsInCurrentWindow:
            return .completionsInApp
        }
    }
}

struct PanelCompletionsView: View {
    var completions: [CompletionInstructionSD]
    var completionInWindow: @MainActor (_ completion: CompletionInstructionSD, _ scheduledTyping: Bool) -> ()
    var completionInApp: @MainActor (_ completion: CompletionInstructionSD) -> ()
    @State var completionMode: CompletionsPromptMode = .completionsInApp
    @State var selectedCompletion: CompletionInstructionSD? = nil
    
    @State var customCompletionInstruction: String = ""
    @State var showCustomCompletionInstructionTextField = false
    @FocusState var focusCustomCompletionsTectField: Bool
    @Namespace var animation
    
    var filetedCompletions: [CompletionInstructionSD] {
        if let selectedCompletion = selectedCompletion {
            return [selectedCompletion]
        }
        return completions
    }
    
    func changeCompletionMode() {
        withAnimation {
            completionMode = completionMode.next
        }
    }
    
    @MainActor
    func submitCompletion(_ completion: CompletionInstructionSD) {
        withAnimation {
            selectedCompletion = completion
            switch completionMode {
            case .completionsInCurrentWindow:
                completionInWindow(completion, false)
            case .completionsInApp:
                completionInApp(completion)
            }
        }
    }
    
    var customCompletionButton: some View {
        Button(action: {
            withAnimation(.easeOut(duration: 0.15)) {
                showCustomCompletionInstructionTextField = true
                focusCustomCompletionsTectField = true
            }
        }) {
            HStack {
                Text("TAB")
                    .textCase(.uppercase)
                    .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(5)
                    .font(.system(size: 10, weight: .medium, design: .default))
                
                Text("Your Command")
                    .enchantify()
            }
            .padding(.vertical, 4)
            .padding(.horizontal, 8)
            .foregroundStyle(.label)
            .background(RoundedRectangle(cornerRadius: 5).fill(.bgCustom))
            
        }
        .buttonStyle(GrowingButton())
        .keyboardShortcut(.tab, modifiers: [])
        .matchedGeometryEffect(id: "customCommand", in: animation)
    }
    
    var customCompletionInstructionTextField: some View {
        HStack {
            Button(action: {
                withAnimation(.easeOut(duration: 0.15)) {
                    showCustomCompletionInstructionTextField = false
                }
            }) {
                Text("TAB")
                    .textCase(.uppercase)
                    .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(5)
                    .font(.system(size: 10, weight: .medium, design: .default))
            }
            .buttonStyle(GrowingButton())
            .keyboardShortcut(.tab, modifiers: [])
            
            TextField("Instruction", text: $customCompletionInstruction)
                .textFieldStyle(.plain)
                .focused($focusCustomCompletionsTectField)
                .onSubmit {
                    let completion = CompletionInstructionSD(
                        name: "Custom Command",
                        keyboardCharacterStr: "",
                        instruction: customCompletionInstruction + "\n\n",
                        order: 0)
                    
                    DispatchQueue.main.async {
                        submitCompletion(completion)
                    }
                }
        }
        .padding(.vertical, 4)
        .padding(.horizontal, 8)
        .foregroundStyle(.label)
        .background(RoundedRectangle(cornerRadius: 5).fill(.bgCustom))
        .matchedGeometryEffect(id: "customCommand", in: animation)
        .padding(.bottom, 10)
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 10) {
                Image("logo-nobg")
                    .resizable()
                    .antialiased(true)
                    .scaledToFit()
                    .frame(width: 20)
                    .foregroundColor(.label)
                
                Text("Completions")
                    .font(.title2)
                    .fontWeight(.light)
                    .enchantify()
                
                Spacer()
                
                HStack(alignment: .firstTextBaseline) {
                    Text("Tap")
                    Image(systemName: "space")
                    Text("to begin")
                }
                .showIf(selectedCompletion != nil)
            }
            
            VStack(alignment: .leading, spacing: 8) {
                WrappingHStack(alignment: .leading) {
                    ForEach(filetedCompletions) { completion in
                        CompletionButtonView(
                            name: completion.name,
                            keyboardCharacter: completion.keyboardCharacter,
                            action: {
                                submitCompletion(completion)
                            }
                        )
                        .keyboardShortcut(KeyEquivalent(completion.keyboardCharacter), modifiers: [])
                    }
                    
                    customCompletionButton
                        .showIf(!showCustomCompletionInstructionTextField)
                }
                
                if showCustomCompletionInstructionTextField {
                    customCompletionInstructionTextField
                }
            }
            .padding(.bottom, 10)
            
            HStack(alignment: .center) {
                switch completionMode {
                case .completionsInApp:
                    Text("Respond in **App**.")
                case .completionsInCurrentWindow:
                    Text("Respond in current **Window**.")
                }
                
                Button(action: changeCompletionMode) {
                    HStack(spacing: 4) {
                        Text("⇧")
                            .font(.caption2)
                            .padding(.horizontal, 7)
                            .padding(.vertical, 2)
                            .background(RoundedRectangle(cornerRadius: 3).fill(.bgCustom))
                        
                        Text("+")
                            .font(.footnote)
                        
                        Text("SPACE")
                            .font(.caption2)
                            .padding(.horizontal, 7)
                            .padding(.vertical, 2)
                            .background(RoundedRectangle(cornerRadius: 3).fill(.bgCustom))
                    }
                        
                }
                .buttonStyle(GrowingButton())
                
                Text("to switch")
            }
            
            .padding(.horizontal, 8)
            .showIf(selectedCompletion == nil)
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 8).fill(.ultraThickMaterial)
        }
        .onKeyboardShortcut(key: .space, modifiers: [.shift]) {
            changeCompletionMode()
        }
        .frame(minWidth: 500, maxWidth: 500)
    }
}

#Preview {
    PanelCompletionsView(
        completions: CompletionInstructionSD.samples,
        completionInWindow: {_,_  in},
        completionInApp: {_ in}
    )
}
#endif



================================================
FILE: Enchanted/UI/macOS/Components/DragAndDrop.swift
================================================
//
//  DragAndDrop.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 17/02/2024.
//

import SwiftUI

struct DragAndDrop: View {
    var cornerRadius: CGFloat = 15
    
    var body: some View {
        ZStack {
            Color.clear
            
            HStack(spacing: 8) {
                Image(systemName: "photo")
                    .font(.system(size: 25))
                Text("Drop your image here")
                    .font(.title2)
            }
            .foregroundColor(.label)
        }
        .overlay(
            RoundedRectangle(cornerRadius: cornerRadius)
                .strokeBorder(style: StrokeStyle(lineWidth: 2, lineJoin: .round, dash: [10]))
                .foregroundColor(.grayCustom)
        )
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
        .padding(5)
        .background {
            RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                .fill(.ultraThinMaterial)
        }
    }
}

#Preview {
    DragAndDrop()
        .frame(height: 100)
}



================================================
FILE: Enchanted/UI/macOS/Components/PromptPanelView.swift
================================================
//
//  PromptPanelView.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 12/02/2024.
//

#if os(macOS)
import SwiftUI
import Vortex

struct PromptPanelView: View {
    @FocusState private var focused: Bool?
    @State var prompt: String = ""
    var onSubmit: @MainActor (_ prompt: String, _ image: Image?) -> ()
    var onLayoutUpdate: () -> ()
    var imageSupport: Bool
    
    @State private var fileDropActive: Bool = false
    @State private var selectedImage: Image?
    
    var hotkeys: [HotkeyCombination] {
        [
            HotkeyCombination(keyBase: [.command], key: .kVK_ANSI_V) {
                if let nsImage = Clipboard.shared.getImage() {
                    let image = Image(nsImage: nsImage)
                    updateSelectedImage(image)
                }
                
                if let clipboardText = Clipboard.shared.getText() {
                    prompt = clipboardText
                }
            }
        ]
    }
    
    var imageSupportMissing: some View {
        HStack {
            Text("This model does not support images. Supported models are llava, bakllava and llama vision.")
                .font(.caption2)
            Spacer()
        }
        .padding(.top)
    }
    
    private func updateSelectedImage(_ image: Image) {
        selectedImage = image
    }
    
    var dynamicFont: Font {
        if prompt.count <= 30 {
            return .title
        } else if prompt.count <= 100 {
            return .title2
        }
        
        return .body
    }
    
    var inputField: some View {
        HStack(spacing: 15) {
            Image("logo-nobg")
                .resizable()
                .antialiased(true)
                .scaledToFit()
                .frame(width: 20)
                .foregroundColor(.label)
            
            TextField("How can I help today?", text: $prompt, axis: .vertical)
                .font(dynamicFont)
                .minimumScaleFactor(0.4)
                .focusEffectDisabled()
                .background(Color.clear)
                .focused($focused, equals: true)
                .textFieldStyle(.plain)
                .lineLimit(5, reservesSpace: false)
                .onSubmit {
                    Task { @MainActor in
                        if NSApp.currentEvent?.modifierFlags.contains(.shift) == true {
                            prompt += "\n"
                        } else {
                            onSubmit(prompt, selectedImage)
                        }
                    }
                }
            /// TextField bypasses drop area
                .allowsHitTesting(!fileDropActive)
                .layoutPriority(-1)
        }
    }
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack(alignment: .top) {
                VortexView(.splash.makeUniqueCopy()) {
                    Circle()
                        .fill(.white)
                        .frame(width: 20, height: 20)
                        .tag("circle")
                }
            }
            .frame(height: 50)
            .background(Color.clear)
            
            VStack(alignment: .leading) {
                inputField
                    .layoutPriority(-1)
                
                DragAndDrop(cornerRadius: 10)
                    .frame(height: 150)
                    .layoutPriority(1)
                    .showIf(fileDropActive)
                
                if let image = selectedImage {
                    HStack {
                        RemovableImage(
                            image: image,
                            onClick: {selectedImage = nil},
                            height: 150
                        )
                        .layoutPriority(1)
                        .transition(.scale)
                        
                        Spacer()
                    }
                    .layoutPriority(1)
                    .padding()
                    .background {
                        RoundedRectangle(cornerRadius: 8, style: .continuous)
                            .fill(.thinMaterial)
                    }
                    .transition(.slide)
                    .showIf(!fileDropActive)
                }
                
                imageSupportMissing
                    .showIf(!imageSupport && selectedImage != nil)
            }
            .padding(12)
            .background {
                RoundedRectangle(cornerRadius: 8).fill(.ultraThickMaterial)
            }
        }
        .frame(minWidth: 500, maxWidth: 500)
        .onAppear {
            prompt = ""
            focused = true
        }
        .onDrop(of: [.image], isTargeted: $fileDropActive, perform: { providers in
            guard let provider = providers.first else { return false }
            
            _ = provider.loadDataRepresentation(for: .image) { data, error in
                if error == nil, let data {
                    if let nsImage = NSImage(data: data) {
                        updateSelectedImage(Image(nsImage: nsImage))
                    }
                }
            }
            
            return true
        })
        .addCustomHotkeys(hotkeys)
        .onChange(of: prompt) { _, _ in
            onLayoutUpdate()
        }
        .onChange(of: fileDropActive) { _, _ in
            onLayoutUpdate()
        }
        .onChange(of: selectedImage) { _, _ in
            onLayoutUpdate()
        }
    }
}

#Preview {
    PromptPanelView(onSubmit: {_,_  in}, onLayoutUpdate: {}, imageSupport: false)
}

#endif



================================================
FILE: Enchanted/UI/macOS/MenuBar/MenuBarControl_macOS.swift
================================================
//
//  MenuBarControl_macOS.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 12/02/2024.
//

#if os(macOS)
import SwiftUI

struct MenuBarControl: View {
    @State private var appStore = AppStore.shared
    var body: some View {
        MenuBarControlView(notifications: appStore.notifications)
    }
}
#endif



================================================
FILE: Enchanted/UI/macOS/MenuBar/MenuBarControlView_macOS.swift
================================================
//
//  MenuBarControlView.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 12/02/2024.
//

#if os(macOS)
import SwiftUI

struct MenuBarControlView: View {
    var notifications: [NotificationMessage]
    var body: some View {
        VStack {
            Grid(horizontalSpacing: 12, verticalSpacing: 12) {
                GridRow {
                    HStack {
                        ControlView(icon: "checkmark.circle", title: "Ollama", subtitle: "Online")
                        ControlView(icon: "x.circle", title: "Enchanted", subtitle: "Online")
                    }
                    .padding(12)
                    .background {
                        RoundedRectangle(cornerRadius: 12, style: .continuous)
                            .fill(.ultraThinMaterial)
                    }
                }
            }
            
            VStack(alignment: .leading) {
                Text("Events")
                    .font(.title3)
                
                ForEach(notifications) { notification in
                    HStack {
                        Text(notification.message)
                            .lineLimit(1)
                        Spacer()
                    }
                    .padding(.horizontal, 10)
                    .padding(.vertical, 6)
                    .background(RoundedRectangle(cornerRadius: 6).fill(notification.status == .info ? Color.blue.opacity(0.2) : Color.red.opacity(0.2)))
                    .listRowSeparator(.hidden)
                }
                .listStyle(PlainListStyle())
                .scrollContentBackground(.hidden)
            }
            .showIf(notifications.count > 0)
            .padding(.top, 10)
        }
        .padding()
    }
    
    @ViewBuilder
    func ControlView(icon: String, title: String, subtitle: String? = nil) -> some View {
        HStack(spacing: 5) {
            Image(systemName: icon)
                .font(.largeTitle)
                .symbolRenderingMode(.multicolor)
                .foregroundStyle(.gray)
            
            VStack(alignment: .leading, spacing: 1) {
                Text(title)
                    .font(.callout)
                    .foregroundStyle(.primary)
                
                if let subtitle = subtitle {
                    Text(subtitle)
                        .font(.caption2)
                        .foregroundStyle(Color.grayCustom)
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

extension MenuBarControlView {
    static let icon: Image = {
        let image: NSImage = {
            let ratio = $0.size.height / $0.size.width
            $0.size.height = 18
            $0.size.width = 18 / ratio
            return $0
        }(NSImage(named: "logo-nobg")!)
        
        return Image(nsImage: image)
    }()
}

#Preview {
    MenuBarControlView(notifications: NotificationMessage.sample)
}
#endif



================================================
FILE: Enchanted/UI/macOS/PromptPanel/FloatingPanel.swift
================================================
//
//  PromptPanel.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 12/02/2024.
//

import SwiftUI

#if os(macOS)
class FloatingPanel: NSPanel {
    override func sendEvent(_ event: NSEvent) {
        super.sendEvent(event)
        
        // escape key closes the panel
        if event.type == .keyDown {
            if event.keyCode == 53 {
                self.orderOut(nil)
            }
        }
    }
    
    init(contentRect: NSRect, backing: NSWindow.BackingStoreType, defer flag: Bool) {
        super.init(contentRect: contentRect, styleMask: [.nonactivatingPanel, .resizable, .closable, .fullSizeContentView], backing: backing, defer: flag)
        self.isFloatingPanel = true
        self.level = .floating
        self.collectionBehavior.insert(.fullScreenAuxiliary)
        self.titleVisibility = .hidden
        self.titlebarAppearsTransparent = true
        self.hasShadow = true
        self.contentView?.wantsLayer = true
        self.contentView?.layer?.masksToBounds = true
        self.isMovableByWindowBackground = true
        self.isReleasedWhenClosed = false
        //self.hidesOnDeactivate = true
        self.standardWindowButton(.closeButton)?.isHidden = true
        self.standardWindowButton(.miniaturizeButton)?.isHidden = true
        self.standardWindowButton(.zoomButton)?.isHidden = true
        self.styleMask.insert(.resizable)
    }
    
    // `canBecomeKey` and `canBecomeMain` are required so that text inputs inside the panel can receive focus
    override var canBecomeKey: Bool {
        print("canBecomeKey")
        return true
    }
    
    override var canBecomeMain: Bool {
        print("canBecomeMain")
        return true
    }
}
#endif



================================================
FILE: Enchanted/UI/macOS/PromptPanel/PanelCompletionsVM.swift
================================================
//
//  PromptPanelVM.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 29/02/2024.
//

import SwiftUI
import OllamaKit
import Combine

@Observable
final class CompletionsPanelVM {
    var selectedText: String?
    var onReceiveText: (String) -> ()
    var messageResponse: String = ""
    var isReady = false
    let sentenceQueue = AsyncQueue<String>()
    private var generation: AnyCancellable?
    private var currentMessageBuffer: String = ""

    
    init(onReceiveText: @escaping (String) -> Void = {_ in}) {
        self.onReceiveText = onReceiveText
    }
    
    static func constructPrompt(completion: CompletionInstructionSD, selectedText: String) -> String {
        var prompt = completion.instruction
        
        if prompt.contains("{{text}}") {
            prompt.replace("{{text}}", with: selectedText)
        } else {
            prompt += " " + selectedText
        }
        
        return prompt
    }
    
    @MainActor
    func sendPrompt(completion: CompletionInstructionSD, model: LanguageModelSD)  {
        guard let selectedText = selectedText, !isReady else { return }
        let prompt = CompletionsPanelVM.constructPrompt(completion: completion, selectedText: selectedText)
        
        let messages: [OKChatRequestData.Message] = [
            .init(role: .user, content: prompt)
        ]
        var request = OKChatRequestData(model: model.name, messages: messages)
        request.options = OKCompletionOptions(temperature: completion.modelTemperature ?? 0.8)
        currentMessageBuffer = ""
        messageResponse = ""
        
        print("request", request.messages)
        Task {
            if await OllamaService.shared.ollamaKit.reachable() {
                generation = OllamaService.shared.ollamaKit.chat(data: request)
                    .sink(receiveCompletion: { [weak self] completion in
                        switch completion {
                        case .finished:
                            self?.handleComplete()
                        case .failure(let error):
                            self?.handleError(error.localizedDescription)
                        }
                    }, receiveValue: { [weak self] response in
                        self?.handleReceive(response)
                    })
            } else {
                self.handleError("Server unreachable")
            }
        }
    }
    
    @MainActor
    private func handleReceive(_ response: OKChatResponse)  {
        Task {
            if let responseContent = response.message?.content {
                await sentenceQueue.enqueue(responseContent)
                self.messageResponse = self.messageResponse + responseContent
            }
        }
    }
    
    @MainActor
    private func handleError(_ errorMessage: String) {
        print("error \(errorMessage)")
    }
    
    @MainActor
    private func handleComplete() {
        print("model response ", self.messageResponse)
    }
    
    @MainActor
    func cancel() {
        generation?.cancel()
    }
}



================================================
FILE: Enchanted/UI/macOS/PromptPanel/PanelManager.swift
================================================
//
//  PanelManager.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 12/02/2024.
//

#if os(macOS)
import SwiftUI
import Carbon
import AsyncAlgorithms

final actor Printer {
    func write(_ message: String) {
        Clipboard.shared.setString(message)
        usleep(50000)
        Accessibility.simulatePasteCommand()
    }
}

class PanelManager: NSObject, NSApplicationDelegate {
    var targetApplication: NSRunningApplication?
    var lastPrintApplication: NSRunningApplication?
    var panel: FloatingPanel!
    var completionsPanelVM = CompletionsPanelVM()
    @MainActor var allowPrinting = true
    let printer = Printer()
    
    override init() {
        super.init()
        
        Task {
            await NSApp.setActivationPolicy(.regular)
            await NSApp.activate(ignoringOtherApps: true)
            await handleNewMessages()
        }
    }
    
    private func handleNewMessages() async {
        let timer = AsyncTimerSequence(interval: .seconds(0.1), clock: .continuous)
        for await _ in timer {
            // If user focused different application stop writing
            if lastPrintApplication != nil && lastPrintApplication?.localizedName != NSWorkspace.shared.runningApplications.first(where: {$0.isActive})?.localizedName {
                // dequeue all and stop execution
                await completionsPanelVM.cancel()
                _ = await completionsPanelVM.sentenceQueue.dequeueAll()
                lastPrintApplication = nil
                continue
            }
            
            // hold printing until user action and ensuring that your driving experience
            if await !allowPrinting {
                continue
            }
            
            let sentencesToConsume = await completionsPanelVM.sentenceQueue.dequeueAll().joined()
            
            if sentencesToConsume.isEmpty {
                continue
            }
            
            print("printing: \((sentencesToConsume)) \(Date())")
            lastPrintApplication = NSWorkspace.shared.runningApplications.first{$0.isActive}
            await printer.write(sentencesToConsume)
        }
    }
    
    
    @MainActor
    @objc func togglePanel() {
        let accessibilityStatus = Accessibility.shared.checkAccessibility()
        if !accessibilityStatus {
            Accessibility.shared.showAccessibilityInstructionsWindow()
        }
        
        targetApplication = NSWorkspace.shared.runningApplications.first{$0.isActive}

        Task {
            completionsPanelVM.selectedText = Accessibility.shared.getSelectedText()
            print("selected message", completionsPanelVM.selectedText as Any)
            
            if panel == nil || !panel.isVisible {
                showPanel()
                
                // subscribe to keybaord event to avoid beep
//                HotkeyService.shared.registerSingleUseEscape(modifiers: []) { [weak self] in
//                    self?.hidePanel()
//                }
                
                return
            }
            
            hidePanel()
        }
    }
    
    @MainActor
    @objc func hidePanel() {
        panel.orderOut(nil)
    }
    
    @MainActor
    @objc func showPanel() {
        createPanel()
        panel.makeKeyAndOrderFront(nil)
        NSApp.activate(ignoringOtherApps: true)
    }
    
    @MainActor
    @objc func onSubmitMessage() {
        allowPrinting = true
        hidePanel()
        
        /// Focus Enchanted
        if let app = NSRunningApplication.runningApplications(withBundleIdentifier: Bundle.main.bundleIdentifier!).first {
            app.activate(options: [.activateAllWindows])
            
            NSApp.windows.forEach { window in
                if window.isMiniaturized {
                    window.deminiaturize(nil)
                }
            }
        }
    }
    
    @MainActor
    @objc func onSubmitCompletion(scheduledTyping: Bool) {
        allowPrinting = true
        
        if scheduledTyping {
            self.allowPrinting = false
            HotkeyService.shared.registerSingleUseSpace(modifiers: []) { [weak self] in
                self?.allowPrinting = true
                self?.hidePanel()
            }
        } else {
            hidePanel()
        }
        targetApplication?.activate()
    }
    
    @MainActor
    func createPanel() {
        let contentView = PromptPanel(
            completionsPanelVM: completionsPanelVM,
            onSubmitPanel: onSubmitMessage,
            onSubmitCompletion: onSubmitCompletion,
            onLayoutUpdate: updatePanelSizeIfNeeded
        )
        let hostingView = NSHostingView(rootView: contentView)
        let idealSize = hostingView.fittingSize
        
        panel = FloatingPanel(
            contentRect: NSRect(x: 0, y: 0, width: idealSize.width, height: idealSize.height),
            backing: .buffered,
            defer: false
        )
        panel.contentView = hostingView
        panel.backgroundColor = .clear
        panel.center()
        panel.orderFront(nil)
    }
    
    @MainActor func updatePanelSizeIfNeeded() {
        guard let hostingView = panel.contentView as? NSHostingView<PromptPanel> else { return }
        
        DispatchQueue.main.async { [weak self] in
            guard let strongSelf = self else { return }
            let newSize = hostingView.fittingSize
            
            if newSize == .zero {
                return
            }
            
            if strongSelf.panel.frame.size != newSize {
                NSAnimationContext.runAnimationGroup({ context in
                    context.duration = 0.2
                    context.timingFunction = CAMediaTimingFunction(name: .easeOut)
                    
                    // Calculate the difference in height
                    let heightDifference = newSize.height - strongSelf.panel.frame.size.height
                    
                    // Adjust the y position to keep the bottom edge constant
                    let newY = strongSelf.panel.frame.origin.y - heightDifference
                    
                    strongSelf.panel.animator().setFrame(
                        NSRect(x: strongSelf.panel.frame.origin.x,
                               y: newY, // Use the new Y
                               width: newSize.width,
                               height: newSize.height),
                        display: true)
                }, completionHandler: {
                    print("Animation completed")
                })
            }
        }
    }
}

extension PanelManager {
    @MainActor func windowDidResignKey(_ notification: Notification) {
        if let panel = notification.object as? FloatingPanel, panel == self.panel {
            panel.close()
        }
    }
}
#endif



================================================
FILE: Enchanted/UI/macOS/PromptPanel/PromptPanel.swift
================================================
//
//  PromptPanel.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 12/02/2024.
//

#if os(macOS)
import SwiftUI

struct PromptPanel: View {
    @AppStorage("colorScheme") private var colorScheme: AppColorScheme = .system
    @AppStorage("systemPrompt") private var systemPrompt: String = ""
    @State var conversationStore = ConversationStore.shared
    @State var languageModelStore = LanguageModelStore.shared
    @State var completionsStore = CompletionsStore.shared
    @State var appStore = AppStore.shared
    @State var completionsPanelVM: CompletionsPanelVM
    var onSubmitPanel: () -> ()
    var onSubmitCompletion: (_ scheduledTyping: Bool) -> ()
    var onLayoutUpdate: () -> ()
    
    @MainActor
    func sendMessage(prompt: String, image: Image?) {
        conversationStore.selectedConversation = nil
        conversationStore.sendPrompt(
            userPrompt: prompt,
            model: languageModelStore.selectedModel!,
            image: image,
            systemPrompt: systemPrompt
        )
        onSubmitPanel()
    }
    
    @MainActor
    func completionInWindow(_ completion: CompletionInstructionSD, scheduledTyping: Bool) {
        guard let selectedModel = languageModelStore.selectedModel else { return }
        completionsPanelVM.sendPrompt(completion: completion, model: selectedModel)
        onSubmitCompletion(scheduledTyping)
        appStore.uiLog(message: "In Window Completion - **\(completion.name)**", status: .info)
    }
    
    @MainActor
    func completionInApp(_ completion: CompletionInstructionSD) {
        guard languageModelStore.selectedModel != nil else { return }
        let prompt = CompletionsPanelVM.constructPrompt(completion: completion, selectedText: completionsPanelVM.selectedText ?? "")
        sendMessage(prompt: prompt, image: nil)
        appStore.uiLog(message: "In App Completion - **\(completion.name)**", status: .info)
    }
    
    var body: some View {
        Group {
            if let selectedText = completionsPanelVM.selectedText, !selectedText.isEmpty {
                PanelCompletionsView(
                    completions: completionsStore.completions,
                    completionInWindow: completionInWindow,
                    completionInApp: completionInApp
                )
            } else {
                PromptPanelView(
                    onSubmit: sendMessage,
                    onLayoutUpdate: onLayoutUpdate,
                    imageSupport: languageModelStore.selectedModel?.supportsImages ?? false
                )
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}
#endif



================================================
FILE: Enchanted/UI/Shared/ApplicationEntry.swift
================================================
//
//  ApplicationEntry.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 12/02/2024.
//

import SwiftUI
import SwiftData

struct ApplicationEntry: View {
    @AppStorage("colorScheme") private var colorScheme: AppColorScheme = .system
    @State private var languageModelStore = LanguageModelStore.shared
    @State private var conversationStore = ConversationStore.shared
    @State private var completionsStore = CompletionsStore.shared
    @State private var appStore = AppStore.shared
    
    var body: some View {
        VStack {
            switch appStore.appState {
            case .chat:
                Chat(languageModelStore: languageModelStore, conversationStore: conversationStore, appStore: appStore)
            case .voice:
                Voice(languageModelStore: languageModelStore, conversationStore: conversationStore, appStore: appStore)
            }
        }
        .task {
            
            if let bundleIdentifier = Bundle.main.bundleIdentifier {
                print("Bundle Identifier: \(bundleIdentifier)")
            } else {
                print("Bundle Identifier not found.")
            }
            
            Task.detached {
                async let loadModels: () = languageModelStore.loadModels()
                async let loadConversations: () = conversationStore.loadConversations()
                async let loadCompletions: () = completionsStore.load()
                
                do {
                    _ = try await loadModels
                    _ = try await loadConversations
                    _ = try await loadCompletions
                } catch {
                    print("Unexpected error: \(error).")
                }
            }
        }
        .preferredColorScheme(colorScheme.toiOSFormat)
    }
}




================================================
FILE: Enchanted/UI/Shared/Chat/Chat.swift
================================================
//
//  MainView.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 09/12/2023.
//

import SwiftUI

struct Chat: View, Sendable {
    @State private var languageModelStore: LanguageModelStore
    @State private var conversationStore: ConversationStore
    @State private var appStore: AppStore
    @AppStorage("systemPrompt") private var systemPrompt: String = ""
    @AppStorage("appUserInitials") private var userInitials: String = ""
    @AppStorage("defaultOllamaModel") private var defaultOllamaModel: String = ""
    @State var showMenu = false
    
    init(languageModelStore: LanguageModelStore, conversationStore: ConversationStore, appStore: AppStore) {
        _languageModelStore = State(initialValue: languageModelStore)
        _conversationStore = State(initialValue: conversationStore)
        _appStore = State(initialValue: appStore)
    }
    
    func toggleMenu() {
        withAnimation(.spring) {
            showMenu.toggle()
        }
        Task {
            await Haptics.shared.mediumTap()
        }
    }
    
    @MainActor
    func updateSelectedModel() {
        if languageModelStore.selectedModel == nil {
            if defaultOllamaModel != "" {
                languageModelStore.setModel(modelName: defaultOllamaModel)
            } else {
                languageModelStore.setModel(model: languageModelStore.models.first)
            }
        }
    }
    
    @MainActor
    func sendMessage(prompt: String, model: LanguageModelSD, image: Image?, trimmingMessageId: String?) {
        conversationStore.sendPrompt(
            userPrompt: prompt,
            model: model,
            image: image,
            systemPrompt: systemPrompt,
            trimmingMessageId: trimmingMessageId
        )
    }
    
    func onConversationTap(_ conversation: ConversationSD) {
        Task {
            try await conversationStore.selectConversation(conversation)
            await languageModelStore.setModel(model: conversation.model)
            Haptics.shared.mediumTap()
        }
        withAnimation {
            showMenu.toggle()
        }
    }
    
    @MainActor func onStopGenerateTap() {
        conversationStore.stopGenerate()
        Haptics.shared.mediumTap()
    }
    
    func onConversationDelete(_ conversation: ConversationSD) {
        Task {
            await Haptics.shared.mediumTap()
            try? await conversationStore.delete(conversation)
        }
    }
    
    func newConversation() {
        DispatchQueue.main.async {
            withAnimation(.easeOut(duration: 0.3)) {
                self.conversationStore.selectedConversation = nil
            }
        }
        
        Task {
            await Haptics.shared.mediumTap()
            try? await languageModelStore.loadModels()
        }
        
#if os(iOS)
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
#endif
    }
    
    func copyChat(_ json: Bool) {
        Task {
            let messages = await ConversationStore.shared.messages
            
            if messages.count == 0 {
                return
            }
            
            if json {
                let jsonArray = messages.map { message in
                    return [
                        "role": message.role,
                        "content": message.content
                    ]
                }
                let jsonEncoder = JSONEncoder()
                jsonEncoder.outputFormatting = [.withoutEscapingSlashes]

                if let jsonData = try? jsonEncoder.encode(jsonArray),
                   let jsonString = String(data: jsonData, encoding: .utf8) {
                    Clipboard.shared.setString(jsonString)
                }
            } else {
                let body = messages.map{"\($0.role.capitalized): \($0.content)"}.joined(separator: "\n\n")
                Clipboard.shared.setString(body)
            }
        }
    }
    
    var body: some View {
        Group {
#if os(macOS) || os(visionOS)
            ChatView(
                selectedConversation: conversationStore.selectedConversation,
                conversations: conversationStore.conversations,
                messages: conversationStore.messages,
                modelsList: languageModelStore.models,
                onMenuTap: toggleMenu,
                onNewConversationTap: newConversation,
                onSendMessageTap: sendMessage,
                onConversationTap:onConversationTap,
                conversationState: conversationStore.conversationState,
                onStopGenerateTap: onStopGenerateTap,
                reachable: appStore.isReachable,
                modelSupportsImages: languageModelStore.supportsImages,
                selectedModel: languageModelStore.selectedModel,
                onSelectModel: languageModelStore.setModel,
                onConversationDelete: onConversationDelete,
                onDeleteDailyConversations: conversationStore.deleteDailyConversations,
                userInitials: userInitials,
                copyChat: copyChat
            )
#else
            SideBarStack(sidebarWidth: 300,showSidebar: $showMenu, sidebar: {
                SidebarView(
                    selectedConversation: conversationStore.selectedConversation,
                    conversations: conversationStore.conversations,
                    onConversationTap: onConversationTap,
                    onConversationDelete: onConversationDelete,
                    onDeleteDailyConversations: conversationStore.deleteDailyConversations
                )
            }) {
                ChatView(
                    conversation: conversationStore.selectedConversation,
                    messages: conversationStore.messages,
                    modelsList: languageModelStore.models,
                    selectedModel: languageModelStore.selectedModel,
                    onSelectModel: languageModelStore.setModel,
                    onMenuTap: toggleMenu,
                    onNewConversationTap: newConversation,
                    onSendMessageTap: sendMessage,
                    conversationState: conversationStore.conversationState,
                    onStopGenerateTap: onStopGenerateTap,
                    reachable: appStore.isReachable,
                    modelSupportsImages: languageModelStore.supportsImages,
                    userInitials: userInitials
                )
            }
#endif
        }
        .onChange(of: languageModelStore.models, { _, modelsList in
            if languageModelStore.selectedModel == nil {
                updateSelectedModel()
            }
        })
        .onChange(of: conversationStore.selectedConversation, initial: true, { _, newConversation in
            if let conversation = newConversation {
                languageModelStore.setModel(model: conversation.model)
            } else {
                updateSelectedModel()
            }
        })
    }
}



================================================
FILE: Enchanted/UI/Shared/Chat/Components/ConversationStatusView.swift
================================================
//
//  ConversationStatusView.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 10/12/2023.
//

import SwiftUI
import ActivityIndicatorView

struct ConversationStatusView: View {
    var state: ConversationState
    var body: some View {
        switch state {
        case .loading: EmptyView()
        case .completed: EmptyView()
        case .error(let message): HStack {
            Text(message)
                .foregroundColor(.red)
                .font(.system(size: 16))
            Spacer()
        }
        }
        
    }
}

#Preview {
    Group {
        ConversationStatusView(state: .loading)
        ConversationStatusView(state: .completed)
        ConversationStatusView(state: .error(message: "Could not connect"))
    }.previewLayout(.sizeThatFits)
}



================================================
FILE: Enchanted/UI/Shared/Chat/Components/EmptyConversaitonView.swift
================================================
//
//  EmptyConversaitonView.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 10/02/2024.
//

import SwiftUI

struct EmptyConversaitonView: View, KeyboardReadable {
    @Environment(\.openURL) private var openURL
    @State var showPromptsAnimation = false
    @State var prompts: [SamplePrompts] = []
    var sendPrompt: (String) -> ()
    @State private var isHovering = false
#if os(iOS)
    @State var isKeyboardVisible = false
#endif
    
#if os(macOS)
    var columns = Array.init(repeating: GridItem(.flexible(), spacing: 15), count: 4)
#else
    var columns = [GridItem(.flexible()), GridItem(.flexible())]
#endif
    @State var visibleItems = Set<Int>()
    
    func onFreysaTap() {
        if let url = URL(string: "https://freysa.ai") {
            openURL(url)
        }
    }
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack(spacing: 25) {
                VStack(alignment: .center) {
                    Text("Enchanted")
                        .font(Font.system(size: 46, weight: .thin))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [Color(hex: "4285f4"), Color(hex: "9b72cb"), Color(hex: "d96570"), Color(hex: "#d96570")],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                    
//                    Button(action: onFreysaTap) {
//                        Text("by FREYSA")
//                            .font(.system(size: isHovering ? 19 : 17, weight: .light))
//                            .scaleEffect(isHovering ? 1.05 : 1.0)
//                            .opacity(isHovering ? 0.8 : 1.0)
//                            .animation(.spring(response: 0.3, dampingFraction: 0.7), value: isHovering)
//
//                    }
//                    .buttonStyle(.plain)
//                    .onHover { hovering in
//                                isHovering = hovering
//                            }
                }
                
                LazyVGrid(columns: columns, alignment: .leading, spacing: 15) {
                    ForEach(0..<prompts.prefix(4).count, id: \.self) { index in
                        Button(action: {
                            withAnimation {
                                sendPrompt(prompts[index].prompt)
                            }
                        }) {
                            VStack(alignment: .leading) {
                                Text(prompts[index].prompt)
                                    .font(.system(size: 15))
                                Spacer()
                                
                                HStack {
                                    Spacer()
                                    Image(systemName: prompts[index].type.icon)
                                }
                            }
                            .frame(maxWidth: .infinity)
                            .padding(15)
                            .background(Color.gray5Custom)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                        }
                        .opacity(visibleItems.contains(index) ? 1 : 0)
                        .animation(.easeIn(duration: 0.3).delay(0.2 * Double(index)), value: visibleItems)
                        .transition(.slide)
                        .showIf(showPromptsAnimation)
                        .buttonStyle(.plain)
                    }
                }
                .onAppear {
                    for index in 0..<4 {
                        DispatchQueue.main.async {
                            visibleItems.insert(index)
                        }
                    }
                }
                .frame(maxWidth: 700)
                .padding()
                .transition(AnyTransition(.opacity).combined(with: .slide))
#if os(iOS)
                .showIf(!isKeyboardVisible)
#endif
            }
            Spacer()
        }
        .onAppear {
            DispatchQueue.main.async {
                withAnimation {
                    prompts = SamplePrompts.samples.shuffled()
                    showPromptsAnimation = true
                }
            }
        }
#if os(iOS)
        .onReceive(keyboardPublisher) { newIsKeyboardVisible in
            DispatchQueue.main.async {
                withAnimation {
                    isKeyboardVisible = newIsKeyboardVisible
                }
            }
        }
#endif
        
    }
}

#Preview(traits: .fixedLayout(width: 1000, height: 1000)) {
    EmptyConversaitonView(sendPrompt: {_ in})
}



================================================
FILE: Enchanted/UI/Shared/Chat/Components/Header.swift
================================================
//
//  Header.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 09/12/2023.
//

import SwiftUI

struct Header: View {
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Button(action: {}) {
                    Image(systemName: "line.3.horizontal")
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 22)
                        .foregroundColor(.black)
                }
                
                Spacer()
                
                Text(selectedModel.name)
                    .font(.system(size: 15))
                    .fontWeight(.medium)
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "square.and.pencil")
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 22)
                        .foregroundColor(.black)
                }
                
            }
            .padding(.horizontal, 15)
        }
    }
}

#Preview {
    Header()
}



================================================
FILE: Enchanted/UI/Shared/Chat/Components/MessageListVIew.swift
================================================
//
//  MessageListVIew.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 10/12/2023.
//

import SwiftUI

#if os(macOS)
import AppKit
#endif

struct MessageListView: View {
    var messages: [MessageSD]
    var conversationState: ConversationState
    var userInitials: String
    @Binding var editMessage: MessageSD?
    @State private var messageSelected: MessageSD?
    @StateObject private var speechSynthesizer = SpeechSynthesizer.shared
    
    func onEditMessageTap() -> (MessageSD) -> Void {
        return { message in
            editMessage = message
        }
    }
    
    func onReadAloud(_ message: String) {
        Task {
            await speechSynthesizer.speak(text: message)
        }
    }
    
    func stopReadingAloud() {
        Task {
            await speechSynthesizer.stopSpeaking()
        }
    }
    
    var body: some View {
        ZStack(alignment: .top) {
            ScrollViewReader { scrollViewProxy in
                ScrollView {
                    VStack {
                        ForEach(messages) { message in
                            let contextMenu = ContextMenu(menuItems: {
                                Button(action: {Clipboard.shared.setString(message.content)}) {
                                    Label("Copy", systemImage: "doc.on.doc")
                                }
                                
#if os(iOS) || os(visionOS)
                                Button(action: { messageSelected = message }) {
                                    Label("Select Text", systemImage: "selection.pin.in.out")
                                }
                                
                                Button(action: {
                                    onReadAloud(message.content)
                                }) {
                                    Label("Read Aloud", systemImage: "speaker.wave.3.fill")
                                }
#endif
                                
                                if message.role == "user" {
                                    Button(action: {
                                        withAnimation { editMessage = message }
                                    }) {
                                        Label("Edit", systemImage: "pencil")
                                    }
                                }
                                
                                if editMessage?.id == message.id {
                                    Button(action: {
                                        withAnimation { editMessage = nil }
                                    }) {
                                        Label("Unselect", systemImage: "pencil")
                                    }
                                }
                            })
                            
                            ChatMessageView(
                                message: message,
                                showLoader: conversationState == .loading && messages.last == message,
                                userInitials: userInitials,
                                editMessage: $editMessage
                            )
                            .listRowInsets(EdgeInsets())
                            .listRowSeparator(.hidden)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 10)
                            .contentShape(Rectangle())
                            .contextMenu(contextMenu)
                            .runningBorder(animated: message.id == editMessage?.id)
                            .id(message)
                        }
                    }
                }
                .onAppear {
                    scrollViewProxy.scrollTo(messages.last, anchor: .bottom)
                }
                .onChange(of: messages) { oldMessages, newMessages in
                    scrollViewProxy.scrollTo(messages.last, anchor: .bottom)
                }
                .onChange(of: messages.last?.content) {
                    scrollViewProxy.scrollTo(messages.last, anchor: .bottom)
                }
#if os(iOS) || os(visionOS)
                .sheet(item: $messageSelected) { message in
                    SelectTextSheet(message: message)
                }
#endif
            }
            
            ReadingAloudView(onStopTap: stopReadingAloud)
                .frame(maxWidth: 400)
                .showIf(speechSynthesizer.isSpeaking)
                .transition(.asymmetric(
                    insertion: AnyTransition.opacity.combined(with: .scale(scale: 0.7, anchor: .top)),
                    removal: AnyTransition.opacity.combined(with: .scale(scale: 0.7, anchor: .top)))
                )
        }
    }
}

#Preview {
    MessageListView(
        messages: MessageSD.sample,
        conversationState: .loading,
        userInitials: "AM",
        editMessage: .constant(MessageSD.sample[0])
    )
}



================================================
FILE: Enchanted/UI/Shared/Chat/Components/ModelSelectorView.swift
================================================
//
//  ModelSelector.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 11/12/2023.
//

import SwiftUI

struct ModelSelectorView: View {
    var modelsList: [LanguageModelSD]
    var selectedModel: LanguageModelSD?
    var onSelectModel: @MainActor (_ model: LanguageModelSD?) -> ()
    var showChevron = true
    
    var body: some View {
        Menu {
            ForEach(modelsList, id: \.self) { model in
                Button(action: {
                    withAnimation(.easeOut) {    
                        onSelectModel(model)
                    }
                }) {
                    Text(model.name)
                        .font(.body)
                        .tag(model.name)
                }
            }
        } label: {
            HStack(alignment: .center) {
                if let selectedModel = selectedModel {
                    HStack(alignment: .bottom, spacing: 5) {
                        
                        #if os(macOS) || os(visionOS)
                        Text(selectedModel.name)
                            .font(.body)
                        #elseif os(iOS)
                        Text(selectedModel.prettyName )
                            .font(.body)
                            .foregroundColor(Color.labelCustom)
                        
                        Text(selectedModel.prettyVersion)
                            .font(.subheadline)
                            .foregroundColor(Color.gray3Custom)
                        #endif
                    }
                }
                
                Image(systemName: "chevron.down")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 10)
                    .foregroundColor(Color(.label))
                    .showIf(showChevron)
            }
        }
    }
}

#Preview {
    ModelSelectorView(
        modelsList: LanguageModelSD.sample,
        selectedModel: LanguageModelSD.sample[0], 
        onSelectModel: {_ in},
        showChevron: false
    )
}



================================================
FILE: Enchanted/UI/Shared/Chat/Components/OptionsMenuView.swift
================================================
//
//  OptionsMenuView.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 12/05/2024.
//

import SwiftUI

struct MoreOptionsMenuView: View {
    var copyChat: (_ json: Bool) -> ()
    var body: some View {
        Menu {
            Button(action: {copyChat(false)}) {
                Text("Copy Chat")
            }
            Button(action: {copyChat(true)}) {
                Text("Copy Chat as JSON")
            }
        } label: {
            Image(systemName: "ellipsis")
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
        }
    }
}

#Preview {
    MoreOptionsMenuView(copyChat: {_ in})
}



================================================
FILE: Enchanted/UI/Shared/Chat/Components/ReadingAloudView.swift
================================================
//
//  ReadingAloudView.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 26/05/2024.
//

import SwiftUI

struct ReadingAloudView: View {
    var onStopTap: () -> ()
    @State private var animationsRunning = false
    
    var body: some View {
        HStack {
            
            Image(systemName: "speaker.wave.3")
                .symbolEffect(.variableColor.iterative,  options: .repeat(100), value: animationsRunning)
                .scaledToFit()
                .frame(width: 18)
            
            Text("Reading Aloud")
                .font(.system(size: 14))
            
            Spacer()
            
            Button(action: onStopTap) {
                Image(systemName: "stop.fill")
                    .font(.system(size: 15, weight: .semibold))
                    .padding(5)
            }
            .buttonStyle(GrowingButton())
            
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        .background {
            RoundedRectangle(cornerRadius: 24).fill(.regularMaterial)
        }
        .padding()
        .onAppear {
            animationsRunning = true
        }
    }
}

#Preview {
    ReadingAloudView(onStopTap: {})
}



================================================
FILE: Enchanted/UI/Shared/Chat/Components/RemovableImage.swift
================================================
//
//  RemovableImage.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 17/02/2024.
//

import SwiftUI

struct RemovableImage: View {
    var image: Image
    var onClick: () -> ()
    var height: Double = 80
    
    var body: some View {
        Button(action: {onClick() }) {
            ZStack(alignment: .topTrailing) {
                image
                    .resizable()
                    .scaledToFit()
                    .frame(height: height)
                
                Image(systemName: "x.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .padding(5)
            }
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    RemovableImage(image: Image(systemName: "star"), onClick: {})
}



================================================
FILE: Enchanted/UI/Shared/Chat/Components/RunningBorder.swift
================================================
//
//  RunningBorder.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 28/01/2024.
//

import SwiftUI

struct RunningBorder: ViewModifier {
    @State private var rotation = 0.0
    var animated: Bool
    
    func body(content: Content) -> some View {
        if animated {
            content
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(
                            AngularGradient(gradient: Gradient(colors: [.indigo, .blue, .red, .orange, .indigo]), center: .center, startAngle: .degrees(rotation), endAngle: .degrees(rotation+360)).opacity(0.5),
                            lineWidth: 3.5
                        )
                )
                .onAppear {
                    withAnimation(.linear(duration: 2).repeatForever(autoreverses: false)) {
                        rotation = 360
                    }
                }
        } else {
            content
        }
    }
}

extension View {
    func runningBorder(animated: Bool) -> some View {
        modifier(RunningBorder(animated: animated))
    }
}

#Preview {
    Rectangle()
        .runningBorder(animated: true)
}



================================================
FILE: Enchanted/UI/Shared/Chat/Components/SelectedImageView.swift
================================================
//
//  SelectedImageView.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 21/12/2023.
//

import SwiftUI

struct SelectedImageView: View {
    @Binding var image: Image?
    
    private func onClick() {
        withAnimation(.snappy(duration: 0.3)) {
            image = nil
        }
    }
    
    var body: some View {
        if let selectedImage = image {
            Button(action: onClick) {
                selectedImage
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 40, maxHeight: 40)
                    .padding(.vertical, 4)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
    }
}

#Preview {
    SelectedImageView(image: .constant(Image(systemName: "photo")))
}



================================================
FILE: Enchanted/UI/Shared/Chat/Components/UnreachableAPIView.swift
================================================
//
//  UnreachableAPIView.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 10/02/2024.
//

import SwiftUI
import ActivityIndicatorView

struct UnreachableAPIView: View {
    @State var showSettings = false
    
    var body: some View {
        HStack {
            VStack {
                Text("Ollama is unreachable. Go to Settings and update your Ollama API endpoint. ")
                    .lineLimit(nil)
                    .minimumScaleFactor(0.5)
                    .fontWeight(.medium)
                    .font(.system(size: 14))
            }
            
            Spacer()
            
            ActivityIndicatorView(isVisible: .constant(true), type: .growingCircle)
                 .frame(width: 21, height: 21)
                 .padding(.horizontal)
            
            Button(action: {showSettings.toggle()}) {
                Text("Settings")
                    .foregroundStyle(Color.white)
                    .fontWeight(.semibold)
            }
            .padding(8)
            .background(Color.black)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .buttonStyle(GrowingButton())
        }
        .padding()
        .background(Color(.pink).opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .padding()
       .sheet(isPresented: $showSettings) {
           Settings()
       }
    }
}

#Preview {
    UnreachableAPIView()
}



================================================
FILE: Enchanted/UI/Shared/Chat/Components/ChatMessages/ChatMessageView.swift
================================================
//
//  ChatMessageView.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 09/12/2023.
//

import SwiftUI
import MarkdownUI
import ActivityIndicatorView
import Splash

struct ChatMessageView: View {
    @Environment(\.colorScheme) var colorScheme
    @StateObject private var speechSynthesizer = SpeechSynthesizer.shared
    var message: MessageSD
    var showLoader: Bool = false
    var userInitials: String
    @Binding var editMessage: MessageSD?
    @State private var mouseHover = false
    @State private var isSpeaking = false
    @State private var showThink = false
    
    var roleName: String  {
        let userInitialsNotEmpty = userInitials != "" ? userInitials : "AM"
        return message.role == "user" ? userInitialsNotEmpty.uppercased() : "AI"
    }
    
    var image: Image? {
        message.image != nil ? Image(data: message.image!) : nil
    }
    
    private var codeHighlightColorScheme: Splash.Theme {
        switch colorScheme {
        case .dark:
            return .wwdc17(withFont: .init(size: 16))
        default:
            return .sunset(withFont: .init(size: 16))
        }
    }
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 0) {
            HStack(alignment: .firstTextBaseline) {
                Group {
                    if message.role == "user" {
                        Spacer()
                    } else {
                        if showLoader {
                            ActivityIndicatorView(isVisible: .constant(true), type: .rotatingDots(count: 5))
                                .frame(width: 24, height: 24)
                                .rotationEffect(.degrees(90))
                        } else {
                            Image("logo-nobg")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                        }
                    }
                }
                .offset(CGSize(width: 0, height: 6))
                
                VStack(alignment: .leading) {
                    if message.hasThink {
                        HStack(spacing: 10.0, content: {
                            Rectangle()
                                .fill(Color.black)
                                .frame(width: 10)
                            if showThink {
                                if let think = message.think {
                                    Markdown(think)
#if os(macOS)
                                        .textSelection(.enabled)
#endif
                                        .markdownCodeSyntaxHighlighter(.splash(theme: codeHighlightColorScheme))
                                        .markdownTheme(MarkdownColours.enchantedTheme)
                                }
                            } else {
                                if message.thinkComplete {
                                    Text("Thought for a few seconds.")
                                } else {
                                    Text("Thinking...")
                                }
                            }
                        }).fixedSize(horizontal: false, vertical: true)
                          .padding(.init(top: 0, leading: 0, bottom: 10, trailing: 0))
                          .onTapGesture {
                              showThink = !showThink
                          }
                    }
                    if let content = message.realContent {
                        Markdown(content)
    #if os(macOS)
                            .textSelection(.enabled)
    #endif
                            .markdownCodeSyntaxHighlighter(.splash(theme: codeHighlightColorScheme))
                            .markdownTheme(MarkdownColours.enchantedTheme)
                    }
                    
                    if let uiImage = image {
                        uiImage
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                        
                    }
                }
                .if(message.role == "user", transform: { v in
                    v.padding()
                        .background(RoundedRectangle(cornerRadius: 25).fill(.regularMaterial))
                })
                
                if message.role != "user" {
                    Spacer()
                }
            }
#if os(macOS)
            HStack(spacing: 0) {
                /// Copy button
                Button(action: {Clipboard.shared.setString(message.content)}) {
                    Image(systemName: "doc.on.doc")
                        .padding(8)
                }
                .buttonStyle(GrowingButton())
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
                /// Play button
                Button(action: {
                    Task {
                        await speechSynthesizer.stopSpeaking()
                        await speechSynthesizer.speak(text: message.content, onFinished: { isSpeaking = false })
                        DispatchQueue.main.asyncAfter(deadline: .now()+0.1) {
                            isSpeaking = true
                        }
                    }
                }) {
                    Image(systemName: "speaker.wave.2.fill")
                        .frame(width: 10)
                        .padding(8)
                }
                .buttonStyle(GrowingButton())
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .showIf(!isSpeaking)
                
                /// Stop button
                Button(action: {
                    Task {
                        isSpeaking = false
                        await speechSynthesizer.stopSpeaking()
                    }
                }) {
                    Image(systemName: "speaker.slash.fill")
                        .frame(width: 10)
                        .padding(8)
                }
                .buttonStyle(GrowingButton())
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .showIf(isSpeaking)
                
                /// Edit button
                Button(action: {editMessage = message}) {
                    Image(systemName: "pencil")
                        .padding(8)
                }
                .buttonStyle(GrowingButton())
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .showIf(message.role == "user")
            }
            .opacity(mouseHover ? 1 : 0.0001)
            
#endif
        }
#if os(macOS)
        .onHover { over in
            withAnimation(.easeInOut(duration: 0.3)) {
                mouseHover = over
            }
        }
#endif
    }
}

#Preview {
    VStack {
        ChatMessageView(message: MessageSD.sample[0], userInitials: "AM", editMessage: .constant(nil))
            .previewLayout(.sizeThatFits)
        
        ChatMessageView(message: MessageSD.sample[1], userInitials: "AM", editMessage: .constant(nil))
            .previewLayout(.sizeThatFits)
        
        ChatMessageView(message: MessageSD(content: "```python \nprint(5+5)\n```", role: "ai"), showLoader: true, userInitials: "AM", editMessage: .constant(nil))
            .previewLayout(.sizeThatFits)
    }
}



================================================
FILE: Enchanted/UI/Shared/Chat/Components/ChatMessages/CodeBlockView.swift
================================================
//
//  CodeBlockView.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 13/05/2024.
//

import SwiftUI
import MarkdownUI

struct CodeBlockView: View {
    var configuration: CodeBlockConfiguration
    var language: String {
        let language = configuration.language ?? "code"
        return language != "" ? language : "code"
    }
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text(language)
                    .font(.system(size: 13, design: .monospaced))
                    .fontWeight(.semibold)
                Spacer()
                
                Button(action: {
                    Clipboard.shared.setString(configuration.content)
                }) {
                    Image(systemName: "doc.on.doc")
                        .padding(7)
                }
                .buttonStyle(GrowingButton())
            }
            .padding(.horizontal)
            .padding(.vertical, 4)
            .background(MarkdownColours.secondaryBackground)
            
            Divider()
            
            ScrollView(.horizontal) {
                configuration.label
                    .fixedSize(horizontal: false, vertical: true)
                    .relativeLineSpacing(.em(0.225))
                    .markdownTextStyle {
                        FontFamilyVariant(.monospaced)
                        FontSize(.em(0.85))
                    }
                    .padding(16)
            }
        }
        .background(MarkdownColours.secondaryBackground)
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .markdownMargin(top: .zero, bottom: .em(0.8))
    }
}



================================================
FILE: Enchanted/UI/Shared/Chat/Components/ChatMessages/MarkdownColours.swift
================================================
//
//  MarkdownColours.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 13/05/2024.
//

import SwiftUI
import MarkdownUI

struct MarkdownColours {
    static let text = Color(
        light: Color(rgba: 0x0606_06ff), dark: Color(rgba: 0xfbfb_fcff)
    )
    static let secondaryText = Color(
        light: Color(rgba: 0x6b6e_7bff), dark: Color(rgba: 0x9294_a0ff)
    )
    static let tertiaryText = Color(
        light: Color(rgba: 0x6b6e_7bff), dark: Color(rgba: 0x6d70_7dff)
    )
    static let background = Color(
        light: .white, dark: Color(rgba: 0x1819_1dff)
    )
    static let secondaryBackground = Color(
        light: Color(rgba: 0xf7f7_f9ff), dark: Color(rgba: 0x2526_2aff)
    )
    static let link = Color(
        light: Color(rgba: 0x2c65_cfff), dark: Color(rgba: 0x4c8e_f8ff)
    )
    static let border = Color(
        light: Color(rgba: 0xe4e4_e8ff), dark: Color(rgba: 0x4244_4eff)
    )
    static let divider = Color(
        light: Color(rgba: 0xd0d0_d3ff), dark: Color(rgba: 0x3334_38ff)
    )
    static let checkbox = Color(rgba: 0xb9b9_bbff)
    static let checkboxBackground = Color(rgba: 0xeeee_efff)
    
    static let enchantedTheme = Theme()
        .text {
            FontSize(14)
        }
        .code {
            FontFamilyVariant(.monospaced)
            FontSize(.em(0.85))
            BackgroundColor(secondaryBackground)
        }
        .strong {
            FontWeight(.semibold)
        }
        .link {
            ForegroundColor(link)
        }
        .heading1 { configuration in
            VStack(alignment: .leading, spacing: 0) {
                configuration.label
                    .relativePadding(.bottom, length: .em(0.3))
                    .relativeLineSpacing(.em(0.125))
                    .markdownMargin(top: 24, bottom: 16)
                    .markdownTextStyle {
                        FontWeight(.semibold)
                        FontSize(.em(2))
                    }
                Divider().overlay(divider)
            }
        }
        .heading2 { configuration in
            VStack(alignment: .leading, spacing: 0) {
                configuration.label
                    .relativePadding(.bottom, length: .em(0.3))
                    .relativeLineSpacing(.em(0.125))
                    .markdownMargin(top: 24, bottom: 16)
                    .markdownTextStyle {
                        FontWeight(.semibold)
                        FontSize(.em(1.5))
                    }
                Divider().overlay(divider)
            }
        }
        .heading3 { configuration in
            configuration.label
                .relativeLineSpacing(.em(0.125))
                .markdownMargin(top: 24, bottom: 16)
                .markdownTextStyle {
                    FontWeight(.semibold)
                    FontSize(.em(1.25))
                }
        }
        .heading4 { configuration in
            configuration.label
                .relativeLineSpacing(.em(0.125))
                .markdownMargin(top: 24, bottom: 16)
                .markdownTextStyle {
                    FontWeight(.semibold)
                }
        }
        .heading5 { configuration in
            configuration.label
                .relativeLineSpacing(.em(0.125))
                .markdownMargin(top: 24, bottom: 16)
                .markdownTextStyle {
                    FontWeight(.semibold)
                    FontSize(.em(0.875))
                }
        }
        .heading6 { configuration in
            configuration.label
                .relativeLineSpacing(.em(0.125))
                .markdownMargin(top: 24, bottom: 16)
                .markdownTextStyle {
                    FontWeight(.semibold)
                    FontSize(.em(0.85))
                    ForegroundColor(tertiaryText)
                }
        }
        .paragraph { configuration in
            configuration.label
                .fixedSize(horizontal: false, vertical: true)
                .relativeLineSpacing(.em(0.25))
                .markdownMargin(top: 0, bottom: 16)
        }
        .blockquote { configuration in
            HStack(spacing: 0) {
                RoundedRectangle(cornerRadius: 6)
                    .fill(border)
                    .relativeFrame(width: .em(0.2))
                configuration.label
                    .markdownTextStyle { ForegroundColor(secondaryText) }
                    .relativePadding(.horizontal, length: .em(1))
            }
            .fixedSize(horizontal: false, vertical: true)
        }
        .codeBlock { configuration in
            CodeBlockView(configuration: configuration)
        }
        .listItem { configuration in
            configuration.label
                .padding(.bottom, 10)
        }
        .taskListMarker { configuration in
            Image(systemName: configuration.isCompleted ? "checkmark.square.fill" : "square")
                .symbolRenderingMode(.hierarchical)
                .foregroundStyle(checkbox, checkboxBackground)
                .imageScale(.small)
                .relativeFrame(minWidth: .em(1.5), alignment: .trailing)
        }
        .table { configuration in
            configuration.label
                .fixedSize(horizontal: false, vertical: true)
                .markdownTableBorderStyle(.init(color: border))
                .markdownTableBackgroundStyle(
                    .alternatingRows(background, secondaryBackground)
                )
                .markdownMargin(top: 0, bottom: 16)
        }
        .tableCell { configuration in
            configuration.label
                .markdownTextStyle {
                    if configuration.row == 0 {
                        FontWeight(.semibold)
                    }
                    BackgroundColor(nil)
                }
                .fixedSize(horizontal: false, vertical: true)
                .padding(.vertical, 6)
                .padding(.horizontal, 13)
                .relativeLineSpacing(.em(0.25))
        }
        .thematicBreak {
            Divider()
                .relativeFrame(height: .em(0.25))
                .overlay(border)
                .markdownMargin(top: 24, bottom: 24)
        }
}



================================================
FILE: Enchanted/UI/Shared/Chat/Components/Recorder/RecordingView.swift
================================================
//
//  SwiftUIView.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 18/12/2023.
//

import SwiftUI
import AVFoundation

struct RecordingView: View {
    @StateObject var speechRecognizer: SpeechRecognizer = SpeechRecognizer()
    @Binding var isRecording: Bool
    var onComplete: (_ transcription: String) -> () = {_ in}
    
    private func toggleRecord() {
        Task {
            await speechRecognizer.userInit()
            await toggleTranscribing()
        }
        Haptics.shared.mediumTap()
    }
    
    private func toggleTranscribing() async {
        if isRecording {
            speechRecognizer.stopTranscribing()
            onComplete(speechRecognizer.transcript)
            isRecording = false
        } else {
            speechRecognizer.resetTranscript()
            speechRecognizer.startTranscribing(onUpdate: onComplete)
            isRecording = true
        }
    }
    
    var body: some View {
        Button(action: toggleRecord) {
            if isRecording {
                ZStack {
                    Color(.systemBlue)
                    
                    Image(systemName: "square.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.white)
                        .frame(width: 8)
                }
                .clipShape(Circle())
                .frame(width: 20, height: 20)
            } else {
                Image(systemName: "waveform")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 20)
                    .foregroundStyle(Color(.systemGray))
            }
        }
        .buttonStyle(PlainButtonStyle())
        .onChange(of: isRecording) { oldValue, newValue in
            if newValue == false {
                speechRecognizer.stopTranscribing()
            }
        }
    }
}


struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        RecordingView(speechRecognizer: SpeechRecognizer(), isRecording: .constant(true))
    }
}



================================================
FILE: Enchanted/UI/Shared/Chat/Components/Recorder/SpeechRecogniser.swift
================================================
//
//  SpeechRecogniser.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 21/12/2023.
//

//#if os(iOS)
import Foundation
import Speech

actor SpeechRecognizer: ObservableObject {
    enum RecognizerError: Error {
        case nilRecognizer
        case notAuthorizedToRecognize
        case notPermittedToRecord
        case recognizerIsUnavailable
        
        var message: String {
            switch self {
            case .nilRecognizer: return "Can't initialize speech recognizer"
            case .notAuthorizedToRecognize: return "Not authorized to recognize speech"
            case .notPermittedToRecord: return "Not permitted to record audio"
            case .recognizerIsUnavailable: return "Recognizer is unavailable"
            }
        }
    }
    
    @MainActor var transcript: String = ""
    
    private var audioEngine: AVAudioEngine?
    private var request: SFSpeechAudioBufferRecognitionRequest?
    private var task: SFSpeechRecognitionTask?
    var recognizer: SFSpeechRecognizer?
    private var onUpdate: ((String) -> ())?
    
    /**
     Initializes a new speech recognizer. If this is the first time you've used the class, it
     requests access to the speech recognizer and the microphone.
     */
    func userInit() {
        if recognizer != nil {
            return
        }
        
        recognizer = SFSpeechRecognizer()
        guard recognizer != nil else {
            transcribe(RecognizerError.nilRecognizer)
            return
        }
        
        Task {
            do {
                
            
                let authStatus = SFSpeechRecognizer.authorizationStatus()
                
                switch authStatus {
                case .authorized:
                   print("authorised")
                case .denied, .restricted, .notDetermined:
                    print("denicd")
                @unknown default:
                    print("wtf")
                    break
                }
                
                guard await SFSpeechRecognizer.hasAuthorizationToRecognize() else {
                    throw RecognizerError.notAuthorizedToRecognize
                }
#if os(iOS)
                guard await AVAudioSession.sharedInstance().hasPermissionToRecord() else {
                    throw RecognizerError.notPermittedToRecord
                }
#endif
            } catch {
                transcribe(error)
            }
        }
    }
    
    private func setUpdateHandler(_ handler: @escaping (_ message: String) -> ()) {
        onUpdate = handler
    }
    
    @MainActor func startTranscribing(onUpdate: @escaping (_ message: String) -> ()) {
        Task {
            await self.setUpdateHandler(onUpdate)
            await transcribe()
        }
    }
    
    @MainActor func resetTranscript() {
        Task {
            await reset()
        }
    }
    
    @MainActor func stopTranscribing() {
        Task {
            await reset()
        }
    }
    
    /**
     Begin transcribing audio.
     
     Creates a `SFSpeechRecognitionTask` that transcribes speech to text until you call `stopTranscribing()`.
     The resulting transcription is continuously written to the published `transcript` property.
     */
    private func transcribe() {
        guard let recognizer, recognizer.isAvailable else {
            self.transcribe(RecognizerError.recognizerIsUnavailable)
            return
        }
        
        do {
            let (audioEngine, request) = try Self.prepareEngine()
            self.audioEngine = audioEngine
            self.request = request
            self.task = recognizer.recognitionTask(with: request, resultHandler: { [weak self] result, error in
                self?.recognitionHandler(audioEngine: audioEngine, result: result, error: error)
            })
        } catch {
            print("error here")
            self.reset()
            self.transcribe(error)
        }
    }
    
    /// Reset the speech recognizer.
    private func reset() {
        task?.cancel()
        audioEngine?.stop()
        audioEngine = nil
        request = nil
        task = nil
    }
    
    private static func prepareEngine() throws -> (AVAudioEngine, SFSpeechAudioBufferRecognitionRequest) {
        let audioEngine = AVAudioEngine()
        
        let request = SFSpeechAudioBufferRecognitionRequest()
        request.shouldReportPartialResults = true
        
#if os(iOS) || os(visionOS)
        let audioSession = AVAudioSession.sharedInstance()
        try audioSession.setCategory(.playAndRecord, mode: .measurement, options: .duckOthers)
        try audioSession.setActive(true, options: .notifyOthersOnDeactivation)
#endif
        let inputNode = audioEngine.inputNode
        
        let recordingFormat = inputNode.outputFormat(forBus: 0)
        inputNode.installTap(onBus: 0, bufferSize: 1024, format: recordingFormat) { (buffer: AVAudioPCMBuffer, when: AVAudioTime) in
            request.append(buffer)
        }
        audioEngine.prepare()
        try audioEngine.start()
        
        return (audioEngine, request)
    }
    
    nonisolated private func recognitionHandler(audioEngine: AVAudioEngine, result: SFSpeechRecognitionResult?, error: Error?) {
        let receivedFinalResult = result?.isFinal ?? false
        let receivedError = error != nil
        
        if receivedFinalResult || receivedError {
            audioEngine.stop()
            audioEngine.inputNode.removeTap(onBus: 0)
        }
        
        if let result {
            transcribe(result.bestTranscription.formattedString)
        }
    }
    
    
    nonisolated private func transcribe(_ message: String) {
        Task { @MainActor in
            transcript = message
            if !message.isEmpty {
                await onUpdate?(message)
            }
        }
    }
    nonisolated private func transcribe(_ error: Error) {
        var errorMessage = ""
        if let error = error as? RecognizerError {
            errorMessage += error.message
        } else {
            errorMessage += error.localizedDescription
        }
        Task { @MainActor [errorMessage] in
            transcript = "<< \(errorMessage) >>"
        }
    }
}


extension SFSpeechRecognizer {
    static func hasAuthorizationToRecognize() async -> Bool {
        await withCheckedContinuation { continuation in
            requestAuthorization { status in
                continuation.resume(returning: status == .authorized)
            }
        }
    }
}


#if os(iOS)
extension AVAudioSession {
    func hasPermissionToRecord() async -> Bool {
        await withCheckedContinuation { continuation in
            requestRecordPermission { authorized in
                continuation.resume(returning: authorized)
            }
        }
    }
}
#endif
//#endif



================================================
FILE: Enchanted/UI/Shared/Components/SimpleFloatingButton.swift
================================================
//
//  SimpleFloatingButton.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 18/02/2024.
//

import SwiftUI

struct SimpleFloatingButton: View {
    var systemImage: String
    var onClick: () -> ()
    
    var body: some View {
        Button(action: onClick) {
            Image(systemName: systemImage)
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .foregroundColor(Color.label)
                .frame(height: 18)
        }
        .buttonStyle(GrowingButton())
        .contentShape(Rectangle())
    }
}

#Preview {
    SimpleFloatingButton(systemImage: "photo.fill", onClick: {})
        .frame(width: 100, height: 100)
}



================================================
FILE: Enchanted/UI/Shared/Settings/Settings.swift
================================================
//
//  Settings.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 28/12/2023.
//

import SwiftUI
import Combine

struct Settings: View {
    var languageModelStore = LanguageModelStore.shared
    var conversationStore = ConversationStore.shared
    var swiftDataService = SwiftDataService.shared
    
    @AppStorage("ollamaUri") private var ollamaUri: String = ""
    @AppStorage("systemPrompt") private var systemPrompt: String = ""
    @AppStorage("vibrations") private var vibrations: Bool = true
    @AppStorage("colorScheme") private var colorScheme = AppColorScheme.system
    @AppStorage("defaultOllamaModel") private var defaultOllamaModel: String = ""
    @AppStorage("ollamaBearerToken") private var ollamaBearerToken: String = ""
    @AppStorage("appUserInitials") private var appUserInitials: String = ""
    @AppStorage("pingInterval") private var pingInterval: String = "5"
    @AppStorage("voiceIdentifier") private var voiceIdentifier: String = ""
    
    @StateObject private var speechSynthesiser = SpeechSynthesizer.shared
    
    @Environment(\.presentationMode) var presentationMode
    
    private let timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    @State private var cancellable: AnyCancellable?
    
    private func save() {
#if os(iOS)
#endif
        // remove trailing slash
        if ollamaUri.last == "/" {
            ollamaUri = String(ollamaUri.dropLast())
        }
        
        OllamaService.shared.initEndpoint(url: ollamaUri, bearerToken: ollamaBearerToken)
        Task {
            Haptics.shared.mediumTap()
            try? await languageModelStore.loadModels()
        }
        presentationMode.wrappedValue.dismiss()
    }
    
    private func checkServer() {
        Task {
            OllamaService.shared.initEndpoint(url: ollamaUri)
            ollamaStatus = await OllamaService.shared.reachable()
            try? await languageModelStore.loadModels()
        }
    }
    
    private func deleteAll() {
        Task {
            try? await conversationStore.deleteAllConversations()
            try? await languageModelStore.deleteAllModels()
        }
    }
    
    @State var ollamaStatus: Bool?
    var body: some View {
        SettingsView(
            ollamaUri: $ollamaUri,
            systemPrompt: $systemPrompt, 
            vibrations: $vibrations,
            colorScheme: $colorScheme,
            defaultOllamModel: $defaultOllamaModel, 
            ollamaBearerToken: $ollamaBearerToken,
            appUserInitials: $appUserInitials,
            pingInterval: $pingInterval,
            voiceIdentifier: $voiceIdentifier,
            save: save,
            checkServer: checkServer,
            deleteAll: deleteAll,
            ollamaLangugeModels: languageModelStore.models,
            voices: speechSynthesiser.voices
        )
        .frame(maxWidth: 700)
        #if os(visionOS)
        .frame(minWidth: 600, minHeight: 800)
        #endif
        .onChange(of: defaultOllamaModel) { _, modelName in
            languageModelStore.setModel(modelName: modelName)
        }
        .onAppear {
            /// refresh voices in the background
            cancellable = timer.sink { _ in
                speechSynthesiser.fetchVoices()
            }
        }
        .onDisappear {
            cancellable?.cancel()
        }
    }
}

#Preview {
    Settings()
}



================================================
FILE: Enchanted/UI/Shared/Settings/SettingsView.swift
================================================
//
//  SettingsView.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 11/12/2023.
//

import SwiftUI
import AVFoundation

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var ollamaUri: String
    @Binding var systemPrompt: String
    @Binding var vibrations: Bool
    @Binding var colorScheme: AppColorScheme
    @Binding var defaultOllamModel: String
    @Binding var ollamaBearerToken: String
    @Binding var appUserInitials: String
    @Binding var pingInterval: String
    @Binding var voiceIdentifier: String
    @State var ollamaStatus: Bool?
    var save: () -> ()
    var checkServer: () -> ()
    var deleteAll: () -> ()
    var ollamaLangugeModels: [LanguageModelSD]
    var voices: [AVSpeechSynthesisVoice]
    
    @State private var deleteConversationsDialog = false
    
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Text("Cancel")
                            .font(.system(size: 16))
                            .foregroundStyle(Color(.label))
                    }
                    
                    
                    Spacer()
                    
                    Button(action: save) {
                        Text("Save")
                            .font(.system(size: 16))
                            .foregroundStyle(Color(.label))
                    }
                }
                
                HStack {
                    Spacer()
                    Text("Settings")
                        .font(.system(size: 16))
                        .fontWeight(.medium)
                        .foregroundStyle(Color(.label))
                    Spacer()
                }
            }
            .padding()
            
            Form {
                Section(header: Text("Ollama").font(.headline)) {
                    
                    TextField("Ollama server URI", text: $ollamaUri, onCommit: checkServer)
                        .textContentType(.URL)
                        .disableAutocorrection(true)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
#if !os(macOS)
                        .padding(.top, 8)
                        .keyboardType(.URL)
                        .autocapitalization(.none)
#endif
                    
                    VStack(alignment: .leading) {
                        Text("System prompt")
                        TextEditor(text: $systemPrompt)
                            .font(.system(size: 13))
                            .cornerRadius(4)
                            .multilineTextAlignment(.leading)
                            .frame(minHeight: 100)
                    }
                    
                    Picker(selection: $defaultOllamModel) {
                        ForEach(ollamaLangugeModels, id:\.self) { model in
                            Text(model.name).tag(model.name)
                        }
                    } label: {
                        Label {
                            Text("Default Model")
                        } icon: {
                            Image("ollama")
                                .renderingMode(.template)
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(Color(.label))
                                .frame(width: 24, height: 24)
                        }
                    }
                    
                    
                    TextField("Bearer Token", text: $ollamaBearerToken)
                        .disableAutocorrection(true)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
#if os(iOS)
                        .autocapitalization(.none)
#endif
                    TextField("Ping Interval (seconds)", text: $pingInterval)
                        .disableAutocorrection(true)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Section(header: Text("APP").font(.headline).padding(.top, 20)) {
                        
#if os(iOS)
                        Toggle(isOn: $vibrations, label: {
                            Label("Vibrations", systemImage: "water.waves")
                                .foregroundStyle(Color.label)
                        })
#endif
                    }
                    
                    
                    Picker(selection: $colorScheme) {
                        ForEach(AppColorScheme.allCases, id:\.self) { scheme in
                            Text(scheme.toString).tag(scheme.id)
                        }
                    } label: {
                        Label("Appearance", systemImage: "sun.max")
                            .foregroundStyle(Color.label)
                    }
                    
                    Picker(selection: $voiceIdentifier) {
                        ForEach(voices, id:\.self.identifier) { voice in
                            Text(voice.prettyName).tag(voice.identifier)
                        }
                    } label: {
                        Label("Voice", systemImage: "waveform")
                            .foregroundStyle(Color.label)
                        
#if os(macOS)
                        Text("Download voices by going to Settings > Accessibility > Spoken Content > System Voice > Manage Voices.")
#else
                        Text("Download voices by going to Settings > Accessibility > Spoken Content > Voices.")
#endif
                        
                        Button(action: {
#if os(macOS)
                            if let url = URL(string: "x-apple.systempreferences:com.apple.preference.universalaccess?SpeakableItems") {
                                NSWorkspace.shared.open(url)
                            }
#else
                            let url = URL(string: "App-Prefs:root=General&path=ACCESSIBILITY")
                            if let url = url, UIApplication.shared.canOpenURL(url) {
                                UIApplication.shared.open(url, options: [:], completionHandler: nil)
                            }
#endif
                            
                        }) {
                            
                            Text("Open Settings")
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                    
                    
                    TextField("Initials", text: $appUserInitials)
                        .disableAutocorrection(true)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
#if os(iOS)
                        .keyboardType(.URL)
                        .autocapitalization(.none)
#endif
                    
                    Button(action: {deleteConversationsDialog.toggle()}) {
                        HStack {
                            Spacer()
                            
                            Text("Clear All Data")
                                .foregroundStyle(Color(.systemRed))
                                .padding(.vertical, 6)
                            
                            Spacer()
                        }
                    }
                }
            }
            .formStyle(.grouped)
        }
        .preferredColorScheme(colorScheme.toiOSFormat)
        .confirmationDialog("Delete All Conversations?", isPresented: $deleteConversationsDialog) {
            Button("Delete", role: .destructive) { deleteAll() }
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Delete All Conversations?")
        }
    }
}

#Preview {
    SettingsView(
        ollamaUri: .constant(""),
        systemPrompt: .constant("You are an intelligent assistant solving complex problems. You are an intelligent assistant solving complex problems. You are an intelligent assistant solving complex problems."),
        vibrations: .constant(true),
        colorScheme: .constant(.light),
        defaultOllamModel: .constant("llama2"),
        ollamaBearerToken: .constant("x"),
        appUserInitials: .constant("AM"),
        pingInterval: .constant("5"),
        voiceIdentifier: .constant("sample"),
        save: {},
        checkServer: {},
        deleteAll: {},
        ollamaLangugeModels: LanguageModelSD.sample,
        voices: []
    )
}




================================================
FILE: Enchanted/UI/Shared/Sidebar/SidebarView.swift
================================================
//
//  SidebarView.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 10/12/2023.
//

import SwiftUI

struct SidebarView: View {
    @Environment(\.openWindow) var openWindow
    var selectedConversation: ConversationSD?
    var conversations: [ConversationSD]
    var onConversationTap: (_ conversation: ConversationSD) -> ()
    var onConversationDelete: (_ conversation: ConversationSD) -> ()
    var onDeleteDailyConversations: (_ date: Date) -> ()
    @State var showSettings = false
    @State var showCompletions = false
    @State var showKeyboardShortcutas = false
    
    private func onSettingsTap() {
        Task {
            showSettings.toggle()
            await Haptics.shared.mediumTap()
        }
    }
    
    var body: some View {
        VStack {
            ScrollView() {
                ConversationHistoryList(
                    selectedConversation: selectedConversation,
                    conversations: conversations,
                    onTap: onConversationTap,
                    onDelete: onConversationDelete,
                    onDeleteDailyConversations: onDeleteDailyConversations
                )
            }
            .scrollIndicators(.never)
            
            Divider()
            
#if os(macOS)
            SidebarButton(title: "Completions", image: "textformat.abc", onClick: {showCompletions.toggle()})
            
            SidebarButton(title: "Shortcuts", image: "keyboard.fill", onClick: {showKeyboardShortcutas.toggle()})
#endif
            
            SidebarButton(title: "Settings", image: "gearshape.fill", onClick: onSettingsTap)
            
        }
        .padding()
#if os(macOS)
        .focusedSceneValue(\.showSettings, $showSettings)
#endif
        .sheet(isPresented: $showSettings) {
            Settings()
        }
#if os(macOS)
        .sheet(isPresented: $showCompletions) {
            CompletionsEditor()
        }
        .sheet(isPresented: $showKeyboardShortcutas) {
            KeyboardShortcutsDemo()
        }
#endif
        
    }
}

#Preview {
    SidebarView(selectedConversation: ConversationSD.sample[0], conversations: ConversationSD.sample, onConversationTap: {_ in}, onConversationDelete: {_ in}, onDeleteDailyConversations: {_ in})
}



================================================
FILE: Enchanted/UI/Shared/Sidebar/Components/ConversationHistoryListView.swift
================================================
//
//  ConversationHistoryList.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 10/12/2023.
//

import SwiftUI

struct ConversationGroup: Hashable {
    let date: Date
    var conversations: [ConversationSD]
    
    // Implementing the Hashable protocol
    static func == (lhs: ConversationGroup, rhs: ConversationGroup) -> Bool {
        lhs.date == rhs.date
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(date)
    }
}

struct ConversationHistoryList: View {
    var selectedConversation: ConversationSD?
    var conversations: [ConversationSD]
    var onTap: (_ conversation: ConversationSD) -> ()
    var onDelete: (_ conversation: ConversationSD) -> ()
    var onDeleteDailyConversations: (_ date: Date) -> ()
    
    func groupConversationsByDay(conversations: [ConversationSD]) -> [ConversationGroup] {
        let groupedDictionary = Dictionary(grouping: conversations) { (conversation) -> Date in
            return Calendar.current.startOfDay(for: conversation.updatedAt)
        }
        
        return groupedDictionary.map { (key, value) in
            ConversationGroup(date: key, conversations: value)
        }.sorted(by: { $0.date > $1.date })
    }
    
    var conversationGroups: [ConversationGroup] {
        groupConversationsByDay(conversations: conversations)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 17) {
            ForEach(conversationGroups, id:\.self) { conversationGroup in
                
                HStack {
                    Text(conversationGroup.date.daysAgoString())
                        .font(.system(size: 14))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemGray))
                    
                    Spacer()
                }
                .contextMenu(menuItems: {
                    Button(role: .destructive, action: { onDeleteDailyConversations(conversationGroup.date) }) {
                        Label("Delete daily conversations", systemImage: "trash")
                    }
                })
                
                ForEach(conversationGroup.conversations, id:\.self) { dailyConversation in
                    Button(action: {onTap(dailyConversation)}) {
                        HStack {
                            Circle()
                                .frame(width: 6, height: 6)
                                .animation(.easeOut(duration: 0.15))
                                .transition(.opacity)
                                .showIf(selectedConversation == dailyConversation)
                            
                            Text(dailyConversation.name)
                                .lineLimit(1)
                                .font(.system(size: 16))
                                .foregroundColor(Color(.label))
                                .animation(.easeOut(duration: 0.15))
                                .transition(.opacity)
                            Spacer()
                        }
                        .animation(.easeOut(duration: 0.15))
                    }
                    .buttonStyle(.plain)
                    .contextMenu(menuItems: {
                        Button(role: .destructive, action: { onDelete(dailyConversation) }) {
                            Label("Delete", systemImage: "trash")
                        }
                    })
                }
                
                Divider()
            }
        }
    }
}


#Preview {
    ConversationHistoryList(selectedConversation: ConversationSD.sample[0], conversations: ConversationSD.sample, onTap: {_ in}, onDelete: {_ in}, onDeleteDailyConversations: {_ in})
}



================================================
FILE: Enchanted/UI/Shared/Sidebar/Components/KeyboardShortcuts.swift
================================================
//
//  KeyboardShortcuts.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 19/02/2024.
//

import SwiftUI

struct KeyboardShortcut: Identifiable {
    let id: Int
    var keys: [String]
    var description: String
}

struct KeyboardShortcutsDemo: View {
    @Environment(\.presentationMode) var presentationMode
    var shortcuts = [
        KeyboardShortcut(id: 1, keys: ["⌃", "⌘", "K"], description: "Open Panel Window"),
        KeyboardShortcut(id: 2, keys: ["⌘", "N"], description: "New Conversation"),
        KeyboardShortcut(id: 3, keys: ["⌘", "⌥", "S"], description: "Hide/Show sidebar"),
        KeyboardShortcut(id: 4, keys: ["⌘", "V"], description: "Paste text or image from clipboard into message box ")
    ]
    
    private func close() {
        presentationMode.wrappedValue.dismiss()
    }
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Text("Shortcuts")
                    .font(.title)
                    .fontWeight(.thin)
                    .enchantify()
                    .padding(.bottom, 30)
                
                Spacer()
                
                Button(action: close) {
                    Text("Close")
                }
                .buttonStyle(GrowingButton())
            }
            
            Table(shortcuts) {
                TableColumn("Shortcut") { shortcut in
                    Text(shortcut.keys.joined(separator: " + "))
                }
                .width(min: 100, max: 150)
                TableColumn("Description") { shortcut in
                    Text(String(shortcut.description))
                }
            }
        }
        .padding()
        .frame(width: 800, height: 600)
    }
}

#Preview {
    KeyboardShortcutsDemo()
}



================================================
FILE: Enchanted/UI/Shared/Sidebar/Components/SidebarButton.swift
================================================
//
//  SidebarButton.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 19/02/2024.
//

import SwiftUI

struct SidebarButton: View {
    var title: String
    var image: String
    var onClick: () -> ()
    
    var body: some View {
        Button(action: onClick) {
            HStack {
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 16)
                
                Text(title)
                    .lineLimit(1)
                    .font(.system(size: 14))
                    .fontWeight(.regular)
                
                Spacer()
            }
            .padding(8)
            .foregroundColor(Color(.label))
            .contentShape(Rectangle())
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    SidebarButton(title: "Settings", image: "gearshape.fill", onClick: {})
}



================================================
FILE: Enchanted/UI/Shared/Sidebar/Components/SideBarMenuView.swift
================================================
//
//  SideBarMenuView.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 09/12/2023.
//

import SwiftUI

struct SideBarStack<SidebarContent: View, Content: View>: View {
    let sidebarContent: SidebarContent
    let mainContent: Content
    let sidebarWidth: CGFloat
    @State var offset: CGFloat = 0
    @Binding var showSidebar: Bool
    
    init(sidebarWidth: CGFloat, showSidebar: Binding<Bool>, @ViewBuilder sidebar: ()->SidebarContent, @ViewBuilder content: ()->Content) {
        self.mainContent = content()
        self.sidebarContent = sidebar()
        self.sidebarWidth = sidebarWidth
        self._showSidebar = showSidebar
    }
    
    var body: some View {
        ZStack(alignment: .leading) {
            sidebarContent
                .frame(width: sidebarWidth, alignment: .center)
                .offset(x: showSidebar ? offset - sidebarWidth : -sidebarWidth, y: 0)
                .gesture(DragGesture().onChanged({ gesture in
                    let t = gesture.translation.width
                    if t > 0 {
                        return
                    }
                    
                    withAnimation(.spring) {
                        offset = sidebarWidth + t
                    }
                }).onEnded({ gesture in
                    withAnimation(.spring) {
                        if -offset < 100 {
                            offset = 0
                        } else {
                            offset = sidebarWidth
                        }
                        showSidebar = false
                    }
                    
                }))
            mainContent
                .overlay(
                    Group {
                        if showSidebar {
                            Color(.systemGray)
                                .ignoresSafeArea()
                                .opacity(showSidebar ? (offset/sidebarWidth * 0.3) : 0.1)
                                .onTapGesture {
                                    withAnimation(.spring) {
                                        self.offset = 0
                                        self.showSidebar = false
                                    }
                                }
                        }
                    }
                )
                .offset(x: showSidebar ? offset : 0, y: 0)
            
        }
        .onChange(of: showSidebar) { oldValue, newValue in
            if newValue {
                withAnimation(.spring) {
                    offset = sidebarWidth
                }
            }
        }
    }
}



================================================
FILE: Enchanted/UI/Shared/Voice/Voice.swift
================================================
//
//  Voice.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 26/05/2024.
//

import SwiftUI

struct Voice: View {
    @State var languageModelStore: LanguageModelStore
    @State var conversationStore: ConversationStore
    @State var appStore: AppStore
    
    var body: some View {
        VoiceView()
    }
}



================================================
FILE: Enchanted/UI/Shared/Voice/VoiceView.swift
================================================
//
//  ConversationView.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 26/05/2024.
//

import SwiftUI

struct VoiceView: View {
    var body: some View {
        Text("hello")
    }
}

#Preview {
    VoiceView()
}



================================================
FILE: Enchanted.xcodeproj/project.pbxproj
================================================
// !$*UTF8*$!
{
	archiveVersion = 1;
	classes = {
	};
	objectVersion = 56;
	objects = {

/* Begin PBXBuildFile section */
		3396E0762BD877D500213816 /* Menus.swift in Sources */ = {isa = PBXBuildFile; fileRef = 3396E0752BD877D500213816 /* Menus.swift */; };
		FF0146CB2B3DA1DF00A2A9F6 /* Settings.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF0146CA2B3DA1DF00A2A9F6 /* Settings.swift */; };
		FF0146CD2B3DADCA00A2A9F6 /* HapticsService.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF0146CC2B3DADCA00A2A9F6 /* HapticsService.swift */; };
		FF0611EA2C04A11800443B33 /* Magnet in Frameworks */ = {isa = PBXBuildFile; platformFilters = (macos, ); productRef = FF0611E92C04A11800443B33 /* Magnet */; };
		FF0611F12C04A2FB00443B33 /* Splash in Frameworks */ = {isa = PBXBuildFile; productRef = FF0611F02C04A2FB00443B33 /* Splash */; };
		FF0611F32C04BEFE00443B33 /* AVSpeechSynthesisVoice+Extension.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF0611F22C04BEFD00443B33 /* AVSpeechSynthesisVoice+Extension.swift */; };
		FF1002302B2482BA0011A4DC /* ChatMessageView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF10022F2B2482BA0011A4DC /* ChatMessageView.swift */; };
		FF1002322B2483A20011A4DC /* Colours+Extension.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF1002312B2483A20011A4DC /* Colours+Extension.swift */; };
		FF1002392B24BBF20011A4DC /* Chat.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF1002382B24BBF20011A4DC /* Chat.swift */; };
		FF10023E2B24F4900011A4DC /* OllamaService.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF10023D2B24F4900011A4DC /* OllamaService.swift */; };
		FF1002402B24F7320011A4DC /* SideBarMenuView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF10023F2B24F7320011A4DC /* SideBarMenuView.swift */; };
		FF1002442B25BB730011A4DC /* ConversationStore.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF1002432B25BB730011A4DC /* ConversationStore.swift */; };
		FF1002462B25BCE70011A4DC /* LanguageModelStore.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF1002452B25BCE70011A4DC /* LanguageModelStore.swift */; };
		FF10024A2B25BE740011A4DC /* LanguageModelSD.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF1002492B25BE740011A4DC /* LanguageModelSD.swift */; };
		FF10024C2B25BEA00011A4DC /* MessageSD.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF10024B2B25BEA00011A4DC /* MessageSD.swift */; };
		FF10024E2B25C2A70011A4DC /* ConversationSD.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF10024D2B25C2A70011A4DC /* ConversationSD.swift */; };
		FF1002502B25C79F0011A4DC /* SwiftDataService.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF10024F2B25C79F0011A4DC /* SwiftDataService.swift */; };
		FF1002522B2609980011A4DC /* ModelContext+Extension.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF1002512B2609970011A4DC /* ModelContext+Extension.swift */; };
		FF1002542B261D460011A4DC /* MessageListVIew.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF1002532B261D460011A4DC /* MessageListVIew.swift */; };
		FF10025A2B2624C40011A4DC /* ConversationHistoryListView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF1002592B2624C40011A4DC /* ConversationHistoryListView.swift */; };
		FF10025C2B2625BE0011A4DC /* SidebarView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF10025B2B2625BE0011A4DC /* SidebarView.swift */; };
		FF10025E2B2648460011A4DC /* ConversationState.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF10025D2B2648460011A4DC /* ConversationState.swift */; };
		FF1002602B26499B0011A4DC /* ConversationStatusView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF10025F2B26499B0011A4DC /* ConversationStatusView.swift */; };
		FF1002662B2653EE0011A4DC /* ActivityIndicatorView in Frameworks */ = {isa = PBXBuildFile; productRef = FF1002652B2653EE0011A4DC /* ActivityIndicatorView */; };
		FF1002682B2668790011A4DC /* Date+Extension.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF1002672B2668790011A4DC /* Date+Extension.swift */; };
		FF10026A2B2731C60011A4DC /* ModelSelectorView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF1002692B2731C60011A4DC /* ModelSelectorView.swift */; };
		FF10026D2B2751760011A4DC /* SettingsView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF10026C2B2751760011A4DC /* SettingsView.swift */; };
		FF1002732B276EC10011A4DC /* AppColorScheme.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF1002722B276EC10011A4DC /* AppColorScheme.swift */; };
		FF1002752B278C170011A4DC /* AppStore.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF1002742B278C170011A4DC /* AppStore.swift */; };
		FF15EF6A2B826C0300D4A541 /* SimpleFloatingButton.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF15EF692B826C0300D4A541 /* SimpleFloatingButton.swift */; };
		FF1BC3C72BA0757700A58043 /* SplashSyntaxHighlighter+Extension.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF1BC3C62BA0757700A58043 /* SplashSyntaxHighlighter+Extension.swift */; };
		FF226A652BE2A0EC00CC91F1 /* SelectTextSheet.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF226A642BE2A0EC00CC91F1 /* SelectTextSheet.swift */; };
		FF24B30E2B66BE8500AB618F /* RunningBorder.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF24B30D2B66BE8500AB618F /* RunningBorder.swift */; };
		FF2F03422B795E0B00349855 /* Clipboard.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF2F03412B795E0B00349855 /* Clipboard.swift */; };
		FF2F03442B79631800349855 /* Button+Extension.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF2F03432B79631800349855 /* Button+Extension.swift */; };
		FF2F03492B796A6500349855 /* HotkeyService.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF2F03482B796A6500349855 /* HotkeyService.swift */; };
		FF33066C2B83BB31007B33E5 /* SidebarButton.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF33066B2B83BB31007B33E5 /* SidebarButton.swift */; };
		FF33066E2B83CFEC007B33E5 /* KeyboardShortcuts.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF33066D2B83CFEC007B33E5 /* KeyboardShortcuts.swift */; };
		FF38F84F2B7A7B6700546B56 /* MenuBarControlView_macOS.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF38F84E2B7A7B6700546B56 /* MenuBarControlView_macOS.swift */; };
		FF38F8512B7A919C00546B56 /* MenuBarControl_macOS.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF38F8502B7A919C00546B56 /* MenuBarControl_macOS.swift */; };
		FF38F8532B7AA9C400546B56 /* ApplicationEntry.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF38F8522B7AA9C400546B56 /* ApplicationEntry.swift */; };
		FF38F8562B7AB01E00546B56 /* FloatingPanel.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF38F8552B7AB01E00546B56 /* FloatingPanel.swift */; };
		FF38F8582B7AB1AD00546B56 /* PanelManager.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF38F8572B7AB1AD00546B56 /* PanelManager.swift */; };
		FF38F85A2B7AB28300546B56 /* PromptPanelView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF38F8592B7AB28300546B56 /* PromptPanelView.swift */; };
		FF38F85C2B7ABC2C00546B56 /* PromptPanel.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF38F85B2B7ABC2C00546B56 /* PromptPanel.swift */; };
		FF4A605D2BC3587800D7BD4F /* KeyboardShortcuts in Frameworks */ = {isa = PBXBuildFile; productRef = FF4A605C2BC3587800D7BD4F /* KeyboardShortcuts */; };
		FF5FA0D62B35169400BC471D /* Binding+Extension.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF5FA0D52B35169400BC471D /* Binding+Extension.swift */; };
		FF66A51D2B76949A00FAAC1E /* Helpers.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF66A51C2B76949A00FAAC1E /* Helpers.swift */; };
		FF6B7B132B3EE7AC00E8FEA3 /* Throttler.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF6B7B122B3EE7AC00E8FEA3 /* Throttler.swift */; };
		FF6D820D2B90C925001183A8 /* CompletionPanelView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF6D820C2B90C925001183A8 /* CompletionPanelView.swift */; };
		FF6D82122B911079001183A8 /* PanelCompletionsVM.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF6D82112B911079001183A8 /* PanelCompletionsVM.swift */; };
		FF6D82152B911536001183A8 /* Accessibility.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF6D82142B911536001183A8 /* Accessibility.swift */; };
		FF6D82172B9122F9001183A8 /* CompletionInstructionSD.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF6D82162B9122F9001183A8 /* CompletionInstructionSD.swift */; };
		FF6D82192B912804001183A8 /* CompletionButtonView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF6D82182B912804001183A8 /* CompletionButtonView.swift */; };
		FF6D821C2B914202001183A8 /* CompletionsEditorView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF6D821B2B914202001183A8 /* CompletionsEditorView.swift */; };
		FF6D821E2B916053001183A8 /* UpsertCompletionView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF6D821D2B916053001183A8 /* UpsertCompletionView.swift */; };
		FF6D82202B916CC3001183A8 /* CompletionsEditor.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF6D821F2B916CC3001183A8 /* CompletionsEditor.swift */; };
		FF6D82252B9204F3001183A8 /* AsyncQueue.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF6D82242B9204F3001183A8 /* AsyncQueue.swift */; };
		FF79AEB62CE72ECE00EDE10C /* MarkdownUI in Frameworks */ = {isa = PBXBuildFile; productRef = FF79AEB52CE72ECE00EDE10C /* MarkdownUI */; };
		FF7FBE4C2B78E384000901F7 /* SamplePrompt.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF7FBE4B2B78E384000901F7 /* SamplePrompt.swift */; };
		FF911DF12B98F08800915E94 /* WrappingHStack in Frameworks */ = {isa = PBXBuildFile; productRef = FF911DF02B98F08800915E94 /* WrappingHStack */; };
		FF9300D42B778829000859F4 /* ChatView_macOS.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF9300D32B778829000859F4 /* ChatView_macOS.swift */; };
		FF9300DA2B781D97000859F4 /* ToolbarView_macOS.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF9300D92B781D97000859F4 /* ToolbarView_macOS.swift */; };
		FF9300DC2B7823B0000859F4 /* EmptyConversaitonView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF9300DB2B7823B0000859F4 /* EmptyConversaitonView.swift */; };
		FF9300DE2B782A28000859F4 /* UnreachableAPIView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF9300DD2B782A28000859F4 /* UnreachableAPIView.swift */; };
		FF9300E02B783945000859F4 /* InputFields_macOS.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF9300DF2B783945000859F4 /* InputFields_macOS.swift */; };
		FF9C920A2BF0B7B1004C8275 /* LanguageModel.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF9C92092BF0B7B1004C8275 /* LanguageModel.swift */; };
		FF9C920C2BF0C088004C8275 /* OptionsMenuView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FF9C920B2BF0C088004C8275 /* OptionsMenuView.swift */; };
		FFB0327D2B312F3D0066A9DB /* RecordingView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFB0327C2B312F3D0066A9DB /* RecordingView.swift */; };
		FFB21A872B7BD0BA00D148A4 /* KeyboardReadable+Extension.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFB21A862B7BD0BA00D148A4 /* KeyboardReadable+Extension.swift */; };
		FFB56F432C0353CF0020AFFD /* ReadingAloudView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFB56F422C0353CF0020AFFD /* ReadingAloudView.swift */; };
		FFB56F462C0383B80020AFFD /* VoiceView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFB56F452C0383B80020AFFD /* VoiceView.swift */; };
		FFBB2C7B2C03D8AD00509204 /* Voice.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFBB2C7A2C03D8AD00509204 /* Voice.swift */; };
		FFBB2C7D2C047B6C00509204 /* Image+Extension.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFBB2C7C2C047B6B00509204 /* Image+Extension.swift */; };
		FFBBF4842B34881B008D611C /* SpeechRecogniser.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFBBF4832B34881B008D611C /* SpeechRecogniser.swift */; };
		FFBBF4882B34F9C8008D611C /* View+Extension.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFBBF4872B34F9C8008D611C /* View+Extension.swift */; };
		FFBBF48A2B350283008D611C /* SelectedImageView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFBBF4892B350283008D611C /* SelectedImageView.swift */; };
		FFBBF48C2B35051D008D611C /* UIImage+Extension.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFBBF48B2B35051D008D611C /* UIImage+Extension.swift */; };
		FFCF00F12C03209A00590E79 /* SpeechService.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFCF00F02C03209A00590E79 /* SpeechService.swift */; };
		FFD57E302BF29145003FEFF1 /* MarkdownColours.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFD57E2F2BF29145003FEFF1 /* MarkdownColours.swift */; };
		FFD57E322BF291B2003FEFF1 /* CodeBlockView.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFD57E312BF291B2003FEFF1 /* CodeBlockView.swift */; };
		FFD5FAD22B8130490055AB51 /* Vortex in Frameworks */ = {isa = PBXBuildFile; productRef = FF464B122B8026DA008E5130 /* Vortex */; };
		FFD5FAD52B8130CE0055AB51 /* OllamaKit in Frameworks */ = {isa = PBXBuildFile; productRef = FFD5FAD42B8130CE0055AB51 /* OllamaKit */; };
		FFE21C782B82353A00A69B9C /* SleepTest.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFE21C772B82353A00A69B9C /* SleepTest.swift */; };
		FFE2C8232B9A657A00BD82F3 /* Accessibility.plist in Resources */ = {isa = PBXBuildFile; fileRef = FFE2C8222B9A657A00BD82F3 /* Accessibility.plist */; };
		FFEB9CA82BA04304004B1F3D /* NotificationMessage.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFEB9CA72BA04304004B1F3D /* NotificationMessage.swift */; };
		FFEC32912B24779A003E5C04 /* EnchantedApp.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFEC32902B24779A003E5C04 /* EnchantedApp.swift */; };
		FFEC32972B24779B003E5C04 /* Assets.xcassets in Resources */ = {isa = PBXBuildFile; fileRef = FFEC32962B24779B003E5C04 /* Assets.xcassets */; };
		FFEC329B2B24779B003E5C04 /* Preview Assets.xcassets in Resources */ = {isa = PBXBuildFile; fileRef = FFEC329A2B24779B003E5C04 /* Preview Assets.xcassets */; };
		FFEC32AA2B24797C003E5C04 /* ChatView_iOS.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFEC32A92B24797C003E5C04 /* ChatView_iOS.swift */; };
		FFEC9BDF2B8131B900AFBA63 /* HotKeys.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFEC9BDE2B8131B900AFBA63 /* HotKeys.swift */; };
		FFEC9BE12B81327B00AFBA63 /* DragAndDrop.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFEC9BE02B81327B00AFBA63 /* DragAndDrop.swift */; };
		FFEC9BE32B81358800AFBA63 /* DeallocPrinter.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFEC9BE22B81358800AFBA63 /* DeallocPrinter.swift */; };
		FFEC9BE72B813A8D00AFBA63 /* RemovableImage.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFEC9BE62B813A8D00AFBA63 /* RemovableImage.swift */; };
		FFFD00C22B92607800392AE6 /* CompletionsStore.swift in Sources */ = {isa = PBXBuildFile; fileRef = FFFD00C12B92607800392AE6 /* CompletionsStore.swift */; };
		FFFD00C92B94CB5E00392AE6 /* AsyncAlgorithms in Frameworks */ = {isa = PBXBuildFile; productRef = FFFD00C82B94CB5E00392AE6 /* AsyncAlgorithms */; };
/* End PBXBuildFile section */

/* Begin PBXFileReference section */
		3396E0752BD877D500213816 /* Menus.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = Menus.swift; sourceTree = "<group>"; };
		FF0146CA2B3DA1DF00A2A9F6 /* Settings.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = Settings.swift; sourceTree = "<group>"; };
		FF0146CC2B3DADCA00A2A9F6 /* HapticsService.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = HapticsService.swift; sourceTree = "<group>"; };
		FF0611F22C04BEFD00443B33 /* AVSpeechSynthesisVoice+Extension.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = "AVSpeechSynthesisVoice+Extension.swift"; sourceTree = "<group>"; };
		FF10022F2B2482BA0011A4DC /* ChatMessageView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = ChatMessageView.swift; sourceTree = "<group>"; };
		FF1002312B2483A20011A4DC /* Colours+Extension.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = "Colours+Extension.swift"; sourceTree = "<group>"; };
		FF1002382B24BBF20011A4DC /* Chat.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = Chat.swift; sourceTree = "<group>"; };
		FF10023D2B24F4900011A4DC /* OllamaService.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = OllamaService.swift; sourceTree = "<group>"; };
		FF10023F2B24F7320011A4DC /* SideBarMenuView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = SideBarMenuView.swift; sourceTree = "<group>"; };
		FF1002432B25BB730011A4DC /* ConversationStore.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = ConversationStore.swift; sourceTree = "<group>"; };
		FF1002452B25BCE70011A4DC /* LanguageModelStore.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = LanguageModelStore.swift; sourceTree = "<group>"; };
		FF1002492B25BE740011A4DC /* LanguageModelSD.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = LanguageModelSD.swift; sourceTree = "<group>"; };
		FF10024B2B25BEA00011A4DC /* MessageSD.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = MessageSD.swift; sourceTree = "<group>"; };
		FF10024D2B25C2A70011A4DC /* ConversationSD.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = ConversationSD.swift; sourceTree = "<group>"; };
		FF10024F2B25C79F0011A4DC /* SwiftDataService.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = SwiftDataService.swift; sourceTree = "<group>"; };
		FF1002512B2609970011A4DC /* ModelContext+Extension.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = "ModelContext+Extension.swift"; sourceTree = "<group>"; };
		FF1002532B261D460011A4DC /* MessageListVIew.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = MessageListVIew.swift; sourceTree = "<group>"; };
		FF1002592B2624C40011A4DC /* ConversationHistoryListView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = ConversationHistoryListView.swift; sourceTree = "<group>"; };
		FF10025B2B2625BE0011A4DC /* SidebarView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = SidebarView.swift; sourceTree = "<group>"; };
		FF10025D2B2648460011A4DC /* ConversationState.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = ConversationState.swift; sourceTree = "<group>"; };
		FF10025F2B26499B0011A4DC /* ConversationStatusView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = ConversationStatusView.swift; sourceTree = "<group>"; };
		FF1002672B2668790011A4DC /* Date+Extension.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = "Date+Extension.swift"; sourceTree = "<group>"; };
		FF1002692B2731C60011A4DC /* ModelSelectorView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = ModelSelectorView.swift; sourceTree = "<group>"; };
		FF10026C2B2751760011A4DC /* SettingsView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = SettingsView.swift; sourceTree = "<group>"; };
		FF1002722B276EC10011A4DC /* AppColorScheme.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = AppColorScheme.swift; sourceTree = "<group>"; };
		FF1002742B278C170011A4DC /* AppStore.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = AppStore.swift; sourceTree = "<group>"; };
		FF15EF692B826C0300D4A541 /* SimpleFloatingButton.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = SimpleFloatingButton.swift; sourceTree = "<group>"; };
		FF1BC3C62BA0757700A58043 /* SplashSyntaxHighlighter+Extension.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = "SplashSyntaxHighlighter+Extension.swift"; sourceTree = "<group>"; };
		FF226A642BE2A0EC00CC91F1 /* SelectTextSheet.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = SelectTextSheet.swift; sourceTree = "<group>"; };
		FF24B30D2B66BE8500AB618F /* RunningBorder.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = RunningBorder.swift; sourceTree = "<group>"; };
		FF2F03412B795E0B00349855 /* Clipboard.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = Clipboard.swift; sourceTree = "<group>"; };
		FF2F03432B79631800349855 /* Button+Extension.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = "Button+Extension.swift"; sourceTree = "<group>"; };
		FF2F03482B796A6500349855 /* HotkeyService.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = HotkeyService.swift; sourceTree = "<group>"; };
		FF33066B2B83BB31007B33E5 /* SidebarButton.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = SidebarButton.swift; sourceTree = "<group>"; };
		FF33066D2B83CFEC007B33E5 /* KeyboardShortcuts.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = KeyboardShortcuts.swift; sourceTree = "<group>"; };
		FF38F84E2B7A7B6700546B56 /* MenuBarControlView_macOS.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = MenuBarControlView_macOS.swift; sourceTree = "<group>"; };
		FF38F8502B7A919C00546B56 /* MenuBarControl_macOS.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = MenuBarControl_macOS.swift; sourceTree = "<group>"; };
		FF38F8522B7AA9C400546B56 /* ApplicationEntry.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = ApplicationEntry.swift; sourceTree = "<group>"; };
		FF38F8552B7AB01E00546B56 /* FloatingPanel.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = FloatingPanel.swift; sourceTree = "<group>"; };
		FF38F8572B7AB1AD00546B56 /* PanelManager.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = PanelManager.swift; sourceTree = "<group>"; };
		FF38F8592B7AB28300546B56 /* PromptPanelView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = PromptPanelView.swift; sourceTree = "<group>"; };
		FF38F85B2B7ABC2C00546B56 /* PromptPanel.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = PromptPanel.swift; sourceTree = "<group>"; };
		FF5FA0D52B35169400BC471D /* Binding+Extension.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = "Binding+Extension.swift"; sourceTree = "<group>"; };
		FF66A51C2B76949A00FAAC1E /* Helpers.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = Helpers.swift; sourceTree = "<group>"; };
		FF6B7B122B3EE7AC00E8FEA3 /* Throttler.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = Throttler.swift; sourceTree = "<group>"; };
		FF6D820C2B90C925001183A8 /* CompletionPanelView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = CompletionPanelView.swift; sourceTree = "<group>"; };
		FF6D82112B911079001183A8 /* PanelCompletionsVM.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = PanelCompletionsVM.swift; sourceTree = "<group>"; };
		FF6D82142B911536001183A8 /* Accessibility.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = Accessibility.swift; sourceTree = "<group>"; };
		FF6D82162B9122F9001183A8 /* CompletionInstructionSD.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = CompletionInstructionSD.swift; sourceTree = "<group>"; };
		FF6D82182B912804001183A8 /* CompletionButtonView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = CompletionButtonView.swift; sourceTree = "<group>"; };
		FF6D821B2B914202001183A8 /* CompletionsEditorView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = CompletionsEditorView.swift; sourceTree = "<group>"; };
		FF6D821D2B916053001183A8 /* UpsertCompletionView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = UpsertCompletionView.swift; sourceTree = "<group>"; };
		FF6D821F2B916CC3001183A8 /* CompletionsEditor.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = CompletionsEditor.swift; sourceTree = "<group>"; };
		FF6D82242B9204F3001183A8 /* AsyncQueue.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = AsyncQueue.swift; sourceTree = "<group>"; };
		FF7FBE4B2B78E384000901F7 /* SamplePrompt.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = SamplePrompt.swift; sourceTree = "<group>"; };
		FF9300D32B778829000859F4 /* ChatView_macOS.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = ChatView_macOS.swift; sourceTree = "<group>"; };
		FF9300D92B781D97000859F4 /* ToolbarView_macOS.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = ToolbarView_macOS.swift; sourceTree = "<group>"; };
		FF9300DB2B7823B0000859F4 /* EmptyConversaitonView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = EmptyConversaitonView.swift; sourceTree = "<group>"; };
		FF9300DD2B782A28000859F4 /* UnreachableAPIView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = UnreachableAPIView.swift; sourceTree = "<group>"; };
		FF9300DF2B783945000859F4 /* InputFields_macOS.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = InputFields_macOS.swift; sourceTree = "<group>"; };
		FF9C92072BF0B464004C8275 /* EnchantedDebug.entitlements */ = {isa = PBXFileReference; fileEncoding = 4; lastKnownFileType = text.plist.entitlements; path = EnchantedDebug.entitlements; sourceTree = "<group>"; };
		FF9C92092BF0B7B1004C8275 /* LanguageModel.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = LanguageModel.swift; sourceTree = "<group>"; };
		FF9C920B2BF0C088004C8275 /* OptionsMenuView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = OptionsMenuView.swift; sourceTree = "<group>"; };
		FFB0327C2B312F3D0066A9DB /* RecordingView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = RecordingView.swift; sourceTree = "<group>"; };
		FFB21A862B7BD0BA00D148A4 /* KeyboardReadable+Extension.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = "KeyboardReadable+Extension.swift"; sourceTree = "<group>"; };
		FFB56F422C0353CF0020AFFD /* ReadingAloudView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = ReadingAloudView.swift; sourceTree = "<group>"; };
		FFB56F452C0383B80020AFFD /* VoiceView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = VoiceView.swift; sourceTree = "<group>"; };
		FFBB2C7A2C03D8AD00509204 /* Voice.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = Voice.swift; sourceTree = "<group>"; };
		FFBB2C7C2C047B6B00509204 /* Image+Extension.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = "Image+Extension.swift"; sourceTree = "<group>"; };
		FFBBF4822B348345008D611C /* Info.plist */ = {isa = PBXFileReference; lastKnownFileType = text.plist; path = Info.plist; sourceTree = "<group>"; };
		FFBBF4832B34881B008D611C /* SpeechRecogniser.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = SpeechRecogniser.swift; sourceTree = "<group>"; };
		FFBBF4872B34F9C8008D611C /* View+Extension.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = "View+Extension.swift"; sourceTree = "<group>"; };
		FFBBF4892B350283008D611C /* SelectedImageView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = SelectedImageView.swift; sourceTree = "<group>"; };
		FFBBF48B2B35051D008D611C /* UIImage+Extension.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = "UIImage+Extension.swift"; sourceTree = "<group>"; };
		FFCF00F02C03209A00590E79 /* SpeechService.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = SpeechService.swift; sourceTree = "<group>"; };
		FFD57E2F2BF29145003FEFF1 /* MarkdownColours.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = MarkdownColours.swift; sourceTree = "<group>"; };
		FFD57E312BF291B2003FEFF1 /* CodeBlockView.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = CodeBlockView.swift; sourceTree = "<group>"; };
		FFE21C772B82353A00A69B9C /* SleepTest.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = SleepTest.swift; sourceTree = "<group>"; };
		FFE2C8222B9A657A00BD82F3 /* Accessibility.plist */ = {isa = PBXFileReference; lastKnownFileType = text.plist.xml; path = Accessibility.plist; sourceTree = "<group>"; };
		FFEB9CA72BA04304004B1F3D /* NotificationMessage.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = NotificationMessage.swift; sourceTree = "<group>"; };
		FFEC328D2B24779A003E5C04 /* Enchanted.app */ = {isa = PBXFileReference; explicitFileType = wrapper.application; includeInIndex = 0; path = Enchanted.app; sourceTree = BUILT_PRODUCTS_DIR; };
		FFEC32902B24779A003E5C04 /* EnchantedApp.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = EnchantedApp.swift; sourceTree = "<group>"; };
		FFEC32962B24779B003E5C04 /* Assets.xcassets */ = {isa = PBXFileReference; lastKnownFileType = folder.assetcatalog; path = Assets.xcassets; sourceTree = "<group>"; };
		FFEC32982B24779B003E5C04 /* Enchanted.entitlements */ = {isa = PBXFileReference; lastKnownFileType = text.plist.entitlements; path = Enchanted.entitlements; sourceTree = "<group>"; };
		FFEC329A2B24779B003E5C04 /* Preview Assets.xcassets */ = {isa = PBXFileReference; lastKnownFileType = folder.assetcatalog; path = "Preview Assets.xcassets"; sourceTree = "<group>"; };
		FFEC32A92B24797C003E5C04 /* ChatView_iOS.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = ChatView_iOS.swift; sourceTree = "<group>"; };
		FFEC9BDE2B8131B900AFBA63 /* HotKeys.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = HotKeys.swift; sourceTree = "<group>"; };
		FFEC9BE02B81327B00AFBA63 /* DragAndDrop.swift */ = {isa = PBXFileReference; fileEncoding = 4; lastKnownFileType = sourcecode.swift; path = DragAndDrop.swift; sourceTree = "<group>"; };
		FFEC9BE22B81358800AFBA63 /* DeallocPrinter.swift */ = {isa = PBXFileReference; fileEncoding = 4; lastKnownFileType = sourcecode.swift; path = DeallocPrinter.swift; sourceTree = "<group>"; };
		FFEC9BE62B813A8D00AFBA63 /* RemovableImage.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = RemovableImage.swift; sourceTree = "<group>"; };
		FFFD00C12B92607800392AE6 /* CompletionsStore.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = CompletionsStore.swift; sourceTree = "<group>"; };
/* End PBXFileReference section */

/* Begin PBXFrameworksBuildPhase section */
		FFEC328A2B24779A003E5C04 /* Frameworks */ = {
			isa = PBXFrameworksBuildPhase;
			buildActionMask = 2147483647;
			files = (
				FFD5FAD52B8130CE0055AB51 /* OllamaKit in Frameworks */,
				FFD5FAD22B8130490055AB51 /* Vortex in Frameworks */,
				FF0611F12C04A2FB00443B33 /* Splash in Frameworks */,
				FF79AEB62CE72ECE00EDE10C /* MarkdownUI in Frameworks */,
				FF0611EA2C04A11800443B33 /* Magnet in Frameworks */,
				FF911DF12B98F08800915E94 /* WrappingHStack in Frameworks */,
				FF1002662B2653EE0011A4DC /* ActivityIndicatorView in Frameworks */,
				FFFD00C92B94CB5E00392AE6 /* AsyncAlgorithms in Frameworks */,
				FF4A605D2BC3587800D7BD4F /* KeyboardShortcuts in Frameworks */,
			);
			runOnlyForDeploymentPostprocessing = 0;
		};
/* End PBXFrameworksBuildPhase section */

/* Begin PBXGroup section */
		FF10022C2B2481790011A4DC /* Components */ = {
			isa = PBXGroup;
			children = (
				FF10025F2B26499B0011A4DC /* ConversationStatusView.swift */,
				FF9300DB2B7823B0000859F4 /* EmptyConversaitonView.swift */,
				FF1002532B261D460011A4DC /* MessageListVIew.swift */,
				FF1002692B2731C60011A4DC /* ModelSelectorView.swift */,
				FF9C920B2BF0C088004C8275 /* OptionsMenuView.swift */,
				FFB56F422C0353CF0020AFFD /* ReadingAloudView.swift */,
				FFEC9BE62B813A8D00AFBA63 /* RemovableImage.swift */,
				FF24B30D2B66BE8500AB618F /* RunningBorder.swift */,
				FFBBF4892B350283008D611C /* SelectedImageView.swift */,
				FF9300DD2B782A28000859F4 /* UnreachableAPIView.swift */,
				FFD57E2E2BF2901A003FEFF1 /* ChatMessages */,
				FFB0327B2B312F310066A9DB /* Recorder */,
			);
			path = Components;
			sourceTree = "<group>";
		};
		FF1002412B25BAAE0011A4DC /* SwiftData */ = {
			isa = PBXGroup;
			children = (
				FF1002482B25BE580011A4DC /* Models */,
			);
			path = SwiftData;
			sourceTree = "<group>";
		};
		FF1002422B25BAC50011A4DC /* Stores */ = {
			isa = PBXGroup;
			children = (
				FF1002742B278C170011A4DC /* AppStore.swift */,
				FFFD00C12B92607800392AE6 /* CompletionsStore.swift */,
				FF1002432B25BB730011A4DC /* ConversationStore.swift */,
				FF1002452B25BCE70011A4DC /* LanguageModelStore.swift */,
			);
			path = Stores;
			sourceTree = "<group>";
		};
		FF1002482B25BE580011A4DC /* Models */ = {
			isa = PBXGroup;
			children = (
				FF6D82162B9122F9001183A8 /* CompletionInstructionSD.swift */,
				FF10024D2B25C2A70011A4DC /* ConversationSD.swift */,
				FF1002492B25BE740011A4DC /* LanguageModelSD.swift */,
				FF10024B2B25BEA00011A4DC /* MessageSD.swift */,
			);
			path = Models;
			sourceTree = "<group>";
		};
		FF1002552B2624790011A4DC /* Sidebar */ = {
			isa = PBXGroup;
			children = (
				FF1002562B2624800011A4DC /* Components */,
				FF10025B2B2625BE0011A4DC /* SidebarView.swift */,
			);
			path = Sidebar;
			sourceTree = "<group>";
		};
		FF1002562B2624800011A4DC /* Components */ = {
			isa = PBXGroup;
			children = (
				FF10023F2B24F7320011A4DC /* SideBarMenuView.swift */,
				FF1002592B2624C40011A4DC /* ConversationHistoryListView.swift */,
				FF33066B2B83BB31007B33E5 /* SidebarButton.swift */,
				FF33066D2B83CFEC007B33E5 /* KeyboardShortcuts.swift */,
			);
			path = Components;
			sourceTree = "<group>";
		};
		FF10026B2B2751630011A4DC /* Settings */ = {
			isa = PBXGroup;
			children = (
				FF10026C2B2751760011A4DC /* SettingsView.swift */,
				FF0146CA2B3DA1DF00A2A9F6 /* Settings.swift */,
			);
			path = Settings;
			sourceTree = "<group>";
		};
		FF15EF682B826BF400D4A541 /* Components */ = {
			isa = PBXGroup;
			children = (
				FF15EF692B826C0300D4A541 /* SimpleFloatingButton.swift */,
			);
			path = Components;
			sourceTree = "<group>";
		};
		FF226A632BE2A0E100CC91F1 /* Components */ = {
			isa = PBXGroup;
			children = (
				FF226A642BE2A0EC00CC91F1 /* SelectTextSheet.swift */,
			);
			path = Components;
			sourceTree = "<group>";
		};
		FF38F84D2B7A7B5300546B56 /* MenuBar */ = {
			isa = PBXGroup;
			children = (
				FF38F84E2B7A7B6700546B56 /* MenuBarControlView_macOS.swift */,
				FF38F8502B7A919C00546B56 /* MenuBarControl_macOS.swift */,
			);
			path = MenuBar;
			sourceTree = "<group>";
		};
		FF38F8542B7AB00100546B56 /* PromptPanel */ = {
			isa = PBXGroup;
			children = (
				FF38F8552B7AB01E00546B56 /* FloatingPanel.swift */,
				FF6D82112B911079001183A8 /* PanelCompletionsVM.swift */,
				FF38F8572B7AB1AD00546B56 /* PanelManager.swift */,
				FF38F85B2B7ABC2C00546B56 /* PromptPanel.swift */,
			);
			path = PromptPanel;
			sourceTree = "<group>";
		};
		FF464B142B80BB9C008E5130 /* Helpers */ = {
			isa = PBXGroup;
			children = (
				FFEC9BE22B81358800AFBA63 /* DeallocPrinter.swift */,
				FFEC9BDE2B8131B900AFBA63 /* HotKeys.swift */,
				FFE21C772B82353A00A69B9C /* SleepTest.swift */,
				FF6D82142B911536001183A8 /* Accessibility.swift */,
				FF6D82242B9204F3001183A8 /* AsyncQueue.swift */,
			);
			path = Helpers;
			sourceTree = "<group>";
		};
		FF464B172B810966008E5130 /* Components */ = {
			isa = PBXGroup;
			children = (
				FF6D82182B912804001183A8 /* CompletionButtonView.swift */,
				FF6D820C2B90C925001183A8 /* CompletionPanelView.swift */,
				FFEC9BE02B81327B00AFBA63 /* DragAndDrop.swift */,
				FF38F8592B7AB28300546B56 /* PromptPanelView.swift */,
			);
			path = Components;
			sourceTree = "<group>";
		};
		FF66A51E2B77788D00FAAC1E /* macOS */ = {
			isa = PBXGroup;
			children = (
				3396E0752BD877D500213816 /* Menus.swift */,
				FF9300D52B778F1A000859F4 /* Chat */,
				FF6D821A2B9141F0001183A8 /* CompletionsEditor */,
				FF464B172B810966008E5130 /* Components */,
				FF38F84D2B7A7B5300546B56 /* MenuBar */,
				FF38F8542B7AB00100546B56 /* PromptPanel */,
			);
			path = macOS;
			sourceTree = "<group>";
		};
		FF66A51F2B77789300FAAC1E /* iOS */ = {
			isa = PBXGroup;
			children = (
				FF226A632BE2A0E100CC91F1 /* Components */,
				FFEC32A92B24797C003E5C04 /* ChatView_iOS.swift */,
			);
			path = iOS;
			sourceTree = "<group>";
		};
		FF6D821A2B9141F0001183A8 /* CompletionsEditor */ = {
			isa = PBXGroup;
			children = (
				FF6D821F2B916CC3001183A8 /* CompletionsEditor.swift */,
				FF6D821B2B914202001183A8 /* CompletionsEditorView.swift */,
				FF6D821D2B916053001183A8 /* UpsertCompletionView.swift */,
			);
			path = CompletionsEditor;
			sourceTree = "<group>";
		};
		FF9300D52B778F1A000859F4 /* Chat */ = {
			isa = PBXGroup;
			children = (
				FF9300D62B778F23000859F4 /* Components */,
				FF9300D32B778829000859F4 /* ChatView_macOS.swift */,
			);
			path = Chat;
			sourceTree = "<group>";
		};
		FF9300D62B778F23000859F4 /* Components */ = {
			isa = PBXGroup;
			children = (
				FF9300DF2B783945000859F4 /* InputFields_macOS.swift */,
				FF9300D92B781D97000859F4 /* ToolbarView_macOS.swift */,
			);
			path = Components;
			sourceTree = "<group>";
		};
		FFB0327B2B312F310066A9DB /* Recorder */ = {
			isa = PBXGroup;
			children = (
				FFB0327C2B312F3D0066A9DB /* RecordingView.swift */,
				FFBBF4832B34881B008D611C /* SpeechRecogniser.swift */,
			);
			path = Recorder;
			sourceTree = "<group>";
		};
		FFB56F442C0383A60020AFFD /* Voice */ = {
			isa = PBXGroup;
			children = (
				FFB56F452C0383B80020AFFD /* VoiceView.swift */,
				FFBB2C7A2C03D8AD00509204 /* Voice.swift */,
			);
			path = Voice;
			sourceTree = "<group>";
		};
		FFD57E2E2BF2901A003FEFF1 /* ChatMessages */ = {
			isa = PBXGroup;
			children = (
				FF10022F2B2482BA0011A4DC /* ChatMessageView.swift */,
				FFD57E312BF291B2003FEFF1 /* CodeBlockView.swift */,
				FFD57E2F2BF29145003FEFF1 /* MarkdownColours.swift */,
			);
			path = ChatMessages;
			sourceTree = "<group>";
		};
		FFEC32842B24779A003E5C04 = {
			isa = PBXGroup;
			children = (
				FFEC328F2B24779A003E5C04 /* Enchanted */,
				FFEC328E2B24779A003E5C04 /* Products */,
			);
			sourceTree = "<group>";
		};
		FFEC328E2B24779A003E5C04 /* Products */ = {
			isa = PBXGroup;
			children = (
				FFEC328D2B24779A003E5C04 /* Enchanted.app */,
			);
			name = Products;
			sourceTree = "<group>";
		};
		FFEC328F2B24779A003E5C04 /* Enchanted */ = {
			isa = PBXGroup;
			children = (
				FF9C92072BF0B464004C8275 /* EnchantedDebug.entitlements */,
				FFEC32982B24779B003E5C04 /* Enchanted.entitlements */,
				FFE2C8222B9A657A00BD82F3 /* Accessibility.plist */,
				FFBBF4822B348345008D611C /* Info.plist */,
				FFEC32962B24779B003E5C04 /* Assets.xcassets */,
				FFEC32A12B24783B003E5C04 /* Application */,
				FFEC32A22B247858003E5C04 /* Extensions */,
				FF464B142B80BB9C008E5130 /* Helpers */,
				FFEC32A32B24786D003E5C04 /* Models */,
				FFEC32992B24779B003E5C04 /* Preview Content */,
				FFEC32A42B247874003E5C04 /* Services */,
				FF1002422B25BAC50011A4DC /* Stores */,
				FF1002412B25BAAE0011A4DC /* SwiftData */,
				FFEC32A52B247879003E5C04 /* UI */,
			);
			path = Enchanted;
			sourceTree = "<group>";
		};
		FFEC32992B24779B003E5C04 /* Preview Content */ = {
			isa = PBXGroup;
			children = (
				FFEC329A2B24779B003E5C04 /* Preview Assets.xcassets */,
			);
			path = "Preview Content";
			sourceTree = "<group>";
		};
		FFEC32A12B24783B003E5C04 /* Application */ = {
			isa = PBXGroup;
			children = (
				FFEC32902B24779A003E5C04 /* EnchantedApp.swift */,
			);
			path = Application;
			sourceTree = "<group>";
		};
		FFEC32A22B247858003E5C04 /* Extensions */ = {
			isa = PBXGroup;
			children = (
				FF5FA0D52B35169400BC471D /* Binding+Extension.swift */,
				FF2F03432B79631800349855 /* Button+Extension.swift */,
				FF1002312B2483A20011A4DC /* Colours+Extension.swift */,
				FF1002672B2668790011A4DC /* Date+Extension.swift */,
				FF1002512B2609970011A4DC /* ModelContext+Extension.swift */,
				FFBBF48B2B35051D008D611C /* UIImage+Extension.swift */,
				FFBBF4872B34F9C8008D611C /* View+Extension.swift */,
				FFB21A862B7BD0BA00D148A4 /* KeyboardReadable+Extension.swift */,
				FF1BC3C62BA0757700A58043 /* SplashSyntaxHighlighter+Extension.swift */,
				FFBB2C7C2C047B6B00509204 /* Image+Extension.swift */,
				FF0611F22C04BEFD00443B33 /* AVSpeechSynthesisVoice+Extension.swift */,
			);
			path = Extensions;
			sourceTree = "<group>";
		};
		FFEC32A32B24786D003E5C04 /* Models */ = {
			isa = PBXGroup;
			children = (
				FF1002722B276EC10011A4DC /* AppColorScheme.swift */,
				FF10025D2B2648460011A4DC /* ConversationState.swift */,
				FF9C92092BF0B7B1004C8275 /* LanguageModel.swift */,
				FFEB9CA72BA04304004B1F3D /* NotificationMessage.swift */,
				FF7FBE4B2B78E384000901F7 /* SamplePrompt.swift */,
			);
			path = Models;
			sourceTree = "<group>";
		};
		FFEC32A42B247874003E5C04 /* Services */ = {
			isa = PBXGroup;
			children = (
				FF2F03412B795E0B00349855 /* Clipboard.swift */,
				FF0146CC2B3DADCA00A2A9F6 /* HapticsService.swift */,
				FF2F03482B796A6500349855 /* HotkeyService.swift */,
				FF10023D2B24F4900011A4DC /* OllamaService.swift */,
				FF10024F2B25C79F0011A4DC /* SwiftDataService.swift */,
				FF6B7B122B3EE7AC00E8FEA3 /* Throttler.swift */,
				FFCF00F02C03209A00590E79 /* SpeechService.swift */,
			);
			path = Services;
			sourceTree = "<group>";
		};
		FFEC32A52B247879003E5C04 /* UI */ = {
			isa = PBXGroup;
			children = (
				FF66A51F2B77789300FAAC1E /* iOS */,
				FF66A51E2B77788D00FAAC1E /* macOS */,
				FFEC32A72B247896003E5C04 /* Shared */,
				FF66A51C2B76949A00FAAC1E /* Helpers.swift */,
			);
			path = UI;
			sourceTree = "<group>";
		};
		FFEC32A72B247896003E5C04 /* Shared */ = {
			isa = PBXGroup;
			children = (
				FF38F8522B7AA9C400546B56 /* ApplicationEntry.swift */,
				FFEC32A82B24795A003E5C04 /* Chat */,
				FF15EF682B826BF400D4A541 /* Components */,
				FFB56F442C0383A60020AFFD /* Voice */,
				FF10026B2B2751630011A4DC /* Settings */,
				FF1002552B2624790011A4DC /* Sidebar */,
			);
			path = Shared;
			sourceTree = "<group>";
		};
		FFEC32A82B24795A003E5C04 /* Chat */ = {
			isa = PBXGroup;
			children = (
				FF10022C2B2481790011A4DC /* Components */,
				FF1002382B24BBF20011A4DC /* Chat.swift */,
			);
			path = Chat;
			sourceTree = "<group>";
		};
/* End PBXGroup section */

/* Begin PBXNativeTarget section */
		FFEC328C2B24779A003E5C04 /* Enchanted */ = {
			isa = PBXNativeTarget;
			buildConfigurationList = FFEC329E2B24779B003E5C04 /* Build configuration list for PBXNativeTarget "Enchanted" */;
			buildPhases = (
				FFEC32892B24779A003E5C04 /* Sources */,
				FFEC328A2B24779A003E5C04 /* Frameworks */,
				FFEC328B2B24779A003E5C04 /* Resources */,
			);
			buildRules = (
			);
			dependencies = (
			);
			name = Enchanted;
			packageProductDependencies = (
				FF1002652B2653EE0011A4DC /* ActivityIndicatorView */,
				FF464B122B8026DA008E5130 /* Vortex */,
				FFD5FAD42B8130CE0055AB51 /* OllamaKit */,
				FFFD00C82B94CB5E00392AE6 /* AsyncAlgorithms */,
				FF911DF02B98F08800915E94 /* WrappingHStack */,
				FF4A605C2BC3587800D7BD4F /* KeyboardShortcuts */,
				FF0611E92C04A11800443B33 /* Magnet */,
				FF0611F02C04A2FB00443B33 /* Splash */,
				FF79AEB52CE72ECE00EDE10C /* MarkdownUI */,
			);
			productName = Enchanted;
			productReference = FFEC328D2B24779A003E5C04 /* Enchanted.app */;
			productType = "com.apple.product-type.application";
		};
/* End PBXNativeTarget section */

/* Begin PBXProject section */
		FFEC32852B24779A003E5C04 /* Project object */ = {
			isa = PBXProject;
			attributes = {
				BuildIndependentTargetsInParallel = 1;
				LastSwiftUpdateCheck = 1500;
				LastUpgradeCheck = 1510;
				TargetAttributes = {
					FFEC328C2B24779A003E5C04 = {
						CreatedOnToolsVersion = 15.0.1;
					};
				};
			};
			buildConfigurationList = FFEC32882B24779A003E5C04 /* Build configuration list for PBXProject "Enchanted" */;
			compatibilityVersion = "Xcode 14.0";
			developmentRegion = en;
			hasScannedForEncodings = 0;
			knownRegions = (
				en,
				Base,
			);
			mainGroup = FFEC32842B24779A003E5C04;
			packageReferences = (
				FF1002642B2653EE0011A4DC /* XCRemoteSwiftPackageReference "ActivityIndicatorView" */,
				FF464B112B8026DA008E5130 /* XCRemoteSwiftPackageReference "Vortex" */,
				FFD5FAD32B8130CE0055AB51 /* XCRemoteSwiftPackageReference "OllamaKit" */,
				FFFD00C72B94CB5E00392AE6 /* XCRemoteSwiftPackageReference "swift-async-algorithms" */,
				FF911DEF2B98F08800915E94 /* XCRemoteSwiftPackageReference "WrappingHStack" */,
				FF4A605B2BC3587800D7BD4F /* XCRemoteSwiftPackageReference "KeyboardShortcuts" */,
				FF0611E82C04A11800443B33 /* XCRemoteSwiftPackageReference "Magnet" */,
				FF0611EF2C04A2FB00443B33 /* XCRemoteSwiftPackageReference "Splash" */,
				FF79AEB42CE72ECE00EDE10C /* XCRemoteSwiftPackageReference "swift-markdown-ui" */,
			);
			productRefGroup = FFEC328E2B24779A003E5C04 /* Products */;
			projectDirPath = "";
			projectRoot = "";
			targets = (
				FFEC328C2B24779A003E5C04 /* Enchanted */,
			);
		};
/* End PBXProject section */

/* Begin PBXResourcesBuildPhase section */
		FFEC328B2B24779A003E5C04 /* Resources */ = {
			isa = PBXResourcesBuildPhase;
			buildActionMask = 2147483647;
			files = (
				FFEC329B2B24779B003E5C04 /* Preview Assets.xcassets in Resources */,
				FFE2C8232B9A657A00BD82F3 /* Accessibility.plist in Resources */,
				FFEC32972B24779B003E5C04 /* Assets.xcassets in Resources */,
			);
			runOnlyForDeploymentPostprocessing = 0;
		};
/* End PBXResourcesBuildPhase section */

/* Begin PBXSourcesBuildPhase section */
		FFEC32892B24779A003E5C04 /* Sources */ = {
			isa = PBXSourcesBuildPhase;
			buildActionMask = 2147483647;
			files = (
				FF6D82252B9204F3001183A8 /* AsyncQueue.swift in Sources */,
				FF1002442B25BB730011A4DC /* ConversationStore.swift in Sources */,
				FF15EF6A2B826C0300D4A541 /* SimpleFloatingButton.swift in Sources */,
				FF24B30E2B66BE8500AB618F /* RunningBorder.swift in Sources */,
				FF1002602B26499B0011A4DC /* ConversationStatusView.swift in Sources */,
				FF10024C2B25BEA00011A4DC /* MessageSD.swift in Sources */,
				FFCF00F12C03209A00590E79 /* SpeechService.swift in Sources */,
				FF10023E2B24F4900011A4DC /* OllamaService.swift in Sources */,
				FFBBF48C2B35051D008D611C /* UIImage+Extension.swift in Sources */,
				FF1002302B2482BA0011A4DC /* ChatMessageView.swift in Sources */,
				FF1002322B2483A20011A4DC /* Colours+Extension.swift in Sources */,
				FFB21A872B7BD0BA00D148A4 /* KeyboardReadable+Extension.swift in Sources */,
				FF1BC3C72BA0757700A58043 /* SplashSyntaxHighlighter+Extension.swift in Sources */,
				FF33066E2B83CFEC007B33E5 /* KeyboardShortcuts.swift in Sources */,
				FF66A51D2B76949A00FAAC1E /* Helpers.swift in Sources */,
				FF10026A2B2731C60011A4DC /* ModelSelectorView.swift in Sources */,
				FF38F84F2B7A7B6700546B56 /* MenuBarControlView_macOS.swift in Sources */,
				FFB56F462C0383B80020AFFD /* VoiceView.swift in Sources */,
				FFBBF48A2B350283008D611C /* SelectedImageView.swift in Sources */,
				FFEC9BDF2B8131B900AFBA63 /* HotKeys.swift in Sources */,
				FF2F03492B796A6500349855 /* HotkeyService.swift in Sources */,
				FF9300E02B783945000859F4 /* InputFields_macOS.swift in Sources */,
				FF38F8562B7AB01E00546B56 /* FloatingPanel.swift in Sources */,
				FF0146CB2B3DA1DF00A2A9F6 /* Settings.swift in Sources */,
				FF0611F32C04BEFE00443B33 /* AVSpeechSynthesisVoice+Extension.swift in Sources */,
				FF38F8532B7AA9C400546B56 /* ApplicationEntry.swift in Sources */,
				FF6D82202B916CC3001183A8 /* CompletionsEditor.swift in Sources */,
				FF38F85C2B7ABC2C00546B56 /* PromptPanel.swift in Sources */,
				FFEC9BE12B81327B00AFBA63 /* DragAndDrop.swift in Sources */,
				FFB56F432C0353CF0020AFFD /* ReadingAloudView.swift in Sources */,
				FF2F03442B79631800349855 /* Button+Extension.swift in Sources */,
				FF1002682B2668790011A4DC /* Date+Extension.swift in Sources */,
				FF6D821E2B916053001183A8 /* UpsertCompletionView.swift in Sources */,
				FFBB2C7B2C03D8AD00509204 /* Voice.swift in Sources */,
				FF9300D42B778829000859F4 /* ChatView_macOS.swift in Sources */,
				FF38F8512B7A919C00546B56 /* MenuBarControl_macOS.swift in Sources */,
				FF38F85A2B7AB28300546B56 /* PromptPanelView.swift in Sources */,
				FF1002462B25BCE70011A4DC /* LanguageModelStore.swift in Sources */,
				FFEB9CA82BA04304004B1F3D /* NotificationMessage.swift in Sources */,
				FF10025C2B2625BE0011A4DC /* SidebarView.swift in Sources */,
				FF1002392B24BBF20011A4DC /* Chat.swift in Sources */,
				FFB0327D2B312F3D0066A9DB /* RecordingView.swift in Sources */,
				FFBB2C7D2C047B6C00509204 /* Image+Extension.swift in Sources */,
				FF6D82192B912804001183A8 /* CompletionButtonView.swift in Sources */,
				FF10024A2B25BE740011A4DC /* LanguageModelSD.swift in Sources */,
				FF6B7B132B3EE7AC00E8FEA3 /* Throttler.swift in Sources */,
				FF1002402B24F7320011A4DC /* SideBarMenuView.swift in Sources */,
				FF9300DE2B782A28000859F4 /* UnreachableAPIView.swift in Sources */,
				FF6D820D2B90C925001183A8 /* CompletionPanelView.swift in Sources */,
				FF6D821C2B914202001183A8 /* CompletionsEditorView.swift in Sources */,
				FFD57E302BF29145003FEFF1 /* MarkdownColours.swift in Sources */,
				FF9300DC2B7823B0000859F4 /* EmptyConversaitonView.swift in Sources */,
				FFBBF4882B34F9C8008D611C /* View+Extension.swift in Sources */,
				FFEC9BE32B81358800AFBA63 /* DeallocPrinter.swift in Sources */,
				FFBBF4842B34881B008D611C /* SpeechRecogniser.swift in Sources */,
				FF6D82122B911079001183A8 /* PanelCompletionsVM.swift in Sources */,
				FFEC32AA2B24797C003E5C04 /* ChatView_iOS.swift in Sources */,
				FF6D82152B911536001183A8 /* Accessibility.swift in Sources */,
				FF0146CD2B3DADCA00A2A9F6 /* HapticsService.swift in Sources */,
				FF5FA0D62B35169400BC471D /* Binding+Extension.swift in Sources */,
				FFE21C782B82353A00A69B9C /* SleepTest.swift in Sources */,
				FF1002502B25C79F0011A4DC /* SwiftDataService.swift in Sources */,
				FF7FBE4C2B78E384000901F7 /* SamplePrompt.swift in Sources */,
				FF38F8582B7AB1AD00546B56 /* PanelManager.swift in Sources */,
				FF6D82172B9122F9001183A8 /* CompletionInstructionSD.swift in Sources */,
				FF226A652BE2A0EC00CC91F1 /* SelectTextSheet.swift in Sources */,
				FF10025A2B2624C40011A4DC /* ConversationHistoryListView.swift in Sources */,
				FF10026D2B2751760011A4DC /* SettingsView.swift in Sources */,
				FF33066C2B83BB31007B33E5 /* SidebarButton.swift in Sources */,
				FFD57E322BF291B2003FEFF1 /* CodeBlockView.swift in Sources */,
				FF1002542B261D460011A4DC /* MessageListVIew.swift in Sources */,
				FF10024E2B25C2A70011A4DC /* ConversationSD.swift in Sources */,
				FF9C920C2BF0C088004C8275 /* OptionsMenuView.swift in Sources */,
				FF9C920A2BF0B7B1004C8275 /* LanguageModel.swift in Sources */,
				FFEC32912B24779A003E5C04 /* EnchantedApp.swift in Sources */,
				FF2F03422B795E0B00349855 /* Clipboard.swift in Sources */,
				3396E0762BD877D500213816 /* Menus.swift in Sources */,
				FF9300DA2B781D97000859F4 /* ToolbarView_macOS.swift in Sources */,
				FF1002522B2609980011A4DC /* ModelContext+Extension.swift in Sources */,
				FF1002752B278C170011A4DC /* AppStore.swift in Sources */,
				FF1002732B276EC10011A4DC /* AppColorScheme.swift in Sources */,
				FF10025E2B2648460011A4DC /* ConversationState.swift in Sources */,
				FFEC9BE72B813A8D00AFBA63 /* RemovableImage.swift in Sources */,
				FFFD00C22B92607800392AE6 /* CompletionsStore.swift in Sources */,
			);
			runOnlyForDeploymentPostprocessing = 0;
		};
/* End PBXSourcesBuildPhase section */

/* Begin XCBuildConfiguration section */
		FFEC329C2B24779B003E5C04 /* Debug */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				ALWAYS_SEARCH_USER_PATHS = NO;
				ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS = YES;
				CLANG_ANALYZER_NONNULL = YES;
				CLANG_ANALYZER_NUMBER_OBJECT_CONVERSION = YES_AGGRESSIVE;
				CLANG_CXX_LANGUAGE_STANDARD = "gnu++20";
				CLANG_ENABLE_MODULES = YES;
				CLANG_ENABLE_OBJC_ARC = YES;
				CLANG_ENABLE_OBJC_WEAK = YES;
				CLANG_WARN_BLOCK_CAPTURE_AUTORELEASING = YES;
				CLANG_WARN_BOOL_CONVERSION = YES;
				CLANG_WARN_COMMA = YES;
				CLANG_WARN_CONSTANT_CONVERSION = YES;
				CLANG_WARN_DEPRECATED_OBJC_IMPLEMENTATIONS = YES;
				CLANG_WARN_DIRECT_OBJC_ISA_USAGE = YES_ERROR;
				CLANG_WARN_DOCUMENTATION_COMMENTS = YES;
				CLANG_WARN_EMPTY_BODY = YES;
				CLANG_WARN_ENUM_CONVERSION = YES;
				CLANG_WARN_INFINITE_RECURSION = YES;
				CLANG_WARN_INT_CONVERSION = YES;
				CLANG_WARN_NON_LITERAL_NULL_CONVERSION = YES;
				CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF = YES;
				CLANG_WARN_OBJC_LITERAL_CONVERSION = YES;
				CLANG_WARN_OBJC_ROOT_CLASS = YES_ERROR;
				CLANG_WARN_QUOTED_INCLUDE_IN_FRAMEWORK_HEADER = YES;
				CLANG_WARN_RANGE_LOOP_ANALYSIS = YES;
				CLANG_WARN_STRICT_PROTOTYPES = YES;
				CLANG_WARN_SUSPICIOUS_MOVE = YES;
				CLANG_WARN_UNGUARDED_AVAILABILITY = YES_AGGRESSIVE;
				CLANG_WARN_UNREACHABLE_CODE = YES;
				CLANG_WARN__DUPLICATE_METHOD_MATCH = YES;
				COPY_PHASE_STRIP = NO;
				DEAD_CODE_STRIPPING = YES;
				DEBUG_INFORMATION_FORMAT = dwarf;
				ENABLE_STRICT_OBJC_MSGSEND = YES;
				ENABLE_TESTABILITY = YES;
				ENABLE_USER_SCRIPT_SANDBOXING = YES;
				GCC_C_LANGUAGE_STANDARD = gnu17;
				GCC_DYNAMIC_NO_PIC = NO;
				GCC_NO_COMMON_BLOCKS = YES;
				GCC_OPTIMIZATION_LEVEL = 0;
				GCC_PREPROCESSOR_DEFINITIONS = (
					"DEBUG=1",
					"$(inherited)",
				);
				GCC_WARN_64_TO_32_BIT_CONVERSION = YES;
				GCC_WARN_ABOUT_RETURN_TYPE = YES_ERROR;
				GCC_WARN_UNDECLARED_SELECTOR = YES;
				GCC_WARN_UNINITIALIZED_AUTOS = YES_AGGRESSIVE;
				GCC_WARN_UNUSED_FUNCTION = YES;
				GCC_WARN_UNUSED_VARIABLE = YES;
				LOCALIZATION_PREFERS_STRING_CATALOGS = YES;
				MTL_ENABLE_DEBUG_INFO = INCLUDE_SOURCE;
				MTL_FAST_MATH = YES;
				ONLY_ACTIVE_ARCH = YES;
				SWIFT_ACTIVE_COMPILATION_CONDITIONS = "DEBUG $(inherited)";
				SWIFT_OPTIMIZATION_LEVEL = "-Onone";
			};
			name = Debug;
		};
		FFEC329D2B24779B003E5C04 /* Release */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				ALWAYS_SEARCH_USER_PATHS = NO;
				ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS = YES;
				CLANG_ANALYZER_NONNULL = YES;
				CLANG_ANALYZER_NUMBER_OBJECT_CONVERSION = YES_AGGRESSIVE;
				CLANG_CXX_LANGUAGE_STANDARD = "gnu++20";
				CLANG_ENABLE_MODULES = YES;
				CLANG_ENABLE_OBJC_ARC = YES;
				CLANG_ENABLE_OBJC_WEAK = YES;
				CLANG_WARN_BLOCK_CAPTURE_AUTORELEASING = YES;
				CLANG_WARN_BOOL_CONVERSION = YES;
				CLANG_WARN_COMMA = YES;
				CLANG_WARN_CONSTANT_CONVERSION = YES;
				CLANG_WARN_DEPRECATED_OBJC_IMPLEMENTATIONS = YES;
				CLANG_WARN_DIRECT_OBJC_ISA_USAGE = YES_ERROR;
				CLANG_WARN_DOCUMENTATION_COMMENTS = YES;
				CLANG_WARN_EMPTY_BODY = YES;
				CLANG_WARN_ENUM_CONVERSION = YES;
				CLANG_WARN_INFINITE_RECURSION = YES;
				CLANG_WARN_INT_CONVERSION = YES;
				CLANG_WARN_NON_LITERAL_NULL_CONVERSION = YES;
				CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF = YES;
				CLANG_WARN_OBJC_LITERAL_CONVERSION = YES;
				CLANG_WARN_OBJC_ROOT_CLASS = YES_ERROR;
				CLANG_WARN_QUOTED_INCLUDE_IN_FRAMEWORK_HEADER = YES;
				CLANG_WARN_RANGE_LOOP_ANALYSIS = YES;
				CLANG_WARN_STRICT_PROTOTYPES = YES;
				CLANG_WARN_SUSPICIOUS_MOVE = YES;
				CLANG_WARN_UNGUARDED_AVAILABILITY = YES_AGGRESSIVE;
				CLANG_WARN_UNREACHABLE_CODE = YES;
				CLANG_WARN__DUPLICATE_METHOD_MATCH = YES;
				COPY_PHASE_STRIP = NO;
				DEAD_CODE_STRIPPING = YES;
				DEBUG_INFORMATION_FORMAT = "dwarf-with-dsym";
				ENABLE_NS_ASSERTIONS = NO;
				ENABLE_STRICT_OBJC_MSGSEND = YES;
				ENABLE_USER_SCRIPT_SANDBOXING = YES;
				GCC_C_LANGUAGE_STANDARD = gnu17;
				GCC_NO_COMMON_BLOCKS = YES;
				GCC_WARN_64_TO_32_BIT_CONVERSION = YES;
				GCC_WARN_ABOUT_RETURN_TYPE = YES_ERROR;
				GCC_WARN_UNDECLARED_SELECTOR = YES;
				GCC_WARN_UNINITIALIZED_AUTOS = YES_AGGRESSIVE;
				GCC_WARN_UNUSED_FUNCTION = YES;
				GCC_WARN_UNUSED_VARIABLE = YES;
				LOCALIZATION_PREFERS_STRING_CATALOGS = YES;
				MTL_ENABLE_DEBUG_INFO = NO;
				MTL_FAST_MATH = YES;
				SWIFT_COMPILATION_MODE = wholemodule;
			};
			name = Release;
		};
		FFEC329F2B24779B003E5C04 /* Debug */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				ASSETCATALOG_COMPILER_APPICON_NAME = AppIcon;
				ASSETCATALOG_COMPILER_GLOBAL_ACCENT_COLOR_NAME = AccentColor;
				ASSETCATALOG_COMPILER_INCLUDE_ALL_APPICON_ASSETS = YES;
				CODE_SIGN_ENTITLEMENTS = Enchanted/EnchantedDebug.entitlements;
				CODE_SIGN_IDENTITY = "Apple Development";
				"CODE_SIGN_IDENTITY[sdk=macosx*]" = "Apple Development";
				CODE_SIGN_STYLE = Automatic;
				CURRENT_PROJECT_VERSION = 51;
				DEAD_CODE_STRIPPING = YES;
				DEVELOPMENT_ASSET_PATHS = "\"Enchanted/Preview Content\"";
				DEVELOPMENT_TEAM = JDDZ55DT74;
				ENABLE_HARDENED_RUNTIME = YES;
				"ENABLE_HARDENED_RUNTIME[sdk=macosx*]" = YES;
				ENABLE_PREVIEWS = YES;
				GENERATE_INFOPLIST_FILE = YES;
				INFOPLIST_FILE = Enchanted/Info.plist;
				INFOPLIST_KEY_CFBundleDisplayName = "Enchanted by Freysa";
				INFOPLIST_KEY_LSApplicationCategoryType = "public.app-category.developer-tools";
				INFOPLIST_KEY_NSMicrophoneUsageDescription = "Audio is recorded to transcribe text. Recording is discarded after transcription.";
				INFOPLIST_KEY_NSSpeechRecognitionUsageDescription = "You can view a text transcription of your meeting in the app.";
				"INFOPLIST_KEY_UIApplicationSceneManifest_Generation[sdk=iphoneos*]" = YES;
				"INFOPLIST_KEY_UIApplicationSceneManifest_Generation[sdk=iphonesimulator*]" = YES;
				"INFOPLIST_KEY_UIApplicationSupportsIndirectInputEvents[sdk=iphoneos*]" = YES;
				"INFOPLIST_KEY_UIApplicationSupportsIndirectInputEvents[sdk=iphonesimulator*]" = YES;
				"INFOPLIST_KEY_UILaunchScreen_Generation[sdk=iphoneos*]" = YES;
				"INFOPLIST_KEY_UILaunchScreen_Generation[sdk=iphonesimulator*]" = YES;
				"INFOPLIST_KEY_UIStatusBarStyle[sdk=iphoneos*]" = UIStatusBarStyleDefault;
				"INFOPLIST_KEY_UIStatusBarStyle[sdk=iphonesimulator*]" = UIStatusBarStyleDefault;
				INFOPLIST_KEY_UISupportedInterfaceOrientations_iPad = "UIInterfaceOrientationPortrait UIInterfaceOrientationPortraitUpsideDown UIInterfaceOrientationLandscapeLeft UIInterfaceOrientationLandscapeRight";
				INFOPLIST_KEY_UISupportedInterfaceOrientations_iPhone = "UIInterfaceOrientationPortrait UIInterfaceOrientationLandscapeLeft UIInterfaceOrientationLandscapeRight";
				IPHONEOS_DEPLOYMENT_TARGET = 17.0;
				LD_RUNPATH_SEARCH_PATHS = "@executable_path/Frameworks";
				"LD_RUNPATH_SEARCH_PATHS[sdk=macosx*]" = "@executable_path/../Frameworks";
				MACOSX_DEPLOYMENT_TARGET = 14.0;
				MARKETING_VERSION = 1.8.1;
				PRODUCT_BUNDLE_IDENTIFIER = subj.Enchanted;
				PRODUCT_NAME = "$(TARGET_NAME)";
				PROVISIONING_PROFILE_SPECIFIER = "";
				SDKROOT = auto;
				SUPPORTED_PLATFORMS = "iphoneos iphonesimulator macosx xros xrsimulator";
				SUPPORTS_MACCATALYST = NO;
				SUPPORTS_XR_DESIGNED_FOR_IPHONE_IPAD = NO;
				SWIFT_EMIT_LOC_STRINGS = YES;
				SWIFT_STRICT_CONCURRENCY = complete;
				SWIFT_VERSION = 5.0;
				TARGETED_DEVICE_FAMILY = "1,2,7";
				XROS_DEPLOYMENT_TARGET = 1.1;
			};
			name = Debug;
		};
		FFEC32A02B24779B003E5C04 /* Release */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				ASSETCATALOG_COMPILER_APPICON_NAME = AppIcon;
				ASSETCATALOG_COMPILER_GLOBAL_ACCENT_COLOR_NAME = AccentColor;
				ASSETCATALOG_COMPILER_INCLUDE_ALL_APPICON_ASSETS = YES;
				CODE_SIGN_ENTITLEMENTS = Enchanted/Enchanted.entitlements;
				CODE_SIGN_IDENTITY = "Apple Development";
				CODE_SIGN_STYLE = Automatic;
				CURRENT_PROJECT_VERSION = 51;
				DEAD_CODE_STRIPPING = YES;
				DEVELOPMENT_ASSET_PATHS = "\"Enchanted/Preview Content\"";
				DEVELOPMENT_TEAM = JDDZ55DT74;
				ENABLE_HARDENED_RUNTIME = YES;
				"ENABLE_HARDENED_RUNTIME[sdk=macosx*]" = YES;
				ENABLE_PREVIEWS = YES;
				GENERATE_INFOPLIST_FILE = YES;
				INFOPLIST_FILE = Enchanted/Info.plist;
				INFOPLIST_KEY_CFBundleDisplayName = "Enchanted by Freysa";
				INFOPLIST_KEY_LSApplicationCategoryType = "public.app-category.developer-tools";
				INFOPLIST_KEY_NSMicrophoneUsageDescription = "Audio is recorded to transcribe text. Recording is discarded after transcription.";
				INFOPLIST_KEY_NSSpeechRecognitionUsageDescription = "You can view a text transcription of your meeting in the app.";
				"INFOPLIST_KEY_UIApplicationSceneManifest_Generation[sdk=iphoneos*]" = YES;
				"INFOPLIST_KEY_UIApplicationSceneManifest_Generation[sdk=iphonesimulator*]" = YES;
				"INFOPLIST_KEY_UIApplicationSupportsIndirectInputEvents[sdk=iphoneos*]" = YES;
				"INFOPLIST_KEY_UIApplicationSupportsIndirectInputEvents[sdk=iphonesimulator*]" = YES;
				"INFOPLIST_KEY_UILaunchScreen_Generation[sdk=iphoneos*]" = YES;
				"INFOPLIST_KEY_UILaunchScreen_Generation[sdk=iphonesimulator*]" = YES;
				"INFOPLIST_KEY_UIStatusBarStyle[sdk=iphoneos*]" = UIStatusBarStyleDefault;
				"INFOPLIST_KEY_UIStatusBarStyle[sdk=iphonesimulator*]" = UIStatusBarStyleDefault;
				INFOPLIST_KEY_UISupportedInterfaceOrientations_iPad = "UIInterfaceOrientationPortrait UIInterfaceOrientationPortraitUpsideDown UIInterfaceOrientationLandscapeLeft UIInterfaceOrientationLandscapeRight";
				INFOPLIST_KEY_UISupportedInterfaceOrientations_iPhone = "UIInterfaceOrientationPortrait UIInterfaceOrientationLandscapeLeft UIInterfaceOrientationLandscapeRight";
				IPHONEOS_DEPLOYMENT_TARGET = 17.0;
				LD_RUNPATH_SEARCH_PATHS = "@executable_path/Frameworks";
				"LD_RUNPATH_SEARCH_PATHS[sdk=macosx*]" = "@executable_path/../Frameworks";
				MACOSX_DEPLOYMENT_TARGET = 14.0;
				MARKETING_VERSION = 1.8.1;
				PRODUCT_BUNDLE_IDENTIFIER = subj.Enchanted;
				PRODUCT_NAME = "$(TARGET_NAME)";
				PROVISIONING_PROFILE_SPECIFIER = "";
				SDKROOT = auto;
				SUPPORTED_PLATFORMS = "iphoneos iphonesimulator macosx xros xrsimulator";
				SUPPORTS_MACCATALYST = NO;
				SUPPORTS_XR_DESIGNED_FOR_IPHONE_IPAD = NO;
				SWIFT_EMIT_LOC_STRINGS = YES;
				SWIFT_STRICT_CONCURRENCY = complete;
				SWIFT_VERSION = 5.0;
				TARGETED_DEVICE_FAMILY = "1,2,7";
				XROS_DEPLOYMENT_TARGET = 1.1;
			};
			name = Release;
		};
/* End XCBuildConfiguration section */

/* Begin XCConfigurationList section */
		FFEC32882B24779A003E5C04 /* Build configuration list for PBXProject "Enchanted" */ = {
			isa = XCConfigurationList;
			buildConfigurations = (
				FFEC329C2B24779B003E5C04 /* Debug */,
				FFEC329D2B24779B003E5C04 /* Release */,
			);
			defaultConfigurationIsVisible = 0;
			defaultConfigurationName = Release;
		};
		FFEC329E2B24779B003E5C04 /* Build configuration list for PBXNativeTarget "Enchanted" */ = {
			isa = XCConfigurationList;
			buildConfigurations = (
				FFEC329F2B24779B003E5C04 /* Debug */,
				FFEC32A02B24779B003E5C04 /* Release */,
			);
			defaultConfigurationIsVisible = 0;
			defaultConfigurationName = Release;
		};
/* End XCConfigurationList section */

/* Begin XCRemoteSwiftPackageReference section */
		FF0611E82C04A11800443B33 /* XCRemoteSwiftPackageReference "Magnet" */ = {
			isa = XCRemoteSwiftPackageReference;
			repositoryURL = "https://github.com/AugustDev/Magnet";
			requirement = {
				branch = master;
				kind = branch;
			};
		};
		FF0611EF2C04A2FB00443B33 /* XCRemoteSwiftPackageReference "Splash" */ = {
			isa = XCRemoteSwiftPackageReference;
			repositoryURL = "https://github.com/AugustDev/Splash";
			requirement = {
				branch = master;
				kind = branch;
			};
		};
		FF1002642B2653EE0011A4DC /* XCRemoteSwiftPackageReference "ActivityIndicatorView" */ = {
			isa = XCRemoteSwiftPackageReference;
			repositoryURL = "https://github.com/exyte/ActivityIndicatorView.git";
			requirement = {
				kind = upToNextMajorVersion;
				minimumVersion = 1.1.1;
			};
		};
		FF464B112B8026DA008E5130 /* XCRemoteSwiftPackageReference "Vortex" */ = {
			isa = XCRemoteSwiftPackageReference;
			repositoryURL = "https://github.com/twostraws/Vortex";
			requirement = {
				kind = upToNextMajorVersion;
				minimumVersion = 1.0.0;
			};
		};
		FF4A605B2BC3587800D7BD4F /* XCRemoteSwiftPackageReference "KeyboardShortcuts" */ = {
			isa = XCRemoteSwiftPackageReference;
			repositoryURL = "https://github.com/sindresorhus/KeyboardShortcuts";
			requirement = {
				kind = upToNextMajorVersion;
				minimumVersion = 2.0.0;
			};
		};
		FF79AEB42CE72ECE00EDE10C /* XCRemoteSwiftPackageReference "swift-markdown-ui" */ = {
			isa = XCRemoteSwiftPackageReference;
			repositoryURL = "https://github.com/gonzalezreal/swift-markdown-ui";
			requirement = {
				kind = upToNextMajorVersion;
				minimumVersion = 2.4.1;
			};
		};
		FF911DEF2B98F08800915E94 /* XCRemoteSwiftPackageReference "WrappingHStack" */ = {
			isa = XCRemoteSwiftPackageReference;
			repositoryURL = "https://github.com/ksemianov/WrappingHStack";
			requirement = {
				kind = upToNextMajorVersion;
				minimumVersion = 0.2.0;
			};
		};
		FFD5FAD32B8130CE0055AB51 /* XCRemoteSwiftPackageReference "OllamaKit" */ = {
			isa = XCRemoteSwiftPackageReference;
			repositoryURL = "https://github.com/AugustDev/OllamaKit";
			requirement = {
				branch = main;
				kind = branch;
			};
		};
		FFFD00C72B94CB5E00392AE6 /* XCRemoteSwiftPackageReference "swift-async-algorithms" */ = {
			isa = XCRemoteSwiftPackageReference;
			repositoryURL = "https://github.com/apple/swift-async-algorithms.git";
			requirement = {
				kind = upToNextMajorVersion;
				minimumVersion = 1.0.0;
			};
		};
/* End XCRemoteSwiftPackageReference section */

/* Begin XCSwiftPackageProductDependency section */
		FF0611E92C04A11800443B33 /* Magnet */ = {
			isa = XCSwiftPackageProductDependency;
			package = FF0611E82C04A11800443B33 /* XCRemoteSwiftPackageReference "Magnet" */;
			productName = Magnet;
		};
		FF0611F02C04A2FB00443B33 /* Splash */ = {
			isa = XCSwiftPackageProductDependency;
			package = FF0611EF2C04A2FB00443B33 /* XCRemoteSwiftPackageReference "Splash" */;
			productName = Splash;
		};
		FF1002652B2653EE0011A4DC /* ActivityIndicatorView */ = {
			isa = XCSwiftPackageProductDependency;
			package = FF1002642B2653EE0011A4DC /* XCRemoteSwiftPackageReference "ActivityIndicatorView" */;
			productName = ActivityIndicatorView;
		};
		FF464B122B8026DA008E5130 /* Vortex */ = {
			isa = XCSwiftPackageProductDependency;
			package = FF464B112B8026DA008E5130 /* XCRemoteSwiftPackageReference "Vortex" */;
			productName = Vortex;
		};
		FF4A605C2BC3587800D7BD4F /* KeyboardShortcuts */ = {
			isa = XCSwiftPackageProductDependency;
			package = FF4A605B2BC3587800D7BD4F /* XCRemoteSwiftPackageReference "KeyboardShortcuts" */;
			productName = KeyboardShortcuts;
		};
		FF79AEB52CE72ECE00EDE10C /* MarkdownUI */ = {
			isa = XCSwiftPackageProductDependency;
			package = FF79AEB42CE72ECE00EDE10C /* XCRemoteSwiftPackageReference "swift-markdown-ui" */;
			productName = MarkdownUI;
		};
		FF911DF02B98F08800915E94 /* WrappingHStack */ = {
			isa = XCSwiftPackageProductDependency;
			package = FF911DEF2B98F08800915E94 /* XCRemoteSwiftPackageReference "WrappingHStack" */;
			productName = WrappingHStack;
		};
		FFD5FAD42B8130CE0055AB51 /* OllamaKit */ = {
			isa = XCSwiftPackageProductDependency;
			package = FFD5FAD32B8130CE0055AB51 /* XCRemoteSwiftPackageReference "OllamaKit" */;
			productName = OllamaKit;
		};
		FFFD00C82B94CB5E00392AE6 /* AsyncAlgorithms */ = {
			isa = XCSwiftPackageProductDependency;
			package = FFFD00C72B94CB5E00392AE6 /* XCRemoteSwiftPackageReference "swift-async-algorithms" */;
			productName = AsyncAlgorithms;
		};
/* End XCSwiftPackageProductDependency section */
	};
	rootObject = FFEC32852B24779A003E5C04 /* Project object */;
}



================================================
FILE: Enchanted.xcodeproj/project.xcworkspace/contents.xcworkspacedata
================================================
<?xml version="1.0" encoding="UTF-8"?>
<Workspace
   version = "1.0">
   <FileRef
      location = "self:">
   </FileRef>
</Workspace>



================================================
FILE: Enchanted.xcodeproj/project.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist
================================================
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>IDEDidComputeMac32BitWarning</key>
	<true/>
</dict>
</plist>



================================================
FILE: Enchanted.xcodeproj/project.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings
================================================
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict/>
</plist>



================================================
FILE: Enchanted.xcodeproj/project.xcworkspace/xcshareddata/swiftpm/Package.resolved
================================================
{
  "originHash" : "3fe20c6c704d04e2f924250b1ce019f513915d235cdd9aedc57f51a0a1a94763",
  "pins" : [
    {
      "identity" : "activityindicatorview",
      "kind" : "remoteSourceControl",
      "location" : "https://github.com/exyte/ActivityIndicatorView.git",
      "state" : {
        "revision" : "9970fd0bb7a05dad0b6566ae1f56937716686b24",
        "version" : "1.1.1"
      }
    },
    {
      "identity" : "alamofire",
      "kind" : "remoteSourceControl",
      "location" : "https://github.com/Alamofire/Alamofire.git",
      "state" : {
        "revision" : "f455c2975872ccd2d9c81594c658af65716e9b9a",
        "version" : "5.9.1"
      }
    },
    {
      "identity" : "keyboardshortcuts",
      "kind" : "remoteSourceControl",
      "location" : "https://github.com/sindresorhus/KeyboardShortcuts",
      "state" : {
        "revision" : "2e5f15581fefb821d4b366e57d817be8bf12aa58",
        "version" : "2.0.1"
      }
    },
    {
      "identity" : "magnet",
      "kind" : "remoteSourceControl",
      "location" : "https://github.com/AugustDev/Magnet",
      "state" : {
        "branch" : "master",
        "revision" : "4865f86d9baa24684dedacd6677beb2d8b30d88e"
      }
    },
    {
      "identity" : "networkimage",
      "kind" : "remoteSourceControl",
      "location" : "https://github.com/gonzalezreal/NetworkImage",
      "state" : {
        "revision" : "2849f5323265386e200484b0d0f896e73c3411b9",
        "version" : "6.0.1"
      }
    },
    {
      "identity" : "ollamakit",
      "kind" : "remoteSourceControl",
      "location" : "https://github.com/AugustDev/OllamaKit",
      "state" : {
        "branch" : "main",
        "revision" : "0079411b4568dbc821c9e2589345d3f9b9538af4"
      }
    },
    {
      "identity" : "sauce",
      "kind" : "remoteSourceControl",
      "location" : "https://github.com/Clipy/Sauce",
      "state" : {
        "revision" : "df657bc1beba23ffd580953f183cd756b5bcd514",
        "version" : "2.4.1"
      }
    },
    {
      "identity" : "splash",
      "kind" : "remoteSourceControl",
      "location" : "https://github.com/AugustDev/Splash",
      "state" : {
        "branch" : "master",
        "revision" : "c31eba0866102be9be29391dac641ecb46795702"
      }
    },
    {
      "identity" : "swift-async-algorithms",
      "kind" : "remoteSourceControl",
      "location" : "https://github.com/apple/swift-async-algorithms.git",
      "state" : {
        "revision" : "da4e36f86544cdf733a40d59b3a2267e3a7bbf36",
        "version" : "1.0.0"
      }
    },
    {
      "identity" : "swift-cmark",
      "kind" : "remoteSourceControl",
      "location" : "https://github.com/swiftlang/swift-cmark",
      "state" : {
        "revision" : "3ccff77b2dc5b96b77db3da0d68d28068593fa53",
        "version" : "0.5.0"
      }
    },
    {
      "identity" : "swift-collections",
      "kind" : "remoteSourceControl",
      "location" : "https://github.com/apple/swift-collections.git",
      "state" : {
        "revision" : "94cf62b3ba8d4bed62680a282d4c25f9c63c2efb",
        "version" : "1.1.0"
      }
    },
    {
      "identity" : "swift-markdown-ui",
      "kind" : "remoteSourceControl",
      "location" : "https://github.com/gonzalezreal/swift-markdown-ui",
      "state" : {
        "revision" : "5f613358148239d0292c0cef674a3c2314737f9e",
        "version" : "2.4.1"
      }
    },
    {
      "identity" : "vortex",
      "kind" : "remoteSourceControl",
      "location" : "https://github.com/twostraws/Vortex",
      "state" : {
        "revision" : "bb48b128d3c13c68c68e83833c622eec9f6c701f",
        "version" : "1.0.1"
      }
    },
    {
      "identity" : "wrappinghstack",
      "kind" : "remoteSourceControl",
      "location" : "https://github.com/ksemianov/WrappingHStack",
      "state" : {
        "revision" : "3300f68b6bf5f8a75ee7ca8a40f136a558053d10",
        "version" : "0.2.0"
      }
    }
  ],
  "version" : 3
}



================================================
FILE: Enchanted.xcodeproj/project.xcworkspace/xcuserdata/wpc.xcuserdatad/WorkspaceSettings.xcsettings
================================================
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>BuildLocationStyle</key>
	<string>UseAppPreferences</string>
	<key>CustomBuildLocationType</key>
	<string>RelativeToDerivedData</string>
	<key>DerivedDataLocationStyle</key>
	<string>Default</string>
	<key>ShowSharedSchemesAutomaticallyEnabled</key>
	<true/>
</dict>
</plist>



================================================
FILE: Enchanted.xcodeproj/xcshareddata/xcschemes/Enchanted.xcscheme
================================================
<?xml version="1.0" encoding="UTF-8"?>
<Scheme
   LastUpgradeVersion = "1510"
   version = "1.7">
   <BuildAction
      parallelizeBuildables = "YES"
      buildImplicitDependencies = "YES">
      <BuildActionEntries>
         <BuildActionEntry
            buildForTesting = "YES"
            buildForRunning = "YES"
            buildForProfiling = "YES"
            buildForArchiving = "YES"
            buildForAnalyzing = "YES">
            <BuildableReference
               BuildableIdentifier = "primary"
               BlueprintIdentifier = "FFEC328C2B24779A003E5C04"
               BuildableName = "Enchanted.app"
               BlueprintName = "Enchanted"
               ReferencedContainer = "container:Enchanted.xcodeproj">
            </BuildableReference>
         </BuildActionEntry>
      </BuildActionEntries>
   </BuildAction>
   <TestAction
      buildConfiguration = "Debug"
      selectedDebuggerIdentifier = "Xcode.DebuggerFoundation.Debugger.LLDB"
      selectedLauncherIdentifier = "Xcode.DebuggerFoundation.Launcher.LLDB"
      shouldUseLaunchSchemeArgsEnv = "YES"
      shouldAutocreateTestPlan = "YES">
   </TestAction>
   <LaunchAction
      buildConfiguration = "Debug"
      selectedDebuggerIdentifier = "Xcode.DebuggerFoundation.Debugger.LLDB"
      selectedLauncherIdentifier = "Xcode.DebuggerFoundation.Launcher.LLDB"
      launchStyle = "0"
      useCustomWorkingDirectory = "NO"
      ignoresPersistentStateOnLaunch = "NO"
      debugDocumentVersioning = "YES"
      debugServiceExtension = "internal"
      allowLocationSimulation = "YES">
      <BuildableProductRunnable
         runnableDebuggingMode = "0">
         <BuildableReference
            BuildableIdentifier = "primary"
            BlueprintIdentifier = "FFEC328C2B24779A003E5C04"
            BuildableName = "Enchanted.app"
            BlueprintName = "Enchanted"
            ReferencedContainer = "container:Enchanted.xcodeproj">
         </BuildableReference>
      </BuildableProductRunnable>
      <CommandLineArguments>
         <CommandLineArgument
            argument = "-com.apple.CoreData.SQLDebug 1"
            isEnabled = "NO">
         </CommandLineArgument>
         <CommandLineArgument
            argument = "-com.apple.CoreData.ConcurrencyDebug 0"
            isEnabled = "NO">
         </CommandLineArgument>
      </CommandLineArguments>
   </LaunchAction>
   <ProfileAction
      buildConfiguration = "Release"
      shouldUseLaunchSchemeArgsEnv = "YES"
      savedToolIdentifier = ""
      useCustomWorkingDirectory = "NO"
      debugDocumentVersioning = "YES">
      <BuildableProductRunnable
         runnableDebuggingMode = "0">
         <BuildableReference
            BuildableIdentifier = "primary"
            BlueprintIdentifier = "FFEC328C2B24779A003E5C04"
            BuildableName = "Enchanted.app"
            BlueprintName = "Enchanted"
            ReferencedContainer = "container:Enchanted.xcodeproj">
         </BuildableReference>
      </BuildableProductRunnable>
   </ProfileAction>
   <AnalyzeAction
      buildConfiguration = "Debug">
   </AnalyzeAction>
   <ArchiveAction
      buildConfiguration = "Release"
      revealArchiveInOrganizer = "YES">
   </ArchiveAction>
</Scheme>



================================================
FILE: Enchanted.xcodeproj/xcuserdata/wpc.xcuserdatad/xcdebugger/Breakpoints_v2.xcbkptlist
================================================
<?xml version="1.0" encoding="UTF-8"?>
<Bucket
   uuid = "F86A12CB-2FB3-442A-8D63-13A618A57A08"
   type = "1"
   version = "2.0">
</Bucket>



================================================
FILE: Enchanted.xcodeproj/xcuserdata/wpc.xcuserdatad/xcschemes/xcschememanagement.plist
================================================
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>SchemeUserState</key>
	<dict>
		<key>Enchanted.xcscheme_^#shared#^_</key>
		<dict>
			<key>orderHint</key>
			<integer>1</integer>
		</dict>
	</dict>
	<key>SuppressBuildableAutocreation</key>
```



