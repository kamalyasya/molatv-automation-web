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
${PASSWORD}                         6666969

${EMAIL_REGISTERED1}                kamalputriandini@mola.tv
${PASSWORD_REGISTERED1}             1234567890

${EMAIL_REGISTERED2}                putri.nuradibah@mola
${PASSWORD_REGISTERED2}             0987654321


${SAMPLE_MOVIE_URL}                 https://mola.tv/watch?v=vd75626478


*** Test Cases ***

TC002 Input wrong OTP number after Registration process
    [Documentation]         Input wrong OTP number at registration flow.
    ...                     Already go through registration process and in input OTP page
	[Tags]                  Regression  Smoke
	${RANDOM_NUMBER}        Generate random string      10      0123456789
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@mola.tv
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@gmail.com

    RegistrationWithoutPhoneNumberPage.Click Create Account Now
    RegistrationWithoutPhoneNumberPage.Input all the field and tick the agreement      ${EMAIL}     ${PASSWORD}
    RegistrationWithoutPhoneNumberPage.Click Register Button
    RegistrationWithoutPhoneNumberPage.Verify Enter OTP Code
    RegistrationWithoutPhoneNumberPage.Enter the wrong verification code                    1       2      3       4      5       6
    RegistrationWithoutPhoneNumberPage.Select Verify button
    RegistrationWithoutPhoneNumberPage.Verify User Input Incorrect Verification Code

TC003 Resend OTP number code
    [Documentation]         Click Kirim Ulang to get the OTP number code.
    ...                     Already go through registration process and in input OTP page
	[Tags]                  Regression  Smoke
	${RANDOM_NUMBER}        Generate random string      10      0123456789
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@mola.tv
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@gmail.com

    RegistrationWithoutPhoneNumberPage.Click Create Account Now
    RegistrationWithoutPhoneNumberPage.Input all the field and tick the agreement      ${EMAIL}     ${PASSWORD}
    RegistrationWithoutPhoneNumberPage.Click Register Button
    RegistrationWithoutPhoneNumberPage.Verify Enter OTP Code
    RegistrationWithoutPhoneNumberPage.Enter the wrong verification code                    1       2      3       4      5       6
    RegistrationWithoutPhoneNumberPage.Select Verify button
    SettingsPage.Verify Input Wrong OTP Number Code
    SettingsPage.Click Resend OTP Number Code
    SettingsPage.Verify Resend OTP Number Code 60 Second

TC004 Registration with wrong information
    [Documentation]         User is unable to register their email and password from the website.
    [Tags]                  Regression  Smoke

    RegistrationWithoutPhoneNumberPage.Click Create Account Now
    RegistrationWithoutPhoneNumberPage.Input the field with invalid fields format       ${EMAIL_REGISTERED2}     ${PASSWORD_REGISTERED2}
    RegistrationWithoutPhoneNumberPage.Click Register Button
    RegistrationWithoutPhoneNumberPage.Can Not click button Register
    Reload Page
    Go Back
    Reload Page

TC005 Registration from special assets
    [Documentation]         User is able to register their email and password from the website.
    [Tags]                  Regression  Smoke

	${RANDOM_NUMBER}        Generate random string      10      0123456789
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@mola.tv
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@gmail.com

    RegistrationWithoutPhoneNumberPage.Select any special assets or content               ${SAMPLE_MOVIE_URL}
    MovieDetailPage.Login from movie detail
    RegistrationWithoutPhoneNumberPage.Click Create Account Now
    RegistrationWithoutPhoneNumberPage.Input all the field and tick the agreement      ${EMAIL}     ${PASSWORD}
    RegistrationWithoutPhoneNumberPage.Click Register Button
    RegistrationWithoutPhoneNumberPage.Verify Enter OTP Code
    Reload Page
    Go Back
    Reload Page

TC006 Registration from Beli Paket Page
    [Documentation]         User is able to register their email and password from the website.
    [Tags]                  Regression  Smoke

    ${RANDOM_NUMBER}        Generate random string      10      0123456789
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@mola.tv
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@gmail.com

    HomePage.Open Beli Akses Menu
    SubscriptionPackagePage.Choose A Package
    RegistrationWithoutPhoneNumberPage.Click Create Account Now
    RegistrationWithoutPhoneNumberPage.Input all the field and tick the agreement      ${EMAIL}     ${PASSWORD}
    RegistrationWithoutPhoneNumberPage.Click Register Button
    RegistrationWithoutPhoneNumberPage.Verify Enter OTP Code
    Reload Page
    Go Back
    Reload Page