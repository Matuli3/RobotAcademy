*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource    ./exam_kw.robot
Resource    ./exam_variables.robot

*** Test Cases ***
100 Adding and removing items from cart
    [Documentation]    Test case kontroluje ci je mozne do kosika pridat produkty
    ...                a potom ich odtial odstranit
    [Setup]    Otvor Heureku
    [Teardown]    Close Browser
    Klikni na    ${tipy_na_darceky}
    Klikni na    ${par}
    Klikni na    ${vianoce}
    Klikni na    ${filter_cena_20-40}
    Sleep    3 s
    Page Should Contain    Darčeky pre pár na Vianoce v cene 40 - 100 €     #over ci sme na stranke, ktoru sme vyfiltrovali
    Klikni na    ${stolove_hry}
    Sleep    1 s
    Switch Window    NEW    #prepni do novo-otvoreneho tabu s vybratou kategoriou produktov
    Wait Until Page Contains    Stolové hry od 40 do 100 €
    Uloz aktualnu URL
    Klikni na   ${prvy_produkt}
    Kup produkt na Heureke
    Klikni na   ${druhy_produkt}
    Kup produkt na Heureke
    Klikni na   ${treti_produkt}
    Kup produkt na Heureke
    Klikni na    ${nakupny_kosik}
    Wait Until Page Contains    Košík
    Over ci je v kosiku pocet poloziek    3
    Over ci ceny produktov zodpovedaju filtru
    Vyprazdni kosik
    Over ci je kosik prazdny