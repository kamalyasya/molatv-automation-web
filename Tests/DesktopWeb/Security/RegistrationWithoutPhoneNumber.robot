*** Settings ***
Resource                ../../../Frameworks/Routers.robot

Test Timeout            ${DEFAULT_TEST_TIMEOUT}
Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}                              ${HOST}/accounts/login

${EMAIL}                            kamal.yasha+001@mola
${PASSWORD}                         6666969

${EMAIL_REGISTERED1}                kamalputriandini@mola.tv
${PASSWORD_REGISTERED1}             1234567890

${EMAIL_REGISTERED2}                putri.nuradibah@mola
${PASSWORD_REGISTERED2}             0987654321


${SAMPLE_MOVIE_URL}                 ${HOST}/watch?v=vd75626478


*** Test Cases ***
TC001 Register with Email
    [Documentation]         User can register (and login) using Email address
	[Tags]                  Skip

	Log                     Reason Can't Automated : Can't automate using VALID OTP

TC002 Input wrong OTP number after Registration process
    [Documentation]         Input wrong OTP number at registration flow.
    ...                     Already go through registration process and in input OTP page
	[Tags]                  Regression  Smoke   Verified
	${RANDOM_NUMBER}        Generate random string      10      0123456789
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@mola.tv
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@gmail.com

    HomePage.Open Login Page
    RegistrationWithoutPhoneNumberPage.Click Tab Register Create New Account
    RegistrationWithoutPhoneNumberPage.Input all the field and tick the agreement      ${EMAIL}     ${PASSWORD}
    RegistrationWithoutPhoneNumberPage.Click Register Button
    RegistrationWithoutPhoneNumberPage.Verify Enter OTP Code
    RegistrationWithoutPhoneNumberPage.Enter the wrong verification code                    1       2      3       4      5       6
    RegistrationWithoutPhoneNumberPage.Select Verify button
    RegistrationWithoutPhoneNumberPage.Verify User Input Incorrect Verification Code

TC003 Resend OTP number code
    [Documentation]         Click Kirim Ulang to get the OTP number code.
    ...                     Already go through registration process and in input OTP page
	[Tags]                  Regression  Smoke   NeedVerify
	${RANDOM_NUMBER}        Generate random string      10      0123456789
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@mola.tv
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@gmail.com

    HomePage.Open Login Page
    RegistrationWithoutPhoneNumberPage.Click Tab Register Create New Account
    RegistrationWithoutPhoneNumberPage.Input all the field and tick the agreement      ${EMAIL}     ${PASSWORD}
    RegistrationWithoutPhoneNumberPage.Click Register Button
    RegistrationWithoutPhoneNumberPage.Verify Enter OTP Code
    RegistrationWithoutPhoneNumberPage.Enter the wrong verification code                    1       2      3       4      5       6
    RegistrationWithoutPhoneNumberPage.Select Verify button
    SettingsPage.Verify Input Wrong OTP Number Code
    SettingsPage.Click Resend OTP Number Code
    SettingsPage.Verify OTP Message Is Appeared
    SettingsPage.Verify Resend OTP Number Code 60 Second

    # Verifikasi message terikirim  -> SettingsPage.Verify OTP Message Is Appeared
    # Verify 60s -> added -> SettingsPage.Verify Resend OTP Number Code 60 Second


TC004 Registration with wrong information
    [Documentation]         User is unable to register their email and password from the website.
    [Tags]                  Regression  Smoke   Verified

	${RANDOM_NUMBER}        Generate random string      10      0123456789
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@mola.tv
    ${PASSWORD}             Catenate            molamola${RANDOM_NUMBER}

    HomePage.Open Login Page
    RegistrationWithoutPhoneNumberPage.Click Tab Register Create New Account
    RegistrationWithoutPhoneNumberPage.Input the field with invalid fields format       ${EMAIL_REGISTERED2}     ${PASSWORD_REGISTERED2}
    RegistrationWithoutPhoneNumberPage.Click Register Button
#    RegistrationWithoutPhoneNumberPage.Can Not click button Register

    Log     Input email already register, a top alert bar show up : Email Already Exists Close
    Register Using Email Password                                   ${ACCOUNT_CINCIN_EMAIL}             1234566             1234566
    RegistrationWithoutPhoneNumberPage.Click Register Button
    Verify Notification Message On Registration Page Is Appeared    Email Already Exists


    Log     Input email with wrong format, a message show up : Wrong email format
    Register Using Email Password                                   cincin.jati@molatv                  1234566             1234566
    Verify Error Message On Email Field                             Email format is incorrect

    Log     Input nothing at email field, a message show up : Email cannot be empty
    Register Using Email Password                                   email           ${EMPTY}            ${EMPTY}
    Clear Registration Email Field
    Verify Error Message On Email Field                             Email must be filled

    Log     Input only 5 charcter at password field, a message show up :Must contain at least 6 characters
    Register Using Email Password                                   ${EMAIL}        12345               12345
    Verify Error Message On Password Field                          Must contain at least 6 characters

    Log     Input nothing at password field, a message show up : Password must not be empty
    Register Using Email Password                                   ${EMAIL}        12345            12345
    Clear Registration Password Field
    Verify Error Message On Password Field                          Password must be filled

    Log     Input confirm password is not same as password, a message show up : Wrong password confirmation
    Register Using Email Password                                   ${EMAIL}        ${PASSWORD}         ${PASSWORD}1
    Verify Error Message On Confirm Password Field                  Password confirm do not match
    # kurang verify / belum sesuai test case

TC005 Registration from special assets
    [Documentation]         User is able to register their email and password from the website.
    [Tags]                  Regression  Smoke   Verified

	${RANDOM_NUMBER}        Generate random string      10      0123456789
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@mola.tv
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@gmail.com

    HomePage.Open Login Page
    RegistrationWithoutPhoneNumberPage.Select any special assets or content               ${SAMPLE_MOVIE_URL}
    MovieDetailPage.Login from movie detail
    RegistrationWithoutPhoneNumberPage.Click Tab Register Create New Account
    RegistrationWithoutPhoneNumberPage.Input all the field and tick the agreement      ${EMAIL}     ${PASSWORD}
    RegistrationWithoutPhoneNumberPage.Click Register Button
    RegistrationWithoutPhoneNumberPage.Verify Enter OTP Code
    Reload Page
    Go Back
    Reload Page

TC006 Registration from Beli Paket Page
    [Documentation]         User is able to register their email and password from the website.
    [Tags]                  Regression  Smoke   Verified

    ${RANDOM_NUMBER}        Generate random string      10      0123456789
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@mola.tv
    ${EMAIL}			    Catenate	        kamal.yasha+${RANDOM_NUMBER}@gmail.com

    HomePage.Open Login Page
    HomePage.Open Beli Akses Menu
    SubscriptionPackagePage.Choose A Package
    RegistrationWithoutPhoneNumberPage.Click Tab Register Create New Account Subscription Plan
    RegistrationWithoutPhoneNumberPage.Input all the field and tick the agreement      ${EMAIL}     ${PASSWORD}
    RegistrationWithoutPhoneNumberPage.Click Register Button
    RegistrationWithoutPhoneNumberPage.Verify Enter OTP Code
    Reload Page
    Go Back
    Reload Page