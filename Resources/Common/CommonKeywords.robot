*** Settings ***
Library         	            SeleniumLibrary
Resource                        ../../Frameworks/Routers.robot

*** Variables ***
${URL_BLANK}                    about:blank

*** Keywords ***
Start Testing
    [Arguments]     ${URL}
    Open Mola TV                ${URL}
    Set Selenium Timeout        ${DEFAULT_TIMEOUT}
    Set Selenium Speed	        0.25

End Testing
    Close Browser

Open Mola TV
    [Arguments]     ${URL}
    Run Keyword If      '${BROWSER}' == 'mychrome'              Open Mychrome Browser                       ${URL}
    ...    ELSE IF      '${BROWSER}' == 'myheadlesschrome'      Open Myheadlesschrome Browser               ${URL}
    ...    ELSE IF      '${BROWSER}' == 'chromemobile'          Open Chromemobile Browser                   ${URL}
    ...    ELSE                                                 Open Normal Browser                         ${URL}