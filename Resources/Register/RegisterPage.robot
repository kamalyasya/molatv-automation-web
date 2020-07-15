*** Settings ***
Library         	    SeleniumLibrary
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${links_login_register_sekarang}          css=[href='\/accounts\/register']

${text_register_email}                    id=email
${text_register_confirm_email}            id=confirmEmail
${text_register_password}                 id=password
${text_register_confirm_password}         id=confirmPassword
${text_register_phone}                    id=phone
#${text_register_phone}                    id=phone




*** Keywords ***
Click Register Links
    Wait Until Element Is Visible           ${links_login_register_sekarang}
    Click Element                           ${links_login_register_sekarang}

Input Requied Text
    [Arguments]  ${EMAIL}   ${PASSWORD}  ${PHONE}
    Wait Until Element Is Visible           ${text_register_email}
    Input Text                              ${text_register_email}              ${EMAIL}
    Input Text                              ${text_register_confirm_email}      ${EMAIL}
    Input Text                              ${text_register_password}           ${PASSWORD}
    Input Text                              ${text_register_confirm_password}   ${PASSWORD}
    Input Text                              ${text_register_phone}              ${PHONE}
    


Click Button Register
    Log To Console          Test