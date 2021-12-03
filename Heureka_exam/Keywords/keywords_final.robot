*** Keywords ***
Open Chrome On Heureka Homepage
    Open browser    https://www.heureka.sk    gc
    Set window Size    1920    1080

Open category: Tips for gifts - For Men - Chritmass - Speakers - Price from 40€ to 100€
    Click element    ${Tips_for_gifts}
    Wait until page contains    Pre koho je darček    10 s
    Click element    ${Category_Man}
    Click element    ${Category_Christmas}
    #Click element    ${Price_range_40-100}
    # For some reason, category "Speakers" in no longer under 40-100€ filtre (click works)
    #Wait Until Element Is Enabled    ${Price_range_40-100}
    Sleep    2 s
    #Page Should Contain    Darčeky pre mužov na Vianoce v cene 40 - 100 €
    Page Should Contain    Darčeky pre mužov na Vianoce
    Click element    ${Category_Speakers}
    Switch window    New

Add product JBL Control One into basket (via "Kupit na heureke")
    Wait Until Element Is Visible    ${JBLControlOne}    10 s
    Click element     ${JBLControlOne}
    Wait until page contains    Kúpiť na Heureke
    Click element    ${JBLControlOne_Buy_on_Heureka}
    Go to     ${Speakers_from_40_to_100euro}

Add product Samsung SWA-8500 into basket (via "Kupit na heureke")
    Wait Until Element Is Visible    ${Samsung_SWA_8500}
    Click element    ${Samsung_SWA_8500}
    Wait until page contains    Kúpiť na Heureke
    Click element    ${Samsung_SWA_8500_Buy_on_Heureka}
    Wait Until page contains    Tovar sme pridali do košíka     10
    Go to    ${Speakers_from_40_to_100euro}

Add product Creative SBS E2900 into basket (via "Kupit na heureke")
    Wait Until Element Is Visible    ${Creative_SBS_E2900}
    Click element    ${Creative_SBS_E2900}
    Wait until page contains    Kúpiť na Heureke
    Click element    ${Creative_SBS_E2900_Buy_on_Heureka}
    #Wait Until Element Is Visible    ${Creative_SBS_E2900_Buy2_on_Heureka}
    #Click element    ${Creative_SBS_E2900_Buy2_on_Heureka}
    # This button occur randomly, dissabled for now
    Wait Until page contains    Tovar sme pridali do košíka     10

Check if counter of items in Basket is correct
    Go to    ${Basket}
    Reload page
    Wait Until Page Contains    Košík
    ${Basket_item_count}    Get Element Attribute    ${Basket_item_count}    data-count
    ${Basket_item_count}    Convert To String    ${Basket_item_count}
    Set Test Variable    ${Basket_item_count}
    Should Be Equal    ${Basket_item_count}    3

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

Remove 1st Product from Basket
    Wait Until Element Is Visible    ${Remove_X_btn_1}
    ${Temp_Product_name}    Get Text    ${Name_of_product_from_basket}
    Sleep    1 s
    Click Element    ${Remove_X_btn_1}
    Wait Until Element Is Visible    ${Confrim_Remove}     30
    Click Element    ${Click_on_Confrim_pop-up}
    #Sleep    5 s
    Click Element    ${Confrim_Remove}
    Reload page
    Page Should Not Contain    ${Temp_Product_name}

Remove 2nd Product from Basket
    ${Temp_Product_name}    Get Text    ${Name_of_product_from_basket}
    Wait Until Element Is Visible    ${Remove_X_btn_2}
    Click Element    ${Remove_X_btn_2}
    Wait Until Element Is Visible    ${Confrim_Remove}     30
    #Sleep    10 s
    #Click Element    ${Click_on_Confrim_pop-up}
    Click Element    ${Confrim_Remove}
    Reload page
    Page Should Not Contain    ${Temp_Product_name}


Remove 3rd Product from Basket
    ${Temp_Product_name}    Get Text    ${Name_of_product_from_basket}
    Wait Until Element Is Visible    ${Remove_X_btn_2}
    Click Element    ${Remove_X_btn_3}
    Wait Until Element Is Visible    ${Confrim_Remove}     30
    #Click Element    ${Click_on_Confrim_pop-up}
    #Sleep    10 s
    Click Element    ${Confrim_Remove}
    Reload page
    Page Should Not Contain    ${Temp_Product_name}

Check if Basket is empty
    Wait until page contains    Váš košík zíva prázdnotou..
    [Teardown]    Close browser

