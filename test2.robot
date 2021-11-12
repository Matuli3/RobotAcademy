*** Test Cases ***

Moj prvy test2
 #toto je komentar
    [Tags]    regress
    Set Log Level    TRACE
    Log    Hello, world!     level=TRACE
    LOG    Log2
    Fail


Moj druhy test2
    [Documentation]    toto je dokumentacia
    ...                riadok 2 dokumentacia
    [Tags]    smoke    regress    in-progress
    Log  moj druhy test level=DEBUG
