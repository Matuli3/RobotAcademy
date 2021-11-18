*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Chrome On Alza Homepage
Resource    ./keywords/keywords.robot
Resource    ./variables/variables.robot
#[Teardown]    close browser

*** Test Cases ***
Test title
    mouse over    //*[@id="litp18890188"]/a
    Sleep    2 s
    Wait Until Page Contains     Home & Office
    click element    ${menu_homeandoffice}
    click element    ${afforable_notebooks}
    Sleep    3 s
    #click element    ${bestsellers_notebooks}
    click element    xpath://*[@id="ui-id-4"]
    Sleep    2 s
    ${price_buffer}    Get text    ${price_buffer}
    click element    ${buy_3besteler}
    Wait Until Page Contains    Product Added to Cart.    10 s
    ${basket_count}    Get Element Count     ${basket_count}
    ${price_buffer2}    Get text    ${price_buffer2}
    Should be equal    ${price_buffer2}    ${price_buffer}


*** Keywords ***
Open Chrome On Alza Homepage
    open browser    https://www.alza.sk/EN/    gc
    maximize browser window