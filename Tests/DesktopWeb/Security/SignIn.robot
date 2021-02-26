*** Settings ***
Resource                ../../../Frameworks/Routers.robot

Test Timeout            ${DEFAULT_TEST_TIMEOUT}
Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}				                    ${HOST}/accounts/login

${EXPECTED_MESSAGE_WRONG_LOGIN}         Either id or password you have entered is invalid
${EXPECTED_MESSAGE_WRONG_LOGIN_7_TIMES}  Too many attempts to enter. Please try again in 10 minutes
${EXPECTED_TITLE_RESET_PASSWORD}        Enter OTP Code that has been sent to
${EXPECTED_TEXT_INVALID_TOKEN}          Verification code is incorrect or has expired
${EXPECTED_TEXT_INVALID_TOKEN2}         INVALID_OTP
${EXPECTED_TEXT_MENU_HOME}              Home
${SAMPLE_MOVIE_URL}                     ${HOST}/watch?v=vd75626478
${EXPECTED_SAMPLE_MOVIE_URL}            ${SAMPLE_MOVIE_URL}

*** Test Cases ***
#TC001 Sign in with wrong credential
#    [Documentation]  User can't signing in using wrong credential.
#	[Tags]  Regression  Smoke
#
#    SignInPage.Login Using Credentials                  ${ACCOUNT_SUPERMOLA1_EMAIL}                     ${ACCOUNT_SUPERMOLA1_WRONG_PASSWORD}
#	SignInPage.Verify A Error Message Show Up           ${EXPECTED_MESSAGE_WRONG_LOGIN}
#
#TC002 Sign in with wrong password for 7 times
#    [Documentation]  User can't signing in using wrong credential.
#	[Tags]  Regression  Smoke
#
#    SignInPage.Input Wrong Credential For 7 Times       ${ACCOUNT_SUPERMOLA2_EMAIL}                     ${ACCOUNT_SUPERMOLA1_WRONG_PASSWORD}
#    SignInPage.Verify A Error Message Show Up           ${EXPECTED_MESSAGE_WRONG_LOGIN_7_TIMES}

#TC003 Sign in with unregistered account
#    [Documentation]  User can't signing in using wrong credential.
#	[Tags]  Regression  Smoke
#
#    SignInPage.Login Using Credentials                  ${ACCOUNT_UNREGISTERED}                         ${ACCOUNT_UNREGISTERED_PASSWORD}
#	SignInPage.Verify A Error Message Show Up           ${EXPECTED_MESSAGE_WRONG_LOGIN}
#   Need to double check again, since test cases are changed

TC005 Input wrong OTP number code
    [Documentation]  Input wrong OTP number at forgot password flow.
	[Tags]  Regression  Smoke

    ${RANDOM_NUMBER}    Generate random string    3    123456789
    ${EMAIL}			Catenate	supermola${RANDOM_NUMBER}@sapisuper.com
    ${PASSWORD}			Catenate	sapisuper${RANDOM_NUMBER}

    SignInPage.Click Lupa Password Links
    ForgotPasswordPage.Input Email                                  ${EMAIL}
    ForgotPasswordPage.Click Button Reset Password
    OtpPage.Verify Direct to Masukkan Kode Verifikasi Page          ${EXPECTED_TITLE_RESET_PASSWORD}
    OtpPage.Input OTP                        1   1   1   1   1   1
    OtpPage.Click Button Verifkasi
    OtpPage.Verify Invalid Token Message Show Up                    ${EXPECTED_TEXT_INVALID_TOKEN}

TC006 Resend OTP number code
    [Documentation]  TC006 Resend OTP number code
	[Tags]  Regression  Smoke

    ${RANDOM_NUMBER}    Generate random string    3    123456789
    ${EMAIL}			Catenate	supermola${RANDOM_NUMBER}@sapisuper.com
    SignInPage.Click Lupa Password Links
    ForgotPasswordPage.Input Email                                  ${EMAIL}
    ForgotPasswordPage.Click Button Reset Password
    OtpPage.Verify Direct to Masukkan Kode Verifikasi Page          ${EXPECTED_TITLE_RESET_PASSWORD}
    OtpPage.Verify Countdown Is Appeared
    OtpPage.Click Resend OTP
    OtpPage.Verify Countdown Is Appeared

#TC007 Page Navigation after sign in
#    [Documentation]  Check page navigation after sign in
#	[Tags]  Regression
#
#    SignInPage.Login Using Credentials                              ${ACCOUNT_SUPERMOLA5_EMAIL}            ${ACCOUNT_SUPERMOLA5_PASSWORD}
#    HomePage.Verify The App Navigates To Home Page                  ${EXPECTED_TEXT_MENU_HOME}
#    ProfilePage.Verify Logged In Using Correct Account              ${ACCOUNT_SUPERMOLA5_EMAIL}

TC009 Sign Out
    [Documentation]  TC009 Sign Out
	[Tags]  Regression  Smoke
    SignInPage.Login Using Credentials                              ${ACCOUNT_PUTRA_EMAIL}           ${ACCOUNT_PUTRA_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account              ${ACCOUNT_PUTRA_EMAIL}
    ProfilePage.Sign Out
    HomePage.Verify The App Navigates To Home Page                  ${EXPECTED_TEXT_MENU_HOME}
    ProfilePage.Verify Sign Out

#TC010 Sign in from special asset
#    [Documentation]  TC010 Sign in from special asset
#    [Tags]  Regression  Smoke
#
#    SignInPage.Select Special Asset                                 ${SAMPLE_MOVIE_URL}
#    MovieDetailPage.Login from movie detail
#    SignInPage.Login Using Credentials                              ${ACCOUNT_SUPERMOLA1_EMAIL}             ${ACCOUNT_SUPERMOLA1_PASSWORD}
#    SignInPage.Verify User Is Redirected Back To The Same Movie Detail Page Automatically                   ${EXPECTED_SAMPLE_MOVIE_URL}

TC012 Sign in from Facebook button
    [Documentation]  Login using facebook account
    [Tags]  Regression  Smoke

    SignInPage.Click Button Facebook Login
    LoginFacebookPage.Login Using Facebook Account                  ${ACCOUNT_FACEBOOK_EMAIL}               ${ACCOUNT_FACEBOOK_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account              ${ACCOUNT_FACEBOOK_EMAIL}

#TC013 Sign in from Beli Paket
#    [Documentation]  Login process from Beli Paket page
#    [Tags]  Regression  Smoke
#
#    HomePage.Open Beli Akses Menu
#    SubscriptionPackagePage.Choose A Package
#    SignInPage.Login Using Credentials                              ${ACCOUNT_SUPERMOLA4_EMAIL}             ${ACCOUNT_SUPERMOLA4_PASSWORD}
#    SubscriptionPackagePage.Verify On Beli Package Page