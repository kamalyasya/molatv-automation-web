*** Settings ***
Resource                ../../../Frameworks/Routers.robot

Test Timeout            ${DEFAULT_TEST_TIMEOUT}
Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}				                    ${HOST}/accounts/profile

${EXPECTED_MESSAGE_WRONG_LOGIN}         Either id or password you have entered is invalid
${EXPECTED_MESSAGE_WRONG_LOGIN_7_TIMES}  Too many attempts to enter. Please try again in 10 minutes
${EXPECTED_MESSAGE_EMAIL_EMPTY}         Email must be filled
${EXPECTED_TITLE_RESET_PASSWORD}        Enter OTP Code that has been sent to
${EXPECTED_TEXT_INVALID_TOKEN}          Verification code is incorrect or has expired
${EXPECTED_TEXT_INVALID_TOKEN2}         INVALID_OTP
${EXPECTED_TEXT_MENU_HOME}              Home
${SAMPLE_MOVIE_URL}                     ${HOST}/watch?v=vd75626478
${EXPECTED_SAMPLE_MOVIE_URL}            ${SAMPLE_MOVIE_URL}

${ACCOUNT_UNREGISTER_EMAIL}             cincincin@mola.tv

*** Test Cases ***
TC001 Sign in with Email
    [Documentation]  User can login must login using the allowed format.
	[Tags]  Regression  Smoke   Verified

    SignInPage.Login Using Credentials                              ${ACCOUNT_SUPERMOLA5_EMAIL}            ${ACCOUNT_SUPERMOLA5_PASSWORD}
    HomePage.Verify The App Navigates To Home Page                  ${EXPECTED_TEXT_MENU_HOME}
    ProfilePage.Verify Logged In Using Correct Account              ${ACCOUNT_SUPERMOLA5_EMAIL}

TC002 Sign in with Incorrect Email format
    [Documentation]  User must login using the allowed format.
	[Tags]  Regression  Smoke   Verified

    SignInPage.Input Email On Login Page                aaa.com
	SignInPage.Verify Sign In Button Is Disabled
	SignInPage.Verify Format Email Salah Message Is Show Up

TC003 Sign in with Empty Field
    [Documentation]  User must login using the allowed format.
	[Tags]  Regression  Smoke   Verified

    SignInPage.Input Email On Login Page                                        ${ACCOUNTS_HBO_EMAIL}
    SignInPage.Input Password On Login Page                                     ${ACCOUNTS_HBO_PASSWORD}
    SignInPage.Clear Email Fields
	SignInPage.Verify Email field Error Message Is Show Up                      ${EXPECTED_MESSAGE_EMAIL_EMPTY}

TC004 Sign in with unregistered account
    [Documentation]  User can't signing in using invalid account
	[Tags]  Regression  Smoke   Verified

    SignInPage.Login Using Credentials                                          ${ACCOUNT_UNREGISTER_EMAIL}         ${ACCOUNT_CINCIN_PASSWORD}
    SignInPage.Verify Frame Register Is Appeared                                ${ACCOUNT_UNREGISTER_EMAIL}
    SignInPage.Click Cancel Button On Frame Register
    SignInPage.Click Login Button On Login Page
    SignInPage.Verify Frame Register Is Appeared                                ${ACCOUNT_UNREGISTER_EMAIL}
    SignInPage.Click Create Account Button On Frame Register
    RegistrationPage.Verify Register Page Is Appeared With Email Prefilled      ${ACCOUNT_UNREGISTER_EMAIL}


TC005 Sign in with wrong password for 7 times
    [Documentation]  User can't signing in using wrong credential.
	[Tags]  Regression  Smoke   Verified

    SignInPage.Input Wrong Credential For 7 Times       ${ACCOUNT_SUPERMOLA2_EMAIL}                     ${ACCOUNT_SUPERMOLA1_WRONG_PASSWORD}
    SignInPage.Verify A Error Message Show Up           ${EXPECTED_MESSAGE_WRONG_LOGIN_7_TIMES}
    Login Using Credentials                             ${ACCOUNT_SUPERMOLA2_EMAIL}                     ${ACCOUNT_SUPERMOLA2_PASSWORD}
    SignInPage.Verify A Error Message Show Up           ${EXPECTED_MESSAGE_WRONG_LOGIN_7_TIMES}

TC006 Sign in from special asset
    [Documentation]  TC010 Sign in from special asset
    [Tags]  Regression  Smoke   Verified

    SignInPage.Select Special Asset                                 ${SAMPLE_MOVIE_URL}
    MovieDetailPage.Login from movie detail
    SignInPage.Login Using Credentials                              ${ACCOUNT_SUPERMOLA1_EMAIL}             ${ACCOUNT_SUPERMOLA1_PASSWORD}
    SignInPage.Verify User Is Redirected Back To The Same Movie Detail Page Automatically                   ${EXPECTED_SAMPLE_MOVIE_URL}

TC007 Sign in from Beli Paket
    [Documentation]  Login process from Beli Paket page
    [Tags]  Regression  Smoke   Verified

    HomePage.Open Beli Akses Menu
    SubscriptionPackagePage.Choose A Package
    SignInPage.Login Using Credentials                              ${ACCOUNT_SUPERMOLA4_EMAIL}             ${ACCOUNT_SUPERMOLA4_PASSWORD}
    SubscriptionPackagePage.Verify On Beli Package Page
    SubscriptionPackagePage.Verify Directed To Checkout Page According To The Package Selected