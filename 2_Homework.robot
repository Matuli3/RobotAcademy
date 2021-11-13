*** Settings ***
Library    OperatingSystem
Test Setup    Log    ${TEST_NAME}

*** Test Cases ***
Homework num. 2
    LOG ENVIRONMENT VARIABLES
    #Log    get environment variables

*** Keywords ***
Provided precondition
    mojKeyword    'LOG ENVIRONMENT VARIABLES'