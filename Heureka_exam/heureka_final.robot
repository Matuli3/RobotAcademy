*** Settings ***
Library    SeleniumLibrary
Library    String
Resource    ./keywords/keywords_final.robot
Resource    ./variables/variables_final.robot

*** Test Cases ***
Heureka_Add_And_Remove_items_from_basket
    Open Chrome On Heureka Homepage
    Open category: Tips for gifts - For Men - Chritmass - Speakers - Price from 40€ to 100€
    Add product JBL Control One into basket (via "Kupit na heureke")
    Add product Samsung SWA-8500 into basket (via "Kupit na heureke")
    Add product Creative SBS E2900 into basket (via "Kupit na heureke")
    Check if counter of items in Basket is correct
    Check if prices of products are in selected range (40€-100€)
    Remove 1st Product from Basket
    Remove 2nd Product from Basket
    Remove 3rd Product from Basket
    Check if Basket is empty







