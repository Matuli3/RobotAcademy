*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Chrome On Artin Homepage
#[Teardown]    close browser
Resource    ./keywords/keywords.robot
Resource    ./variables/variables.robot

*** Test Cases ***
Test title
    log     abc

*** Keywords ***
Open Chrome On Artin Homepage
    open browser    https://www.artin.sk    gc
    maximize browser window
    Wait Until Page Contains    Vyvíjame, integrujeme a testujeme softvér pre najväčších    5