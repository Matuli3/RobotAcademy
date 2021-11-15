*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Artin Homepage
    [Teardown]    close browser
    open browser    https://www.artin.sk    gc
    maximize browser window
    #page should contain    Tvoríme IT riešenia
    Wait Until Page Contains    Tvoríme IT riešenia    10
    Wait Until Page Contains    Vyvíjame, integrujeme a testujeme softvér pre najväčších    10
    #10 sekund defaultne, min definuje minuty
    #Sleep     10 s
    #vzdy caka dany cas, Preferovat wait pred sleep
    #gc- chrome
    #click element    id:menu-item-3084
    #close browser

Open Artin Kontakt
    [Setup]    Open Chrome On Artin Homepage
    [Teardown]    close browser
    #got to    https://www.artin.sk/kontakt/
    # nepouzivat
    click element    id:menu-item-3078
    wait until page contains    Naše Pobočky

#Open Artin Kontakt
    [Setup]    Open Chrome On Artin Homepage
    #[Teardown]    close browser
    click element    id:menu-item-3084
    wait until page contains    IT špecialistov v troch pobočkách
    wait until page contains element    xpath://div[class="about persons"]/h4
    ${res}   get text   css:[class:'about persons']
    sleep    5
    ${cislo}   get text   xpath://div[class="about persons"]/h4
    log    ${cislo}


*** Keywords ***
Open Chrome On Artin Homepage
    open browser    https://www.artin.sk    gc
    maximize browser window
    Wait Until Page Contains    Vyvíjame, integrujeme a testujeme softvér pre najväčších    10



