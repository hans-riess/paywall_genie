# Welcome

If you are like me, you find it annoying to get past payways by having to search through your institutional library. At least for me, you can change your url in order to automatically do so. This Apple Script (Mac OS) does this automatically in Safari. I programmed a keystroke to replace my url.

For example, if I want to download a .pdf at the address https://ieeexplore.ieee.org/abstract/document/9992539 I can execute my Apple Script with my user-defined keystroke to change the address to https://ieeexplore-ieee-org.proxy.lib.duke.edu/abstract/document/9992539/ in order for me to get through the pay-wall.

# Instructions

1. In the file ```replace_proxy.applescript```, Replace ```".proxy.lib.duke.edu/"``` (Line 22) with whatever proxy address your institution uses.
2. In Automator, create a Quick Action that executes the Apple Script.
3. Create a keyboard shortcut for the workflow (https://support.apple.com/guide/mac-help/create-keyboard-shortcuts-for-apps-mchlp2271/mac).
