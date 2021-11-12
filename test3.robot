*** Test Cases ***

Moj prvy test3
 #toto je komentar
    [Tags]    regress
    Set Log Level    TRACE
    Log    Hello, world!     level=TRACE
    LOG    Log2
    Fail

Moj druhy test3
    [Documentation]    toto je dokumentacia
    [Tags]    smoke    regress
    Log  moj druhy test level=DEBUG
