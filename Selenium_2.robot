*** Settings ***
Library    SeleniumLibrary
Test Setup      Open Chrome On Artin Homepage
[Teardown]    close browser
Resource    ./keywords/keywords.robot
Resource    ./variables/variables.robot

*** Test Cases ***
Artin2
    click element    id:menu-item-3127
    Sleep    2 s
    click element    id:menu-item-3080
    click element    xpath://*[@id="wpcf7-f532-p1101-o2"]/form/div[2]/div[1]/label/span[2]/input
    input text    xpath://*[@id="wpcf7-f532-p1101-o2"]/form/div[2]/div[1]/label/span[2]/input    Matus
    input text    xpath://*[@id="wpcf7-f532-p1101-o2"]/form/div[2]/div[2]/label/span[2]/input    Lajda
    input text    xpath://*[@id="wpcf7-f532-p1101-o2"]/form/div[2]/div[3]/label/span[2]/input    matus.lajda@artinsolutions.com
    input text    xpath://*[@id="wpcf7-f532-p1101-o2"]/form/div[2]/div[4]/label/span[2]/div/input    908869222
    input text    xpath://*[@id="wpcf7-f532-p1101-o2"]/form/div[2]/div[5]/label/span/textarea     abctest
    click element   xpath://*[@id="wpcf7-f532-p1101-o2"]/form/div[2]/div[6]/span/input


*** Keywords ***
Open Chrome On Artin Homepage
    open browser    https://www.artin.sk    gc
    #maximize browser window
    Set window size    1024    768
    Wait Until Page Contains    Vyvíjame, integrujeme a testujeme softvér pre najväčších    5