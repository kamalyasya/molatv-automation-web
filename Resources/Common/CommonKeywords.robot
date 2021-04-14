*** Settings ***
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
    ${x_locator} =          Get Horizontal Position          ${locator}
    ${y_locator} =          Get Vertical Position            ${locator}
    ${widht}     ${height}  Get Element Size                 ${locator}

    ${a} =                  Get Horizontal Position          ${button_homepage_live_chat}
    ${b} =                  Get Vertical Position            ${button_homepage_live_chat}
    ${widht2}    ${height2}    Get Element Size              ${button_homepage_live_chat}

    ${y} =                  Evaluate                            ${b} - (${y_locator} - ${b})
    ${value_zero} =         Run Keyword And Return Status       Should Be True     ${y} <= 0
    Run Keyword If          '${value_zero}' == 'True'           Scroll To Element Vertical Position       ${y_locator}
    ...       ELSE          Execute Javascript                  document.getElementsByClassName('children__container')[0].scrollTo(0,${y})

Scroll To Element Vertical Position
    [Arguments]    ${vertical_position}
    ${y} =        Evaluate         ${vertical_position} - 50
    Execute Javascript  document.getElementsByClassName('children__container')[0].scrollTo(0, ${y})

Reset Mola DOB
    [Arguments]    ${UID}
    Create Session          reset_mola_dob              ${HOST}
    ${endpoint}             Set Variable                /accounts/_/v2/profile/reset/birthdate
    ${headers}=             Create Dictionary           Content-Type    application/json
    &{data}=                Create Dictionary           uid=${UID}
    ${response}=            POST On Session             reset_mola_dob      ${endpoint}    headers=${headers}   json=${data}
    ${json_response}=       Convert To String           ${response.status_code}

    Log To Console          ${response.content}
    Should Be Equal         ${json_response}            200