*** Settings ***
Resource                ../../../Frameworks/Routers.robot
Library         	    SeleniumLibrary
Library 				String

Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}                  https://mola.tv/accounts/login

${EMAIL}                kamal.yasha+001@mola
${PASSWORD}             11111333
${PHONE}                6281297186777
${GENDER}               Pria
${BULAN}                January
${TAHUN}                2000
${TANGGAL}              8

${EMAIL_REGISTERED}                mitha.andini@mola.tv
${PASSWORD_REGISTERED}             999999333
${PHONE_REGISTERED}                6281297184444

${EMAIL}                        kamal.yasha+001@mola
${PASSWORD}                     11111333
${PHONE}                        6281297186777
${GENDER_INVALID}               Wanita
${BULAN_INVALID}                January
${TAHUN_INVALID}                1900
${TANGGAL_INVALID}              1


*** Test Cases ***
TC001 Registration with email and password
    [Documentation]         User is able to register their email and password from the website.
	[Tags]                  Regression  Smoke
	${RANDOM_NUMBER}        Generate random string      10      0123456789
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@mola.tv
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@gmail.com
    ${PHONE}			    Catenate 	        62${RANDOM_NUMBER}

    RegistrationPage.Click Register Sekarang
    RegistrationPage.Input all the field and tick the agreement      ${EMAIL}     ${PASSWORD}    ${PHONE}    ${GENDER}   ${BULAN}    ${TAHUN}    ${TANGGAL}
    RegistrationPage.Click Register Button
    RegistrationPage.User Successfully Register


#TC002 Input OTP number after Registration process
#    [Documentation]         Already go through registration process
#    [Tags]                  Regression  Smoke
#
#    Reason Can't Automated ?        Cause , Test Automation Can Not Handle OTP (Random Number)


TC003 Input wrong OTP number after Registration process
    [Documentation]         Input wrong OTP number at registration flow.
    [Tags]                  Regression  Smoke

    RegistrationPage.Click Register Sekarang
    RegistrationPage.Input all the field and tick the agreement      ${EMAIL_REGISTERED}     ${PASSWORD_REGISTERED}    ${PHONE_REGISTERED}    ${GENDER}   ${BULAN}    ${TAHUN}    ${TANGGAL}
    RegistrationPage.Click Register Button
    RegistrationPage.Input OTP                                       1       2      3       4      5       6
    RegistrationPage.Click Verifikasi
    RegistrationPage.User Input Incorrect Verification Code

TC004 Resend OTP number code
    [Documentation]                 Click Kirim Ulang to get the OTP number code
    ...                             User already finish input all the field at Register page.
    [Tags]                          Regression  Smoke

    RegistrationPage.Click Register Sekarang
    RegistrationPage.Input all the field and tick the agreement      ${EMAIL_REGISTERED}     ${PASSWORD_REGISTERED}    ${PHONE_REGISTERED}    ${GENDER}   ${BULAN}    ${TAHUN}    ${TANGGAL}
    RegistrationPage.Click Register Button
    RegistrationPage.Click Kirim Ulang
    RegistrationPage.Verify User Kode verifikasi terkirim

TC005 Registration without required information
    [Documentation]                 User is unable to register their email and password from the application.
    [Tags]                          Regression  Smoke

    RegistrationPage.Click Register Sekarang empty mandatory
    RegistrationPage.Input the field with empty mandatory fields and tick the agreement         ${EMAIL_REGISTERED}     ${PASSWORD_REGISTERED}    ${PHONE_REGISTERED}    ${GENDER}   ${BULAN}    ${TAHUN}    ${TANGGAL}
    RegistrationPage.Click Register Button empty mandatory
    RegistrationPage.Can Not click button Register

#TC006 No auto login after Registration
#    [Documentation]         After register process, user should input email address and password to login.
#    [Tags]                  Regression
#
#    Reason Can't Automated ?        Cause , This Test Case Use Valid OTP

TC007 Registration with wrong information
    [Documentation]                 User is unable to register their email and password from the website.
    [Tags]                          Regression  Smoke

    RegistrationPage.Click Register Sekarang invalid
    RegistrationPage.Input the field with invalid fields format and tick the agreement          ${EMAIL_REGISTERED}     ${PASSWORD_REGISTERED}    ${PHONE_REGISTERED}    ${GENDER_INVALID}   ${BULAN_INVALID}    ${TAHUN_INVALID}    ${TANGGAL_INVALID}
    RegistrationPage.Click Register Button invalid
    RegistrationPage.User Cannot Register