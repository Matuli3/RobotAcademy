*** Settings ***
Library    OperatingSystem

*** Test Cases ***
Moj test 1
     [Setup]    Log    ${TEST_NAME}
     [Teardown]    Log    Teardown
          Log    Ahoj

Moj test 2
     [Setup]    Log    ${TEST_NAME}
     [Teardown]    Log    Teardown
     Log    ${TEST_NAME}
     Log    Ahoj

Moj test 3
     [Setup]    Log    ${TEST_NAME}
     [Teardown]    Log    Teardown
     Log    ${TEST_NAME}
     Log    Ahoj
     Fail