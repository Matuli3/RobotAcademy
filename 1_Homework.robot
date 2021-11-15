*** Settings ***
Library    OperatingSystem
Test Setup    Log    ${TEST_NAME}

*** Test Cases ***
Homework num. 1
    [Tags]    homework
    Log    This is just log action
    Create File    slides2.md    '#SLIDES'
    File Should Exist    slides.md
