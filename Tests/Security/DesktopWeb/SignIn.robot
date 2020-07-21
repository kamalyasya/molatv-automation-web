*** Settings ***
Resource                ../../../Frameworks/Routers.robot
Library         	    SeleniumLibrary

Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}				                    https://mola.tv/accounts/login

${EMAIL_MIA}                            testmiaakun1@gmail.com
${EMAIL_MIA_VALID_PASSWORD}             admin1234
${EMAIL_MIA_WRONG_PASSWORD}             123123123
${EMAIL_UNREGISTERED}                   cincincin@mola.tv
${EMAIL_UNREGISTERED_PASSWORD}          123123
${EMAIL_CINCIN}                         kamal.yasha+001@mola.tv
${EXPECTED_MESSAGE_WRONG_LOGIN}         Either id or password you have entered is invalid
${EXPECTED_MESSAGE_WRONG_LOGIN_7_TIMES}  You have exceeded maximum limit for failed login. Please contact our support team
${EXPECTED_TITLE_RESET_PASSWORD}        Masukan Kode Verifikasi
${EXPECTED_TEXT_INVALID_TOKEN}          Invalid token

*** Test Cases ***
TC001 Sign in with wrong credential
    [Documentation]  User can't signing in using wrong credential.
	[Tags]  Regression  Smoke

    SignInPage.Login Using Credentials                  ${EMAIL_MIA}                        ${EMAIL_MIA_WRONG_PASSWORD}
	SignInPage.Verify A Error Message Show Up           ${EXPECTED_MESSAGE_WRONG_LOGIN}

TC002 Sign in with wrong password for 7 times
    [Documentation]  User can't signing in using wrong credential.
	[Tags]  Regression  Smoke

    SignInPage.Input Wrong Credential For 7 Times       ${EMAIL_MIA}                        ${EMAIL_MIA_WRONG_PASSWORD}
    SignInPage.Verify A Error Message Show Up           ${EXPECTED_MESSAGE_WRONG_LOGIN_7_TIMES}
    Sleep                                               1m
    SignInPage.Login Using Credentials                  ${EMAIL_MIA}                        ${EMAIL_MIA_VALID_PASSWORD}
    SignInPage.Verify A Error Message Show Up           ${EXPECTED_MESSAGE_WRONG_LOGIN}

TC003 Sign in with unregistered account
    [Documentation]  User can't signing in using wrong credential.
	[Tags]  Regression  Smoke

    SignInPage.Login Using Credentials                  ${EMAIL_UNREGISTERED}               ${EMAIL_UNREGISTERED_PASSWORD}
	SignInPage.Verify A Error Message Show Up           ${EXPECTED_MESSAGE_WRONG_LOGIN}

TC005 Input wrong OTP number code
    [Documentation]  Input wrong OTP number at forgot password flow.
	[Tags]  Regression  Smoke

    ForgotPasswordPage.Click Lupa Password Links
    ForgotPasswordPage.Input Email                      ${EMAIL_CINCIN}
    ForgotPasswordPage.Click Button Reset Password
    ForgotPasswordPage.Verify Direct to Masukkan Kode Verifikasi Page                       ${EXPECTED_TITLE_RESET_PASSWORD}
    ForgotPasswordPage.Input OTP                        1   1   1   1   1   1
    ForgotPasswordPage.Click Button Verifkasi
    ForgotPasswordPage.Verify Invalid Token Message Show Up                                 ${EXPECTED_TEXT_INVALID_TOKEN}

TC006 Resend OTP number code
    [Documentation]  TC006 Resend OTP number code
	[Tags]  Regression  Smoke

    ForgotPasswordPage.Click Lupa Password Links
    ForgotPasswordPage.Input Email                      ${EMAIL_CINCIN}
    ForgotPasswordPage.Click Button Reset Password
    ForgotPasswordPage.Verify Direct to Masukkan Kode Verifikasi Page                       ${EXPECTED_TITLE_RESET_PASSWORD}
    ForgotPasswordPage.Click Resend OTP
    ForgotPasswordPage.Verify Countdown Is Appeared
