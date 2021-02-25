*** Settings ***
Resource                ../../Frameworks/Routers.robot


*** Variables ***

${links_login_create_account_now}                   css=p > a

${field_register_email}                             id=identity
${field_register_password}                          id=password
${field_register_confirm_password}                  id=confirmPassword

${button_register_create_account}                   css=._3C-S2

${text_enter_otp_code_that_has_been_sent_to}        css=._3HpB6 > .GLAMB
${text_email_restration_account}                    css=._3HpB6 > ._3ynOi

${field_register_otp_1}                             css=div:nth-of-type(1) > .eKKpu
${field_register_otp_2}                             css=div:nth-of-type(2) > .eKKpu
${field_register_otp_3}                             css=div:nth-of-type(3) > .eKKpu
${field_register_otp_4}                             css=div:nth-of-type(4) > .eKKpu
${field_register_otp_5}                             css=div:nth-of-type(5) > .eKKpu
${field_register_otp_6}                             css=div:nth-of-type(6) > .eKKpu

${button_register_verify}                           css=._3C-S2
${text_register_wrong_code_verify}                  xpath=/html//div[@id='app']/div[@class='_3e0P_']//form[@class='_3HpB6']//p[.='Verification code is incorrect or has expired']

${button_register_create_account_empty}             css=._1otG9 > ._3C-S2.nA5CF

${button_register_subcription_plan}                 css=div:nth-of-type(2) > div:nth-of-type(2) > a
${scroll_register_pay_subcription}                  css=.css-vdka53 > div:nth-of-type(1)
${button_register_pay_subcription}                  css=div:nth-of-type(5) > .css-hwiqbu > .css-1fu35er


*** Keywords ***

Click Create Account Now
    Wait Until Element Is Visible                   ${links_login_create_account_now}
    Click Element                                   ${links_login_create_account_now}

Input all the field and tick the agreement
    [Arguments]  ${EMAIL}   ${PASSWORD}
    Wait Until Element Is Visible                   ${field_register_email}
    Input Text                                      ${field_register_email}              ${EMAIL}
    Input Text                                      ${field_register_password}           ${PASSWORD}
    Input Text                                      ${field_register_confirm_password}   ${PASSWORD}

Click Register Button
    Wait Until Element Is Visible                   ${button_register_create_account}
    Click Element                                   ${button_register_create_account}
    Sleep                                           5

Verify Enter OTP Code
    Wait Until Element Is Visible                   ${text_enter_otp_code_that_has_been_sent_to}
    Wait Until Element Is Visible                   ${text_email_restration_account}

Enter the wrong verification code
    [Arguments]  ${1}   ${2}  ${3}   ${4}   ${5}    ${6}
    Wait Until Element Is Visible                   ${field_register_otp_1}
    Input Text                                      ${field_register_otp_1}                  ${1}
    Input Text                                      ${field_register_otp_2}                  ${2}
    Input Text                                      ${field_register_otp_3}                  ${3}
    Input Text                                      ${field_register_otp_4}                  ${4}
    Input Text                                      ${field_register_otp_5}                  ${5}
    Input Text                                      ${field_register_otp_6}                  ${6}

Select Verify button
    Wait Until Element Is Visible                   ${button_register_verify}
    Click Element                                   ${button_register_verify}

Verify User Input Incorrect Verification Code
    Wait Until Element Is Visible                   ${text_register_wrong_code_verify}
    Element Text Should Be                          ${text_register_wrong_code_verify}       Verification code is incorrect or has expired

Can Not click button Register
    Wait Until Element Is Visible                   ${button_register_create_account_empty}
    Element Should Be Disabled                      ${button_register_create_account_empty}

Input the field with invalid fields format
    [Arguments]  ${EMAIL}   ${PASSWORD}
    Wait Until Element Is Visible                   ${field_register_email}
    Input Text                                      ${field_register_email}              ${EMAIL}
    Input Text                                      ${field_register_password}           ${PASSWORD}
    Input Text                                      ${field_register_confirm_password}   ${PASSWORD}

Select any special assets or content
    [Arguments]                                     ${URL_SAMPLE_MOVIE}
    Go To                                           ${URL_SAMPLE_MOVIE}

Select buy package
    Sleep                                           3
    Scroll Element Into View                        ${button_register_subcription_plan}
    Wait Until Element Is Visible                   ${button_register_subcription_plan}
    Click Element                                   ${button_register_subcription_plan}

Choose package
    Sleep                                           2
#    Mouse Over                                      ${button_register_pay_subcription}
#    Scroll To Element                               ${button_register_pay_subcription}
    Scroll Element Into View                        ${scroll_register_pay_subcription}
    Wait Until Element Is Visible                   ${scroll_register_pay_subcription}      5

    Element Should Be Visible                       ${button_register_pay_subcription}
    Wait Until Element Is Visible                   ${button_register_pay_subcription}
    Click Element                                   ${button_register_pay_subcription}