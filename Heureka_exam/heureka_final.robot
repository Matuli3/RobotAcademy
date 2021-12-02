*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Chrome On Heureka Homepage
Resource    ./keywords/keywords_final.robot
Resource    ./variables/variables_final.robot
#[Teardown]    close browser

*** Test Cases ***
Heureka
    Click element    ${TipyNaDarceky}
    Wait until page contains    Pre koho je darček    10 s
    #Sleep    2 s
    Click element    ${Kategoria_Muz}
    Click element    ${Kategoria_Vianoce}
    Click element    ${Cena_40az100}
    Wait Until Element Is Enabled    ${Cena_40az100}
    Reload page
    Sleep    3 s
    Click element    ${Kategoria_Reprosustavy}
    ${Reprosustavy}    get window handles
    log    ${Reprosustavy}
    switch window    ${Reprosustavy[1]}
    Wait until page contains    JBL Control One    10 s
    Click element     ${JBLControlOne}
    Wait until page contains    Kúpiť na Heureke
    Click element    ${JBLControlOne_Kupit}
    Go to     https://reprosustavy-a-reproduktory.heureka.sk/f:p:40-100/
    Click element    ${Samsung_SWA_8500}
    Wait until page contains    Kúpiť na Heureke
    Click element    ${Samsung_SWA_8500_Kupit}
    Go to     https://reprosustavy-a-reproduktory.heureka.sk/f:p:40-100/
    Click element    ${Creative_SBS_E2900}
    Wait until page contains    Kúpiť na Heureke
    Click element    ${Creative_SBS_E2900_Kupit}
    Sleep    2 s
    Go to    https://www.heureka.sk/kosik/
    Sleep    4 s
    ${Kosik_pocet}    Get Element Attribute    ${Kosik_pocet}    data-count
    ${Kosik_pocet}    Convert To String    ${Kosik_pocet}
    Set Test Variable    ${Kosik_pocet}
    Should Be Equal    ${Kosik_pocet}    3
    # Should be - neviem spravit porovnanie cien
    click element    ${Vymaz_1_Item}
    click element    ${PotvrdZmazanie}
    Should not be visible    Creative SBS E2900
    click element    ${Vymaz_2_Item}
    click element    ${PotvrdZmazanie}
    click element    {Vymaz_3_Item}
    click element    ${PotvrdZmazanie}
    page should contain    Váš košík zíva prázdnotou





*** Keywords ***
Open Chrome On Heureka Homepage
    open browser    https://www.heureka.sk    gc
    maximize browser window
    #Wait Until Page Contains    Neskôr    10
    #Click element    ${Neskor_btn}

Kontrola ceny poloziek v kosiku
    ${ItemKosik1}    Get Text    ${ItemKosik01}
    ${Item1}    remove string    ${ItemKosik1}     ${SPACE}€
    ${Item1}    replace string    ${Item1}    ,    .
    ${Item1}    convert to number     ${Item1}
    ${ItemKosik2}    Get Text    ${ItemKosik02}
    ${Item2}    remove string    ${ItemKosik2}     ${SPACE}€
    ${Item2}    replace string    ${Item2}    ,    .
    ${Item2}    convert to number     ${Item2}
    ${ItemKosik3}    Get Text    ${ItemKosik03}
    ${Item3}    remove string    ${ItemKosik3}     ${SPACE}€
    ${Item3}    replace string    ${Item3}    ,    .
    ${Item3}    convert to number     ${Item3}
    IF    ${Item1} < 100
    END
    IF    ${Item2} < 100
    END
    IF    ${Item3} < 100
    END

