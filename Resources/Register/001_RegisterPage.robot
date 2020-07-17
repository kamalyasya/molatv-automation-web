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
${text_register_gender}                   name=gender
${text_register_gender_pria}              css=[value='m']
${text_register_Tanggal_Lahir}            css=.react-datepicker-wrapper

*** Keywords ***
Click A
    Wait Until Element Is Visible           ${links_login_register_sekarang}
    Click Element                           ${links_login_register_sekarang}

Input A
    [Arguments]  ${EMAIL}   ${PASSWORD}  ${PHONE}
    Wait Until Element Is Visible           ${text_register_email}
    Input Text                              ${text_register_email}              ${EMAIL}
    Input Text                              ${text_register_confirm_email}      ${EMAIL}
    Input Text                              ${text_register_password}           ${PASSWORD}
    Input Text                              ${text_register_confirm_password}   ${PASSWORD}
    Input Text                              ${text_register_phone}              ${PHONE}
    Click Element                           ${text_register_gender}
    Click Element                           ${text_register_gender_pria}

Click A
    Log To Console          Test