*** Settings ***
Library    OperatingSystem
Documentation    Suite level dokumentacia
Metadata    Version    1.0
Metadata    Name    Matus
Default Tags    regression

*** Variables ***
${ahoj}    Ahoj, svet!
${ahoj2}    Ahoj, svet!

*** Test Cases ***
Praca s Variable
    Log    ${ahoj}
    Log    ${ahoj}
    Log    ${ahoj2}
    Log    c:${/}ahoj${/}svet  #c:\ahoj\svet
    Log    ${CURDIR}
    Log    ${EXECDIR}
    Log    ${TEST Name}
    Log    ${SUITE_NAME}

    SET Global Variable   ${GLOBAL_VAR}
    SET Test Variable    ${test_praca_var}
    SET Local Variable    ${test_local_var}
    SET Suite Variable    ${test_SUITE_var}
    ${var}

