*** Settings ***
Resource                ../../../Frameworks/Routers.robot
Library         	    SeleniumLibrary
Library 				String


Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}				                    https://mola.tv/accounts/login

${EMAIL_MIA}                            testmiaakun1@gmail.com
${EMAIL_MIA_VALID_PASSWORD}             admin1234
${EMAIL_MIA_WRONG_PASSWORD}             123123123
${EMAIL_UNREGISTERED}                   cincincin@mola.tv
${EMAIL_UNREGISTERED_PASSWORD}          123123
${EMAIL_CINCIN}                         cincin.jati@mola.tv
${EMAIL_SUPERMOLA1}                     supermola1@sapisuper.com
${EMAIL_SUPERMOLA1_PASSWORD}            sapisuper1
${EMAIL_SUPERMOLA1_WRONG_PASSWORD}      sapisuper
${EMAIL_SUPERMOLA2}                     supermola2@sapisuper.com
${EMAIL_SUPERMOLA2_PASSWORD}            sapisuper2
${EMAIL_SUPERMOLA2_WRONG_PASSWORD}      sapisuper
${EMAIL_SUPERMOLA3}                     supermola3@sapisuper.com
${EMAIL_SUPERMOLA3_PASSWORD}            sapisuper3
${EMAIL_SUPERMOLA3_WRONG_PASSWORD}      sapisuper
${EMAIL_SUPERMOLA4}                     supermola4@sapisuper.com
${EMAIL_SUPERMOLA4_PASSWORD}            sapisuper4
${EMAIL_SUPERMOLA5}                     supermola5@sapisuper.com
${EMAIL_SUPERMOLA5_PASSWORD}            sapisuper5

${EXPECTED_MESSAGE_WRONG_LOGIN}         Either id or password you have entered is invalid
${EXPECTED_MESSAGE_WRONG_LOGIN_7_TIMES}  You have exceeded maximum limit for failed login. Please contact our support team
${EXPECTED_TITLE_RESET_PASSWORD}        Masukan Kode Verifikasi
${EXPECTED_TEXT_INVALID_TOKEN}          Invalid token
${EXPECTED_TEXT_MENU_FEATURED}          Featured
${SAMPLE_MOVIE_URL}                     https://mola.tv/watch?v=vd75626478
${EXPECTED_SAMPLE_MOVIE_URL}            ${SAMPLE_MOVIE_URL}
${ACCOUNT_GOOGLE_EMAIL}                 molatv.tester@gmail.com
${ACCOUNT_GOOGLE_EMAIL_CINCIN}          cincin.jati@mola.tv
${ACCOUNT_GOOGLE_PASSWORD}              molajaya

*** Test Cases ***
TC001 Sign in with wrong credential
    [Documentation]  User can't signing in using wrong credential.
	[Tags]  Regression  Smoke

    SignInPage.Login Using Credentials                  ${EMAIL_SUPERMOLA1}                     ${EMAIL_SUPERMOLA1_WRONG_PASSWORD}
	SignInPage.Verify A Error Message Show Up           ${EXPECTED_MESSAGE_WRONG_LOGIN}

TC002 Sign in with wrong password for 7 times
    [Documentation]  User can't signing in using wrong credential.
	[Tags]  Regression  Smoke

    SignInPage.Input Wrong Credential For 7 Times       ${EMAIL_SUPERMOLA2}                     ${EMAIL_SUPERMOLA2_WRONG_PASSWORD}
    SignInPage.Verify A Error Message Show Up           ${EXPECTED_MESSAGE_WRONG_LOGIN_7_TIMES}
#    Sleep                                               1m
#    SignInPage.Login Using Credentials                  ${EMAIL_MIA}                        ${EMAIL_MIA_VALID_PASSWORD}
#    SignInPage.Verify A Error Message Show Up           ${EXPECTED_MESSAGE_WRONG_LOGIN}

TC003 Sign in with unregistered account
    [Documentation]  User can't signing in using wrong credential.
	[Tags]  Regression  Smoke

    SignInPage.Login Using Credentials                  ${EMAIL_UNREGISTERED}                   ${EMAIL_UNREGISTERED_PASSWORD}
	SignInPage.Verify A Error Message Show Up           ${EXPECTED_MESSAGE_WRONG_LOGIN}

TC005 Input wrong OTP number code
    [Documentation]  Input wrong OTP number at forgot password flow.
	[Tags]  Regression  Smoke

    ${RANDOM_NUMBER}    Generate random string    5    123456789
    ${EMAIL}			Catenate	supermola${RANDOM_NUMBER}@sapisuper.com
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

    ${RANDOM_NUMBER}    Generate random string    5    123456789
    ${EMAIL}			Catenate	supermola${RANDOM_NUMBER}@sapisuper.com
    SignInPage.Click Lupa Password Links
    ForgotPasswordPage.Input Email                                  ${EMAIL}
    ForgotPasswordPage.Click Button Reset Password
    OtpPage.Verify Direct to Masukkan Kode Verifikasi Page          ${EXPECTED_TITLE_RESET_PASSWORD}
    OtpPage.Click Resend OTP
    OtpPage.Verify Countdown Is Appeared

TC007 Page Navigation after sign in
    [Documentation]  Check page navigation after sign in
	[Tags]  Regression

    SignInPage.Login Using Credentials                              ${EMAIL_SUPERMOLA5}            ${EMAIL_SUPERMOLA5_PASSWORD}
    HomePage.Click Next Button And Skip Inbox Onboarding
    HomePage.Verify The App Navigates To Featured Page              ${EXPECTED_TEXT_MENU_FEATURED}
    HomePage.Verify Logged In Using Correct Account                 ${EMAIL_SUPERMOLA5}

TC009 Sign Out
    [Documentation]  TC009 Sign Out
	[Tags]  Regression  Smoke
    SignInPage.Login Using Credentials                              ${EMAIL_MIA}                    ${EMAIL_MIA_VALID_PASSWORD}
    HomePage.Click Next Button And Skip Inbox Onboarding
    HomePage.Verify Logged In Using Correct Account                 ${EMAIL_MIA}
    HomePage.Sign Out
    HomePage.Verify Sign Out
    HomePage.Verify The App Navigates To Featured Page              ${EXPECTED_TEXT_MENU_FEATURED}

TC010 Sign in from special asset
    [Documentation]  TC010 Sign in from special asset
    [Tags]  Regression  Smoke

    SignInPage.Select Special Asset                                                                 ${SAMPLE_MOVIE_URL}
    VideoPlaybackWithoutSignIn.Click Links Login
    SignInPage.Login Using Credentials                              ${EMAIL_SUPERMOLA1}             ${EMAIL_SUPERMOLA1_PASSWORD}
    SignInPage.Verify User Is Redirected Back To The Same Movie Detail Page Automatically           ${EXPECTED_SAMPLE_MOVIE_URL}

TC013 Sign in from Beli Paket
    [Documentation]  Login process from Beli Paket page
    [Tags]  Regression  Smoke

    HomePage.Open Beli Paket Menu
    SubscriptionPackagePage.Choose A Package
    SignInPage.Login Using Credentials                              ${EMAIL_SUPERMOLA4}            ${EMAIL_SUPERMOLA4_PASSWORD}
    SubscriptionPackagePage.Verify On Beli Package Page