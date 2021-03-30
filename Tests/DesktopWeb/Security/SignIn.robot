*** Settings ***
Resource                ../../../Frameworks/Routers.robot

Test Timeout            ${DEFAULT_TEST_TIMEOUT}
Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}				                    ${HOST}/accounts/login

${EXPECTED_MESSAGE_WRONG_LOGIN}         Either id or password you have entered is invalid
${EXPECTED_MESSAGE_WRONG_LOGIN_7_TIMES}  Too many attempts to enter. Please try again in 10 minutes
${EXPECTED_TITLE_RESET_PASSWORD}        Enter the OTP Code that has been sent to
${EXPECTED_TEXT_INVALID_TOKEN}          Verification code is incorrect or has expired
${EXPECTED_TEXT_INVALID_TOKEN2}         INVALID_OTP
${EXPECTED_TEXT_MENU_HOME}              Home
${SAMPLE_MOVIE_URL}                     ${HOST}/watch?v=vd75626478
${EXPECTED_SAMPLE_MOVIE_URL}            ${SAMPLE_MOVIE_URL}#_=_

*** Test Cases ***
TC004 Forgot Password
    [Documentation]  User is able to reset the Password.
	[Tags]  Skip

TC005 Input wrong OTP number code
    [Documentation]  Input wrong OTP number at forgot password flow.
	[Tags]  Regression  Smoke   Verified

    ${RANDOM_NUMBER}    Generate random string    3    123456789
    ${EMAIL}			Catenate	supermola${RANDOM_NUMBER}@sapisuper.com
    ${PASSWORD}			Catenate	sapisuper${RANDOM_NUMBER}

    SignInPage.Click Lupa Password Links
    ForgotPasswordPage.Input Email                                  ${EMAIL}
    ForgotPasswordPage.Click Button Reset Password
    OtpPage.Verify Direct to Masukkan Kode Verifikasi Page          ${EXPECTED_TITLE_RESET_PASSWORD}        ${EMAIL}
    OtpPage.Input OTP                        1   1   1   1   1   1
    OtpPage.Click Button Verifkasi
    OtpPage.Verify Invalid Token Message Show Up                    ${EXPECTED_TEXT_INVALID_TOKEN}
    # Tambah check email

TC006 Resend OTP number code
    [Documentation]  TC006 Resend OTP number code
	[Tags]  Regression  Smoke   NeedReview  Fixed

    ${RANDOM_NUMBER}    Generate random string    3    123456789
    ${EMAIL}			Catenate	supermola${RANDOM_NUMBER}@sapisuper.com
    SignInPage.Click Lupa Password Links
    ForgotPasswordPage.Input Email                                  ${EMAIL}
    ForgotPasswordPage.Click Button Reset Password
    OtpPage.Verify Direct to Masukkan Kode Verifikasi Page          ${EXPECTED_TITLE_RESET_PASSWORD}        ${EMAIL}
    OtpPage.Verify Countdown Is Appeared
    OtpPage.Click Resend OTP
    Verify Verification Code Has Been Sent Is Appeared
    OtpPage.Verify Countdown Is Appeared
    # Tambah verify email terkirim
    # Tambah verify message otp terkirim -> Verify Verification Code Has Been Sent Is Appeared

TC009 Sign Out
    [Documentation]  TC009 Sign Out
	[Tags]  Regression  Smoke   Verified
    SignInPage.Login Using Credentials                              ${ACCOUNT_PUTRA_EMAIL}           ${ACCOUNT_PUTRA_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account              ${ACCOUNT_PUTRA_EMAIL}
    ProfilePage.Sign Out
    HomePage.Verify The App Navigates To Home Page                  ${EXPECTED_TEXT_MENU_HOME}
    ProfilePage.Verify Sign Out

TC011 Sign in using Google button from login page
    [Documentation]  Login using google account
    [Tags]  Skip

TC012 Sign in from Facebook button
    [Documentation]  Login using facebook account
    [Tags]  Regression  Smoke   Verified

    SignInPage.Click Button Facebook Login
    LoginFacebookPage.Login Using Facebook Account                  ${ACCOUNT_FACEBOOK_EMAIL}               ${ACCOUNT_FACEBOOK_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account              ${ACCOUNT_FACEBOOK_EMAIL}

TC014 Refresh Token Mechanism
    [Documentation]  User can buy package after let the account login for 1 hour
    [Tags]  Skip

    Log     Reason : Too long for waiting 1 hour

TC018 Sign in using Facebook button from special asset
    [Documentation]  Login using facebook account
    [Tags]  Regression  Smoke   Verified

    SignInPage.Select Special Asset                                 ${SAMPLE_MOVIE_URL}
    MovieDetailPage.Login from movie detail
    SignInPage.Click Button Facebook Login
    LoginFacebookPage.Login Using Facebook Account                  ${ACCOUNT_FACEBOOK_EMAIL}               ${ACCOUNT_FACEBOOK_PASSWORD}
    SignInPage.Verify User Is Redirected Back To The Same Movie Detail Page Automatically                   ${EXPECTED_SAMPLE_MOVIE_URL}
    ProfilePage.Verify Logged In Using Correct Account              ${ACCOUNT_FACEBOOK_EMAIL}
    Logout Account

    CommonKeywords.End Testing
    CommonKeywords.Start Testing       ${URL}

    SignInPage.Select Special Asset                                 https://mola.tv/watch?v=HBO027310X1
    MovieDetailPage.Login from movie detail
    SignInPage.Click Button Facebook Login
    LoginFacebookPage.Login Using Facebook Account                  ${ACCOUNT_FACEBOOK_EMAIL}               ${ACCOUNT_FACEBOOK_PASSWORD}
    SignInPage.Verify User Is Redirected Back To The Same Movie Detail Page Automatically                   https://mola.tv/watch?v=HBO027310X1#_=_
    ProfilePage.Verify Logged In Using Correct Account              ${ACCOUNT_FACEBOOK_EMAIL}
    Logout Account

TC021 Sign in using Facebook button from Subscribe Now
    [Documentation]  Login using facebook account
    [Tags]  Regression  Smoke   Verified

    HomePage.Open Beli Akses Menu
    SubscriptionPackagePage.Choose A Package
    SignInPage.Click Button Facebook Login
    LoginFacebookPage.Login Using Facebook Account                  ${ACCOUNT_FACEBOOK_EMAIL}               ${ACCOUNT_FACEBOOK_PASSWORD}
    SubscriptionPackagePage.Verify On Beli Package Page
    SubscriptionPackagePage.Verify Directed To Checkout Page According To The Package Selected
    Go Back
    ProfilePage.Verify Logged In Using Correct Account              ${ACCOUNT_FACEBOOK_EMAIL}