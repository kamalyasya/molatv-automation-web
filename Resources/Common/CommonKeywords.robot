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
#    Click Button Browse On Welcome Page

End Testing
    Close All Browsers

Open Mola TV
    [Arguments]     ${URL}
    ${BROWSER}      Convert To Lower Case       ${BROWSER}
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

Reset Mola DOB HBO
    [Arguments]    ${UID1}
    Create Session          reset_mola_dob              ${HOST}
    ${endpoint}             Set Variable                /accounts/_/v2/profile/reset/birthdate
    ${headers}=             Create Dictionary           Content-Type    application/json
    &{data}=                Create Dictionary           uid=${UID1}
    ${response}=            POST On Session             reset_mola_dob      ${endpoint}    headers=${headers}   json=${data}
    ${json_response}=       Convert To String           ${response.status_code}

    Log To Console          ${response.content}
    Should Be Equal         ${json_response}            200

Clear Devices On Device Management
    [Arguments]    ${EMAIL}     ${PASSWORD}

    # Remove special characters
    ${EMAILS}                Remove String         ${EMAIL}     .    @    +

    # Check Is variable exist?
    ${is_variable_exist}=    Get Variable Value    ${status_${EMAILS}}
    ${variable_status}=      Set Variable If    """${is_variable_exist}""" != 'None'    ${True}    ${False}

    # Assign value if variable is not exist
    IF  '${variable_status}' == '${False}'
        Set Test Variable        ${status_${EMAILS}}     0
        Set Global Variable      ${status_${EMAILS}}
    END

    IF  """${status_${EMAILS}}""" == '0'
             CommonKeywords.Start Testing       ${HOST}
             HomePage.Open Login Page
             SignInPage.Restore Existing Cookies Or Relogin         ${EMAIL}       ${PASSWORD}
             HomePage.Open Profile Page
             SettingsPage.Select Pengaturan

             # Open device management
             Wait Until Element Is Visible               ${text_setting_device_management}
             Click Element                               ${text_setting_device_management}

             ${IS_REMOVE_BUTTON_VISIBLE}       Run Keyword And Return Status       Wait Until Element Is Visible        ${button_device_management_edit}            20
             IF  '${IS_REMOVE_BUTTON_VISIBLE}' == 'True'
#                 ${ELEMENT_COUNT}              Get Element Count          ${button_device_management_edit}
                 ${ELEMENT_COUNT}              Set Variable        200

                 ${index}=    Set Variable    1
                 FOR    ${i}    IN RANGE    ${ELEMENT_COUNT}
                     Exit For Loop If    ${index} > ${ELEMENT_COUNT}

                     ${STATUS}       Run Keyword And Return Status          Element Should Be Visible       ${button_device_management_edit}        2
                     IF  '${STATUS}' == 'True'
                         Remove Device
                     ELSE
                         Exit For Loop
                     END

                     ${index}=    Evaluate    ${index} + 1
                 END
             END

             Log                        ${status_${EMAILS}}
             Set Global Variable        ${status_${EMAILS}}             1
             Log                        ${status_${EMAILS}}
#             Logout Account
             CommonKeywords.End Testing
    END

Get All Cookies
    [Arguments]    ${EMAIL}

    ${STRING_EMAIL}          Remove String         ${EMAIL}     .    @    +
    # Check Is variable exist?
    ${is_variable_exist}=    Get Variable Value    ${cookies_${STRING_EMAIL}}
    ${variable_status}=      Set Variable If    """${is_variable_exist}""" != 'None'    ${True}    ${False}

    # Assign value if variable is not exist
    IF  '${variable_status}' == '${False}'
        Set Global Variable      ${cookies_${STRING_EMAIL}}     0
    END

    ${cookies}              Get Cookies              as_dict=True
    Set Global Variable     ${cookies_${STRING_EMAIL}}     ${cookies}
    Log                     ${cookies_${STRING_EMAIL}}

Set All Cookies
    [Arguments]    ${EMAIL}
    ${STRING_EMAIL}                Remove String         ${EMAIL}     .    @    +
    FOR    ${key}    IN    @{cookies_${STRING_EMAIL}.keys()}
        ${string_key}               Catenate                cookies_${STRING_EMAIL}.${key}
        Add Cookie      ${key}      ${${string_key}}
    END