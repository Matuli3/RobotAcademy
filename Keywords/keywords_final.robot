*** Keywords ***
Open Chrome On Heureka Homepage
    open browser    https://www.heureka.sk    gc
    maximize browser window
    Wait Until Page Contains    Heureka    5