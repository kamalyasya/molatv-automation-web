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
    Set Selenium Speed	        ${DELAY}
    

End Testing
    Close All Browsers

Open Mola TV
    [Arguments]     ${URL}
    ${BROWSER}      Convert To Lower Case    ${BROWSER}
    Run Keyword If      '${BROWSER}' == 'mychrome'              Open Mychrome Browser                       ${URL}
    ...    ELSE IF      '${BROWSER}' == 'myheadlesschrome'      Open Myheadlesschrome Browser               ${URL}
    ...    ELSE IF      '${BROWSER}' == 'chromemobile'          Open Chromemobile Browser                   ${URL}
    ...    ELSE IF      '${BROWSER}' == 'myfirefox'             Open Myfirefox Browser                      ${URL}
    ...    ELSE IF      '${BROWSER}' == 'myheadlessfirefox'     Open Myheadlessfirefox Browser              ${URL}
    ...    ELSE                                                 Open Normal Browser                         ${URL}

Scroll To Element
    [Arguments]  ${locator}
    ${x}=        Get Horizontal Position  ${locator}
    ${y}=        Get Vertical Position    ${locator}
    Execute Javascript  window.scrollTo(${x}, ${y})