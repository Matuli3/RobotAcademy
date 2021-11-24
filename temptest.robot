*** Settings ***
Library    SeleniumLibrary
Resource    ./keywords/keywords.robot
Resource    ./variables/variables.robot

*** Test Cases ***
Test title
    Click element    ${BratislavaMain}

