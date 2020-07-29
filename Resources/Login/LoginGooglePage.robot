*** Settings ***
Library         	    SeleniumLibrary
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${field_login_google_email}                 css=input#identifierId
${field_login_google_password}              css=input[name='password']
${button_login_google_berikutnya}           css=div#identifierNext .VfPpkd-RLmnJb
${button_login_google_berikutnya_password}  css=div#passwordNext .VfPpkd-RLmnJb

*** Keywords ***
Login Using Google Account
    [Arguments]  ${GOOGLE_ACCOUNT__EMAIL}    ${GOOGLE_ACCOUNT_PASSWORD}
    Wait Until Element Is Visible           ${field_login_google_email}
    Input Text                              ${field_login_google_email}                         ${GOOGLE_ACCOUNT__EMAIL}
    Click Element                           ${button_login_google_berikutnya}
    Wait Until Element Is Visible           ${field_login_google_password}
    Input Text                              ${field_login_google_password}                      ${GOOGLE_ACCOUNT_PASSWORD}
    Click Element                           ${button_login_google_berikutnya_password}