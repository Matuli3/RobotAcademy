*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Chrome On Artin Homepage
#[Teardown]    close browser
Resource    ./keywords/keywords.robot
Resource    ./variables/variables.robot

*** Test Cases ***
Homework_3
    Sleep     5 s
    click element    ${menu_kariera}
    Sleep    2 s
    Wait Until Page Contains    Voľné miesta
    Page should contain    Test Automation Engineer (Python)
    click element    xpath://*[@id="MixItUpAE2584"]/div[2]/div[1]/h4/a/div/strong
    #click element    xpath:/html/body/div[1]/div[5]/div/div[1]/div/div/p/a

*** Keywords ***
Open Chrome On Artin Homepage
    open browser    https://www.artin.sk    gc
    maximize browser window
    Wait Until Page Contains    Vyvíjame, integrujeme a testujeme softvér pre najväčších    5