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

TC007 Input wrong OTP number after Registration process
    [Documentation]         Input wrong OTP number at registration flow.
    ...                     Already go through registration process and in input OTP page
	[Tags]                  Regression  Smoke
	${RANDOM_NUMBER}        Generate random string      10      0123456789
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@mola.tv
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@gmail.com

    RegistrationWithPhoneNumberPage.Click Create Account Now
    RegistrationWithPhoneNumberPage.Input all the field and tick the agreement      ${EMAIL}     ${PASSWORD}
    RegistrationWithPhoneNumberPage.Click Register Button
    RegistrationWithPhoneNumberPage.Verify Enter OTP Code
    RegistrationWithPhoneNumberPage.Enter the wrong verification code                    1       2      3       4      5       6
    RegistrationWithPhoneNumberPage.Select Verify button
    RegistrationWithPhoneNumberPage.Verify User Input Incorrect Verification Code

TC008 Resend OTP number code
    [Documentation]         Click Kirim Ulang to get the OTP number code.
    ...                     Already go through registration process and in input OTP page
	[Tags]                  Regression  Smoke
	${RANDOM_NUMBER}        Generate random string      10      0123456789
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@mola.tv
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@gmail.com

    RegistrationWithPhoneNumberPage.Click Create Account Now
    RegistrationWithPhoneNumberPage.Input all the field and tick the agreement      ${EMAIL}     ${PASSWORD}
    RegistrationWithPhoneNumberPage.Click Register Button
    RegistrationWithPhoneNumberPage.Verify Enter OTP Code
    RegistrationWithPhoneNumberPage.Enter the wrong verification code                    1       2      3       4      5       6
    RegistrationWithPhoneNumberPage.Select Verify button
    SettingsPage.Verify Input Wrong OTP Number Code
    SettingsPage.Click Resend OTP Number Code
    SettingsPage.Verify Resend OTP Number Code 60 Second

TC009 Registration with wrong information
    [Documentation]         User is unable to register their email and password from the website.
    [Tags]                  Regression  Smoke

    RegistrationWithPhoneNumberPage.Click Create Account Now
    RegistrationWithPhoneNumberPage.Input the field with invalid fields format       ${EMAIL_REGISTERED2}     ${PASSWORD_REGISTERED2}
    RegistrationWithPhoneNumberPage.Click Register Button
    RegistrationWithPhoneNumberPage.Can Not click button Register
    Reload Page
    Go Back
    Reload Page