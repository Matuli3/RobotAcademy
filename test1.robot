*** Test Cases ***

Moj prvy test
 #toto je komentar
    [Tags]    regress
    Set Log Level    TRACE
    Log    Hello, world!     level=TRACE
    LOG    Log2
    Fail


Moj druhy test
    [Documentation]    toto je dokumentacia
    [Tags]    smoke    regress
    Log  moj druhy test level=DEBUG
