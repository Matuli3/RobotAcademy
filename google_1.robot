*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Chrome On Google Homepage
Resource    ./keywords/keywords.robot
Resource    ./variables/variables.robot
#[Teardown]    close browser

*** Test Cases ***
Test_4
    wait until page contains element    ${Search_google}     10 s
    Click element    ${Search_google}
    Input text    ${Search_google}    Apple
    Press keys    ${Search_google}     RETURN
    Wait Until Page Contains    Apple - Wikipedia

Test_6
    Wait until page contains element    ${Search_google}     10 s
    Click element    ${Search_google}
    Input text    ${Search_google}    '@#$%^'
    Press keys    ${Search_google}     RETURN
    Wait Until Page Contains    did not match any documents
    Page should contain    Try

Test_13
     Wait until page contains element    ${Search_google}     10 s
     Sleep     2 s
     Click element    ${Lang_google}
     Should be Equal As Strings     slovenčina

*** Keywords ***
Open Chrome On Google Homepage
    open browser    https://www.google.com    gc
    maximize browser window
    Click element    ${Suhlasim_google}

