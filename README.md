# Paywalls Suck

If you are like me, you find it annoying to get past paywalls by searching directly on your library's website. This Apple Script (Mac OS) does this automatically in Safari by simply changing the url. It will direct you to a login page for your institution, then direct you immediately back to the article. Now, you can download the .pdf withough scrolling through the list of insitutions suscribed to the journal or opening a new tab and loggining into your library account manually.

For example, if I want to download a .pdf at the address https://ieeexplore.ieee.org/abstract/document/9992539 I can execute my Apple Script with my user-defined keyboard shortcut to change the address to https://ieeexplore-ieee-org.proxy.lib.duke.edu/abstract/document/9992539/ in order for me to get through the paywall.

## Instructions

1. In the file ```replace_proxy.applescript```, Replace ```".proxy.lib.duke.edu/"``` (Line 22) with whatever proxy address your institution uses.
2. In Automator, create a Quick Action that executes the Apple Script.
3. Create a keyboard shortcut for the workflow (https://support.apple.com/guide/mac-help/create-keyboard-shortcuts-for-apps-mchlp2271/mac).
