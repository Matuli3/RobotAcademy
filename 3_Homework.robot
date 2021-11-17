*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Chrome On Artin Homepage
#[Teardown]    close browser
Resource    ./keywords/keywords.robot
Resource    ./variables/variables.robot

*** Test Cases ***
Homework_3
    Sleep     15 s
    click element    id:menu-item-3127
    Sleep    2 s
    Wait Until Page Contains    Voľné miesta
    Page should contain    Test Automation Engineer (Python)
    click element      //*[@id="MixItUp4CAF65"]/div[2]/div[1]/h4/a

*** Keywords ***
Open Chrome On Artin Homepage
    open browser    https://www.artin.sk    gc
    maximize browser window
    Wait Until Page Contains    Vyvíjame, integrujeme a testujeme softvér pre najväčších    5