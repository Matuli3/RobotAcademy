*** Keywords ***
Open Chrome On Heureka Homepage
    Open browser    https://www.heureka.sk    gc
    Set window Size    1920    1080

Open category: Tips for gifts - For Men - Chritmass - Speakers - Price from 40 to 100€
    Click element    ${Tips_for_gifts}
    Wait until page contains    Pre koho je darček    10 s
    Click element    ${Category_Man}
    Click element    ${Category_Christmas}
    #Click element    ${Price_range_40-100}
    # Z nejakeho dovodu sa zrazu reproduktory nezobrazuju pod 40-100€ filtrom (click funguje)
    #Wait Until Element Is Enabled    ${Price_range_40-100}
    Sleep    2 s
    #Page Should Contain    Darčeky pre mužov na Vianoce v cene 40 - 100 €
    Click element    ${Category_Speakers}
    Switch window    New

Add product JBL Control One into basket (via "Kupit na heureke)
    Wait Until Element Is Visible    ${JBLControlOne}    10 s
    Click element     ${JBLControlOne}
    Wait until page contains    Kúpiť na Heureke
    Click element    ${JBLControlOne_Buy_on_Heureka}
    Go to     ${Speakers_from_40_to_100euro}

Add product Samsung SWA-8500 into basket (via "Kupit na heureke)
    Wait Until Element Is Visible    ${Samsung_SWA_8500}
    Click element    ${Samsung_SWA_8500}
    Wait until page contains    Kúpiť na Heureke
    Click element    ${Samsung_SWA_8500_Buy_on_Heureka}
    Wait Until page contains    Tovar sme pridali do košíka     10
    Go to    ${Speakers_from_40_to_100euro}

Add product Creative SBS E2900 into basket (via "Kupit na heureke)
    Wait Until Element Is Visible    ${Creative_SBS_E2900}
    Click element    ${Creative_SBS_E2900}
    Wait until page contains    Kúpiť na Heureke
    Click element    ${Creative_SBS_E2900_Buy_on_Heureka}
    Wait Until page contains    Tovar sme pridali do košíka     10

Check if counter of items in Basket is correct
    Go to    ${Basket}
    Reload page
    Wait Until Page Contains    Košík
    ${Kosik_pocet}    Get Element Attribute    ${Kosik_pocet}    data-count
    ${Kosik_pocet}    Convert To String    ${Kosik_pocet}
    Set Test Variable    ${Kosik_pocet}
    Should Be Equal    ${Kosik_pocet}    3


Check if prices of products are in selected range (40€-100€)
     Wait Until Element Is Visible    ${Price_of_1_product_from_basket}
     ${Product_price_1_buffer}    Get Text    ${Price_of_1_product_from_basket}
     ${Product_price_1_buffer}    Remove String    ${Product_price_1_buffer}    €
     Should Be True    40 <= ${Product_price_1_buffer} <= 100
     ${Product_price_2_buffer}    Get Text    ${Price_of_2_product_from_basket}
     ${Product_price_2_buffer}    Remove String    ${Product_price_2_buffer}    €
     Should Be True    40 <= ${Product_price_2_buffer} <= 100
     ${Product_price_3_buffer}    Get Text    ${Price_of_3_product_from_basket}
     ${Product_price_3_buffer}    Remove String    ${Product_price_3_buffer}    €
     Should Be True    40 <= ${Product_price_2_buffer} <= 100

Remove Products from Basket One by One and check if was removed
    Wait Until Element Is Visible    ${Remove_X_btn_1}
    Sleep    1 s
    Click Element    ${Remove_X_btn_1}
    Wait Until Element Is Enabled    ${Confrim_Remove}     20
    Click Element    ${Click_on_Confrim_pop-up}
    #Sleep    5 s
    Click Element    ${Confrim_Remove}
    Reload page
    Wait Until Element Is Visible    ${Remove_X_btn_2}
    Page Should Not Contain    Creative SBS E2900
    Click Element    ${Remove_X_btn_2}
    Wait Until Element Is Enabled    ${Confrim_Remove}     20
    Click Element    ${Click_on_Confrim_pop-up}
    #Sleep    10 s
    Click Element    ${Confrim_Remove}
    Reload page
    Page Should Not Contain    SAMSUNG SWA-8500S/EN
    Wait Until Element Is Visible    ${Remove_X_btn_2}
    Click Element    ${Remove_X_btn_3}
    Wait Until Element Is Enabled    ${Confrim_Remove}     20
    Click Element    ${Click_on_Confrim_pop-up}
    #Sleep    10 s
    Click Element    ${Confrim_Remove}
    Reload page
    Page Should Not Contain    JBL Control

Check if Basket is empty
    Wait until page contain    Váš košík zíva prázdnotou..

