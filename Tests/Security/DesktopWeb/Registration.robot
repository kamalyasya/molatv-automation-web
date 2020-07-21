*** Settings ***
Resource                ../../../Frameworks/Routers.robot
Library         	    SeleniumLibrary
Library 				String

Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}                  https://mola.tv/accounts/login

#${EMAIL}                kamal.yasha+013@mola.tv
${PASSWORD}             1111111
#${PHONE}                62812111222
${GENDER}               Pria
${BULAN}                January
${TAHUN}                2000
${TANGGAL}              8

${EMAIL_REGISTERED}                kamal.putra@mola.tv
${PASSWORD_REGISTERED}             222222
${PHONE_REGISTERED}                62812123098

*** Test Cases ***
#TC001 Registration with email and password
#    [Documentation]     User is able to register their email and password from the website.
#	[Tags]              Regression  Smoke
#	${RANDOM_NUMBER}    Generate random string    10    0123456789
#    ${EMAIL}			Catenate	kamal.yasha+${RANDOM_NUMBER}@mola.tv
##    ${EMAIL}			Catenate	kamal.yasha+${RANDOM_NUMBER}@gmail.com
#    ${PHONE}			Catenate 	62${RANDOM_NUMBER}
#
#    RegistrationPage.Click Register Sekarang
#    RegistrationPage.Input all the field and tick the agreement      ${EMAIL}     ${PASSWORD}    ${PHONE}    ${GENDER}   ${BULAN}    ${TAHUN}    ${TANGGAL}
#    RegistrationPage.Click Register Button
#    RegistrationPage.User Successfully Register

TC003 Input wrong OTP number after Registration process
    [Documentation]     Input wrong OTP number at registration flow.
    [Tags]              Regression  Smoke


    RegistrationPage.Click Register Sekarang
    RegistrationPage.Input all the field and tick the agreement      ${EMAIL_REGISTERED}     ${PASSWORD_REGISTERED}    ${PHONE_REGISTERED}    ${GENDER}   ${BULAN}    ${TAHUN}    ${TANGGAL}
    RegistrationPage.Click Register Button
    RegistrationPage.Input OTP                                       1       2      3       4      5       6
    RegistrationPage.Click Verifikasi
    RegistrationPage.User Input Incorrect Verification Code