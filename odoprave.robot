*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Chrome On Odoprave
Resource    ./keywords/keywords.robot
Resource    ./variables/variables.robot
#[Teardown]    close browser

*** Test Cases ***
odoprave.info_2
    Click element    ${Lang_menu}
    Click element    ${Lang_SK}
    Wait until page contains    Hlavné ťahy
    Click element    ${Aktuality}
    Wait until page contains    Nahlásenie dopravnej udalosti    10 s
    Sleep    2
    Click element     ${Dopravna_sit}
    #    not possible to find out static element that could be verified
    Click element    ${Hlavne_tahy}
    Wait until page does not contain    Bratislava Obchvat
    Sleep    5 s
    Click element    ${BaObchvat}
    Click element    ${oPortali}
    Mouse over       ${oPortali}
    Click element    ${MobilnaAplikacia}
    Mouse over       ${oPortali}
    Click element    ${PreOdbVer}
    Mouse over       ${oPortali}
    Click element    ${UzitocneLinky}

odoprave.info_3
    Click element    ${Aktuality}
    #Wait until page contains    Nahlásenie dopravnej udalosti    10 s
    Sleep    2
    Click element     ${Dopravna_sit}
    #    not possible to find out static element that could be verified
    Click element    ${Hlavne_tahy}

odoprave.info_6
     Mouse over    ${Map_Ba}
     Wait until page contains    Region of Bratislava
     Wait until page contains    Number of reported events

odoprave.info_7
     Mouse over     ${list_BB}

odoprave.info_8
     Click element     ${Map_Ba}

odoprave.info_9
     Click element     ${list_BB}

odoprave.info_10
    Go to    https://odoprave.info/wps/portal/pub/Home/dopravna-situacia
    Sleep    3 s
    Click element    ${Geolocation}
    Sleep    3 s
    Click element    ${ZoomIn}
    Sleep    3 s
    Click element    ${ZoomOut}
    Sleep    3 s
    Click element    ${Slovakia_btn}



*** Keywords ***
Open Chrome On Odoprave
    open browser    https://odoprave.info/    gc
    maximize browser window