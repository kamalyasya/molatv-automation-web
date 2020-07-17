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
${GENDER}               Pria



*** Test Cases ***
Security - Registra: Sign Up with email and password
    [documentation]  Security - Registration: Sign Up with email and password
	[tags]  regression smoke

    001_RegisterPage.Click A
    001_RegisterPage.Input A      ${EMAIL}     ${PASSWORD}    ${PHONE}
    001_RegisterPage.Click A