*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Chrome On Alza Homepage
Resource    ./keywords/keywords.robot
Resource    ./variables/variables.robot
#[Teardown]    close browser

*** Test Cases ***
Test 311
    Mouse over    //*[@id="litp18890188"]/a
    Sleep    2 s
    Wait Until Page Contains     Home & Office
    Click element    ${menu_homeandoffice}
    Click element    ${afforable_notebooks}
    Sleep    3 s
    Click element    ${bestsellers_notebooks}
    Sleep    2 s
    ${price_buffer}    Get text    ${price_buffer}
    Click element    ${buy_3besteler}
    Wait Until Page Contains    Product Added to Cart.    15 s
    ${basket_count}    Get Element Count     ${basket_count}
    ${price_buffer2}    Get text    ${price_buffer2}
    Should be equal    ${price_buffer2}    ${price_buffer}
    Should be equal as numbers    ${basket_count}     1
    Click element    ${Proceed}
    Click element    ${Continue}
    #Wait Until Page Contains     Do not forget these important things
    #Click element    ${Donotadd}
    Click element    ${BratislavaMain}
    ${BasketCount}     get text    ${BasketCount}

Test 312
    Click element    ${SearchBar}
    Input text    ${SearchBar}    lego
    Click element    ${SearchBtn}
    Wait Until Page Contains    Top-Rated
    Click element    ${TopRatedLego}
    Sleep    2 s
    Click element    ${3_2_Lego}
    Wait Until Page Contains    Product Added to Cart.    15 s
    ${basket_count}    Get Element Count     ${basket_count}
    Should be equal as numbers    ${basket_count}     1
    Click element    ${AlzaLogo}
    Click element    ${DealWeaks}
    Click element    ${4thDeal}
    Wait Until Page Contains    Product Added to Cart.    15 s
    Sleep    2 s
    ${basket_count2}    Get Element Count    ${basket_count2}
    #Should be equal as numbers    ${basket_count2}    2
    Click element    ${AlzaLogo}
    Reload page
    Mouse over    ${HouseHolds}
    Wait Until Page Contains     Light Bulbs and Lighting
    Sleep     1s
    Click element    ${MoreLightBulbs}
    Click element    ${WorkLighs}
    Click element    ${bestsellers_WorkLights}
    Click element    ${1BestSeller_WorkLighs}
    Click element    ${AddToCart_inside}
    Wait Until Page Contains    Product Added to Cart.    15 s
    ${basket_count2}    Get text    ${basket_count2}
    Should be equal as numbers    ${basket_count2}    3

    Click element     ${basket_count2}
    ${url}=   Get Location

Test 313
    Go to    https://www.alza.sk/EN/honor-9-lite-midnight-black-d5240693.htm
    Wait Until Page Contains    We apologise, but the product is no longer sold
    Page should contain     Show alternatives
    Page should not contain element    ${AddToCart_inside}

Random element
    Set Variable    ${locator}     xpath://*[@id="rootHtml"]/body
    # zoznal (list) s elementami
    ${random_number}    Evaluate    random.randint(1, 19)    random
    Click Element    ${locator}[${random_number}]
    ${elements}    Get WebElements      xpath://*[@id="rootHtml"]/body
    Clck element    ${random_element}

Sort
     Create List    ${prices}
     ${elements}    Get WebElement   xpath://
     FOR    ${price}    IN    @{elements}
         Log    ${price}
     END
     veela dalsich veci





*** Keywords ***
Open Chrome On Alza Homepage
    open browser    https://www.alza.sk/EN/    gc
    maximize browser window