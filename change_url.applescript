tell application "Safari"
    set currentTab to current tab of window 1
    set currentURL to URL of currentTab

    -- Modify the domain component of the URL
    set AppleScript's text item delimiters to "/"
    set urlComponents to text items of currentURL
    set domainComponent to text item 3 of urlComponents
    set modifiedDomain to my replace_chars(domainComponent, ".", "-")

    -- Extract the remaining portion of the URL after the domain component
    set remainingURLComponents to items 4 thru -1 of urlComponents
    set modifiedURLComponents to {}

    -- Add a forward slash ("/") after each item in the remainingURLComponents
    repeat with i from 1 to count of remainingURLComponents
        set currentItem to item i of remainingURLComponents
        set end of modifiedURLComponents to currentItem & "/"
    end repeat

    -- Construct the modified URL with forward slashes ("/")
    set modifiedURL to "https://" & modifiedDomain & ".proxy.lib.duke.edu/" & modifiedURLComponents as text

    -- Open the modified URL in the current tab
    set URL of currentTab to modifiedURL
end tell

on replace_chars(sourceText, findText, replaceText)
    set AppleScript's text item delimiters to findText
    set textItems to text items of sourceText
    set AppleScript's text item delimiters to replaceText
    set replacedText to textItems as text
    set AppleScript's text item delimiters to ""
    return replacedText
end replace_chars


