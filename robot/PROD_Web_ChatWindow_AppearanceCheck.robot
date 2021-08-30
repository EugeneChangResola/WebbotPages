*** Settings ***
Library    SeleniumLibrary
# Library    Selenium2Library

# Test environment
# Env : prod
# cid : 1906 (Scenario v2)
# app : Web_auto_test

*** Test Cases ***
# New Chat window section:
Chat Window Appearance - New chat window and N seconds
    Open Browser    https://eugenechangresola.github.io/WebbotPages/PROD/SYNALIO/auto/APPEARANCE/NSeconds.html    Chrome
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    #New style Chat window element
    Element Should Not Be Visible    css=div.window-box
    Sleep    12
    Element Should Be Visible    css=div.window-box
    Element Should Not Be Visible    css=#synalio-chat-message > div > div.chat-block
    Sleep    6
    Element Should Be Visible    css=#synalio-chat-message > div > div.chat-block
    Close Browser

Chat Window Appearance - New chat window and page loaded
    Open Browser    https://eugenechangresola.github.io/WebbotPages/PROD/SYNALIO/auto/APPEARANCE/pageload.html    Chrome
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Sleep    3
    #New style Chat window element
    Element Should Be Visible    css=div.window-box
    Close Browser

Chat Window Appearance - New chat window and scroll to element
    Open Browser    https://eugenechangresola.github.io/WebbotPages/PROD/SYNALIO/auto/APPEARANCE/ScrollToElement.html    Chrome
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Sleep    3
    Element Should Not Be Visible    css=div.window-box
    Unselect Frame
    Execute Javascript    window.scrollTo(0,2048)
    Select Frame    id=synalio-iframe
    Element Should Not Be Visible    css=div.window-box
    Unselect Frame
    Execute Javascript    window.scrollTo(0,3096)
    Select Frame    id=synalio-iframe
    Element Should Not Be Visible    css=div.window-box
    Unselect Frame
    Execute Javascript    window.scrollTo(0,10000)
    Sleep    3
    Select Frame    id=synalio-iframe
    #New style Chat window element
    Element Should Be Visible    css=div.window-box
    Unselect Frame
    Close Browser

Chat Window Appearance - New chat window and toggle button
    Open Browser    https://eugenechangresola.github.io/WebbotPages/PROD/SYNALIO/auto/APPEARANCE/togglebutton.html    Chrome
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Sleep    3
    Element Should Not Be Visible    css=div.window-box
    Unselect Frame
    Click Button    id=togglebutton
    Sleep    1
    Select Frame    id=synalio-iframe
    #New style Chat window element
    Element Should Be Visible    css=div.window-box
    Close Browser

# Old Chat window section:
Chat Window Appearance- Old chat window and N seconds
    Open Browser    https://eugenechangresola.github.io/WebbotPages/PROD/SYNALIO/auto/APPEARANCE/Old_NSeconds.html    Chrome
    Page Should Not Contain Element    id=synalio-iframe
    Sleep    18
    Page Should Contain Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    # Old style chat window element
    Element Should Be Visible    css=.synalio-chat-window-toggled > .synalio-chat-header
    Close Browser

Chat Window Appearance - Old chat window and toggle button
    Open Browser    https://eugenechangresola.github.io/WebbotPages/PROD/SYNALIO/auto/APPEARANCE/Old_togglebutton.html    Chrome
    Wait Until Element Is Visible    id=togglebutton
    Click Button    id=togglebutton
    Sleep    2
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    # Old style chat window element
    Element Should Be Visible    css=div.synalio-chat-window > div.synalio-chat-header.synalio-border-radius
    Close Browser

Chat Window Appearance - Old chat window and scroll to element
    Open Browser    https://eugenechangresola.github.io/WebbotPages/PROD/SYNALIO/auto/APPEARANCE/Old_ScrollToElement.html    Chrome
    Page Should Not Contain Element    id=synalio-iframe
    Sleep    3
    Execute Javascript    window.scrollTo(0,2048)
    Page Should Not Contain Element    id=synalio-iframe
    Unselect Frame
    Execute Javascript    window.scrollTo(0,3096)
    Page Should Not Contain Element    id=synalio-iframe
    Execute Javascript    window.scrollTo(0,10000)
    Sleep    3
    Page Should Contain Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    # Old style chat window element
    Element Should Be Visible    css=.synalio-chat-window-toggled > .synalio-chat-header
    Unselect Frame
    Close Browser

*** Comments ***
# Skip this test it duplicated with other test script
Chat Window Appearance - Old chat window and page loaded
    Open Browser    https://eugenechangresola.github.io/WebbotPages/PROD/SYNALIO/auto/APPEARANCE/    Chrome
    Wait Until Page Contains Element    id=synalio-iframe
    Sleep    2
    Select Frame    id=synalio-iframe
    Element Should Be Visible    css=div.synalio-chat-window-toggled.synalio-border
    Close Browser