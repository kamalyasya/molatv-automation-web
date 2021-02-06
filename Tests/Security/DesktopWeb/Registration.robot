*** Settings ***
Resource                ../../../Frameworks/Routers.robot
Library         	    SeleniumLibrary
Library 				String

Test Timeout            ${DEFAULT_TEST_TIMEOUT}
Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}                              https://mola.tv/accounts/login

${EMAIL}                            kamal.yasha+001@mola
${PASSWORD}                         11111444

${EMAIL_REGISTERED1}                kamalputriandini@mola.tv
${PASSWORD_REGISTERED1}             1234567890

${EMAIL_REGISTERED2}                putri.nuradibah@mola
${PASSWORD_REGISTERED2}             0987654321

${EMAIL}                            kamal.yasha+001@mola
${PASSWORD}                         11115555

${SAMPLE_MOVIE_URL}                 https://mola.tv/watch?v=vd75626478

*** Test Cases ***
TC001 Registration with email and password
    [Documentation]         User is able to register their email and password from the website.
	[Tags]                  Regression  Smoke
	${RANDOM_NUMBER}        Generate random string      10      0123456789
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@mola.tv
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@gmail.com

    RegistrationPage.Click Register Sekarang
    RegistrationPage.Input all the field and tick the agreement      ${EMAIL}     ${PASSWORD}
    RegistrationPage.Click Register Button
    RegistrationPage.Verify Enter OTP Code

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

    RegistrationPage.Click Register Sekarang
    RegistrationPage.Input all the field and tick the agreement      ${EMAIL}     ${PASSWORD}
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

    RegistrationPage.Click Register Sekarang
    RegistrationPage.Input all the field and tick the agreement      ${EMAIL}     ${PASSWORD}
    RegistrationPage.Click Register Button
    RegistrationPage.Input OTP                                       1       2      3       4      5       6
    RegistrationPage.Click Verifikasi
    SettingsPage.Verify Input Wrong OTP Number Code
    SettingsPage.Click Resend OTP Number Code
    SettingsPage.Verify Resend OTP Number Code 60 Second

TC005 Registration without required information
    [Documentation]                 User is unable to register their email and password from the application.
    [Tags]                          Regression  Smoke

    RegistrationPage.Click Register Sekarang
    RegistrationPage.Input the field with empty mandatory fields and tick the agreement         ${EMAIL_REGISTERED1}     ${PASSWORD_REGISTERED1}
    RegistrationPage.Click Register Button
    RegistrationPage.Can Not click button Register
    Reload Page
    Go Back
    Reload Page

#TC006 No auto login after Registration
#    [Documentation]         After register process, user should input email address and password to login.
#    [Tags]                  Regression
#
#    Reason Can't Automated ?        Cause , This Test Case Use Valid OTP

TC007 Registration with wrong information
    [Documentation]                 User is unable to register their email and password from the website.
    [Tags]                          Regression  Smoke

    RegistrationPage.Click Register Sekarang
    RegistrationPage.Input the field with invalid fields format and tick the agreement          ${EMAIL_REGISTERED2}     ${PASSWORD_REGISTERED2}
    RegistrationPage.Click Register Button
    RegistrationPage.Can Not click button Register
    Reload Page
    Go Back
    Reload Page

TC008 Registration from special assets
    [Documentation]                 User is able to register their email and password from the website.
    [Tags]                          Regression  Smoke

	${RANDOM_NUMBER}        Generate random string      10      0123456789
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@mola.tv
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@gmail.com

    RegistrationPage.Select any special assets or content                                       ${SAMPLE_MOVIE_URL}
    MovieDetailPage.Login from movie detail
    RegistrationPage.Click Register Sekarang
    RegistrationPage.Input all the field and tick the agreement      ${EMAIL}     ${PASSWORD}
    RegistrationPage.Click Register Button
    RegistrationPage.Verify Enter OTP Code
    Reload Page
    Go Back
    Reload Page

TC009 Registration from Beli Paket Page
    [Documentation]                 User is able to register their email and password from the website.
    [Tags]                          Regression  Smoke

    ${RANDOM_NUMBER}        Generate random string      10      0123456789
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@mola.tv
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@gmail.com

    RegistrationPage.Select Beli Paket
    RegistrationPage.Choose package
    RegistrationPage.Click Register Sekarang
    RegistrationPage.Input all the field and tick the agreement      ${EMAIL}     ${PASSWORD}
    RegistrationPage.Click Register Button
    RegistrationPage.Verify Enter OTP Code
    Reload Page
    Go Back
    Reload Page