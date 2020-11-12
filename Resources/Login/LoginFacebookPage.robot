*** Settings ***
Library         	    SeleniumLibrary
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${field_login_facebook_email}                 id=email
${field_login_facebook_password}              id=pass
${button_login_facebook}                      id=loginbutton

*** Keywords ***
Login Using Facebook Account
    [Arguments]  ${FACEBOOK_ACCOUNT_EMAIL}    ${FACEBOOK_ACCOUNT_PASSWORD}
    Wait Until Element Is Visible           ${field_login_facebook_email}
    Input Text                              ${field_login_facebook_email}                         ${FACEBOOK_ACCOUNT_EMAIL}
    Input Password                          ${field_login_facebook_password}                      ${FACEBOOK_ACCOUNT_PASSWORD}
    Click Element                           ${button_login_facebook}