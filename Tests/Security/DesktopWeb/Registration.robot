*** Settings ***
Resource                ../../../Frameworks/Routers.robot
Library         	    SeleniumLibrary
Library 				String

Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}                              https://mola.tv/accounts/login

${EMAIL}                            kamal.yasha+001@mola
${PASSWORD}                         11111444
${PHONE}                            6281297186666
${GENDER}                           Pria
${BULAN}                            January
${TAHUN}                            2000
${TANGGAL}                          8

${EMAIL_REGISTERED1}                kamalputriandini@mola.tv
${PASSWORD_REGISTERED1}             1234567890
${PHONE_REGISTERED1}                62812971234567

${EMAIL_REGISTERED2}                putri.nuradibah@mola.tv
${PASSWORD_REGISTERED2}             0987654321
${PHONE_REGISTERED2}                6281297185678

${EMAIL}                            kamal.yasha+001@mola
${PASSWORD}                         11115555
${PHONE}                            6281297112345
${GENDER_INVALID}                   Wanita
${BULAN_INVALID}                    January
${TAHUN_INVALID}                    1900
${TANGGAL_INVALID}                  1

${SAMPLE_MOVIE_URL}                 https://mola.tv/watch?v=vd75626478

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
    RegistrationPage.Verify Masukkan Kode Verifikasi Page

#TC002 Input OTP number after Registration process
#    [Documentation]         Already go through registration process
#    [Tags]                  Regression  Smoke
#
#    Reason Can't Automated ?        Cause , Test Automation Can Not Handle OTP (Random Number)

TC003 Input wrong OTP number after Registration process
    [Documentation]         Input wrong OTP number at registration flow.
    [Tags]                  Regression  Smoke
    ${RANDOM_NUMBER}        Generate random string      10      0123456789
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@mola.tv
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@gmail.com
    ${PHONE}			    Catenate 	        62${RANDOM_NUMBER}

    RegistrationPage.Click Register Sekarang
    RegistrationPage.Input all the field and tick the agreement      ${EMAIL}     ${PASSWORD}    ${PHONE}    ${GENDER}   ${BULAN}    ${TAHUN}    ${TANGGAL}
    RegistrationPage.Click Register Button
    RegistrationPage.Input OTP                                       1       2      3       4      5       6
    RegistrationPage.Click Verifikasi
    RegistrationPage.User Input Incorrect Verification Code

TC004 Resend OTP number code
    [Documentation]                 Click Kirim Ulang to get the OTP number code
    ...                             User already finish input all the field at Register page.
    [Tags]                          Regression  Smoke
    ${RANDOM_NUMBER}        Generate random string      10      0123456789
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@mola.tv
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@gmail.com
    ${PHONE}			    Catenate 	        62${RANDOM_NUMBER}

    RegistrationPage.Click Register Sekarang
    RegistrationPage.Input all the field and tick the agreement      ${EMAIL}     ${PASSWORD}    ${PHONE}    ${GENDER}   ${BULAN}    ${TAHUN}    ${TANGGAL}
    RegistrationPage.Click Register Button
    RegistrationPage.Click Kirim Ulang
    RegistrationPage.Verify User Kode verifikasi terkirim

TC005 Registration without required information
    [Documentation]                 User is unable to register their email and password from the application.
    [Tags]                          Regression  Smoke

    RegistrationPage.Click Register Sekarang
    RegistrationPage.Input the field with empty mandatory fields and tick the agreement         ${EMAIL_REGISTERED1}     ${PASSWORD_REGISTERED1}    ${PHONE_REGISTERED1}    ${GENDER}   ${BULAN}    ${TAHUN}    ${TANGGAL}
    RegistrationPage.Click Register Button
    RegistrationPage.Can Not click button Register

#TC006 No auto login after Registration
#    [Documentation]         After register process, user should input email address and password to login.
#    [Tags]                  Regression
#
#    Reason Can't Automated ?        Cause , This Test Case Use Valid OTP

TC007 Registration with wrong information
    [Documentation]                 User is unable to register their email and password from the website.
    [Tags]                          Regression  Smoke

    RegistrationPage.Click Register Sekarang
    RegistrationPage.Input the field with invalid fields format and tick the agreement          ${EMAIL_REGISTERED1}     ${PASSWORD_REGISTERED1}    ${PHONE_REGISTERED1}    ${GENDER_INVALID}   ${BULAN_INVALID}    ${TAHUN_INVALID}    ${TANGGAL_INVALID}
    RegistrationPage.Click Register Button
    RegistrationPage.User Cannot Register

TC008 Registration from special assets
    [Documentation]                 User is able to register their email and password from the website.
    [Tags]                          Regression  Smoke

	${RANDOM_NUMBER}        Generate random string      10      0123456789
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@mola.tv
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@gmail.com
    ${PHONE}			    Catenate 	        62${RANDOM_NUMBER}

    RegistrationPage.Select any special assets or content                                       ${SAMPLE_MOVIE_URL}
    MovieDetailPage.Login from movie detail
    RegistrationPage.Click Register Sekarang
    RegistrationPage.Input all the field and tick the agreement      ${EMAIL}     ${PASSWORD}    ${PHONE}    ${GENDER}   ${BULAN}    ${TAHUN}    ${TANGGAL}
    RegistrationPage.Click Register Button
    RegistrationPage.Verify Masukkan Kode Verifikasi Page

TC009 Registration from Beli Paket Page
    [Documentation]                 User is able to register their email and password from the website.
    [Tags]                          Regression  Smoke

    ${RANDOM_NUMBER}        Generate random string      10      0123456789
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@mola.tv
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@gmail.com
    ${PHONE}			    Catenate 	        62${RANDOM_NUMBER}

    RegistrationPage.Select Beli Paket
    RegistrationPage.Choose package
    RegistrationPage.Click Register Sekarang
    RegistrationPage.Input all the field and tick the agreement      ${EMAIL}     ${PASSWORD}    ${PHONE}    ${GENDER}   ${BULAN}    ${TAHUN}    ${TANGGAL}
    RegistrationPage.Click Register Button
    RegistrationPage.Verify Masukkan Kode Verifikasi Page