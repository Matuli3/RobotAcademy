*** Settings ***
Test Setup    Log    ${TEST_NAME}
Test Teardown    Log    Teardown

*** Test Cases ***
Moj test 1
     [Setup]    Log    ${TEST_NAME}
               Log    Ahoj

Moj test 2
     [Setup]    Log    ${TEST_NAME}
     Log    Ahoj

Moj test 3
     Log    Ahoj
     Fail