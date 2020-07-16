*** Settings ***
Resource                ../../../Frameworks/Routers.robot
Library         	    SeleniumLibrary

Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}                  https://mola.tv/accounts/login

${EMAIL}                kamal.yasha@mola.tv
${PASSWORD}             123123
${PHONE}                628123213123

${EMAIL_2}              cincin.jati@mola.tv
*** Test Cases ***
Security - Registration: Sign Up with email and password
    [documentation]  Security - Registration: Sign Up with email and password
	[tags]  regression smoke

    Click Register Links
    Input Requied Text      ${EMAIL}     ${PASSWORD}    ${PHONE}
    Click Button Register

Security - Registration: Sign Up with email and password
    [documentation]  Security - Registration: Sign Up with email and password
	[tags]  regression smoke

    Click Register Links
    Input Requied Text      ${EMAIL_2}     ${PASSWORD}    ${PHONE}
    Click Button Register               