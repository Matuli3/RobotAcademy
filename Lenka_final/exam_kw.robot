*** Keywords ***
Otvor Heureku
    Open Browser    https://www.heureka.sk   gc
    Maximize Browser Window

Klikni na
    [Arguments]     ${xpath_to_click}
    Wait Until Element Is Visible    ${xpath_to_click}
    Click Element    ${xpath_to_click}

Uloz aktualnu URL
    ${temp}     Get Location
    Set Global Variable     ${stolove_hry_url}    ${temp}

Kup produkt na Heureke
    Wait Until Element Is Enabled    ${kupit_na_heureke}
    Click Element    ${kupit_na_heureke}
    Wait Until Element Is Visible    ${tovar_pridany}
    Klikni na   ${pokracovat_v_nakupe}
    Go To    ${stolove_hry_url}
    Wait Until Page Contains    Stolové hry od 40 do 100 €
    ${temp2}    Evaluate    int(${medzisucet}) + 1
    Set Global Variable    ${medzisucet}   ${temp2}
    Append To List    ${list}    ${medzisucet}

Over ci je v kosiku pocet poloziek
    [Arguments]    ${ocakavany_pocet_v_kosiku}
    ${realny_pocet_v_kosiku}    Get Element Attribute    ${nakupny_kosik_count}    data-count
    Should be equal    ${realny_pocet_v_kosiku}     ${ocakavany_pocet_v_kosiku}

Over ci ceny produktov zodpovedaju filtru
    FOR    ${pocitadlo}    IN    @{list}
        Log    Produkt ${pocitadlo}
        ${cena_produktu}    Get Text    xpath:(//div[@class="c-product-card__price u-bold"])[${pocitadlo}]
        ${upravena_cena}    Evaluate    "${cena_produktu}".split(" ")[0].replace(",", ".")
        Log    ${upravena_cena}
        Should Be True    40 <= ${upravena_cena} <= 100    Cena produktu NEZODPOVEDA zvolenemu cenovemu filtru!
        Run Keyword If    40 <= ${upravena_cena} <= 100    Log    Cena produktu zodpoveda zvolenemu cenovemu filtru.
    END

Vyprazdni kosik
    FOR    ${pocitadlo}    IN    @{list}
        ${docasny_nazov_produktu}    Get Text    xpath:(//span[@class="c-product-card__title"]/a)[1]
        Klikni na    ${mazaci_krizik}
        Klikni na    ${potvrdenie_zmazania_produktu}
        Page Should Not Contain    ${docasny_nazov_produktu}
    END

Over ci je kosik prazdny
    Page Should Contain    Váš košík zíva prázdnotou...