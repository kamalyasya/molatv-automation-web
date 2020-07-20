*** Settings ***
Resource                ../../../Frameworks/Routers.robot
Library         	    SeleniumLibrary

Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}                  https://mola.tv/accounts/login

${EMAIL}                kamal.yasha+012@mola.tv
${PASSWORD}             1231233
${PHONE}                62812111899
${GENDER}               Pria
${BULAN}                January
${TAHUN}                2000
${TANGGAL}              8



*** Test Cases ***
Security - Registra: Sign Up with email and password
    [documentation]  Security - Registration: Sign Up with email and password
	[tags]  regression smoke

    RegistrationPage.Click Register Sekarang
    RegistrationPage.Input Register Column      ${EMAIL}     ${PASSWORD}    ${PHONE}    ${GENDER}   ${BULAN}    ${TAHUN}    ${TANGGAL}
    RegistrationPage.Click Register Button
    RegistrationPage.User Successfully Register