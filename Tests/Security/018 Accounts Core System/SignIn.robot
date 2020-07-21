*** Settings ***
Resource                ../../../Frameworks/Routers.robot
Library         	    SeleniumLibrary

Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}				                https://mola.tv/accounts/login

${EMAIL_CINCIN}                     cincin.jati@mola.tv
${EMAIL_KAMAL}                      kamal.yasha@mola.tv
${EMAIL_CINCIN_VALID_PASSWORD}      12345678
${EMAIL_CINCIN_WRONG_PASSWORD}      123456789
${EMAIL_UNREGISTERED_ACCOUNT}       kamal.kamal@mola.tv
${EMAIL_WRONG_EMAIL}                hello@gmail.com
${EMAIL_WRONG_PASSWORD}             123456
${EXPECTED_TITLE_RESET_PASSWORD}    Masukan Kode Verifikasi

*** Test Cases ***
Security - Sign In: Wrong credential
    [Documentation]  Sign in with wrong password
	[Tags]  regression smoke

	SignInPage.Login Using Credentials                     ${EMAIL_WRONG_EMAIL}         ${EMAIL_WRONG_PASSWORD}
	SignInPage.A Proper Error Message Is Shown

Security - Sign In: Correct credential
    [Documentation]  Sign in with correct password
	[Tags]  regression smoke

	SignInPage.Login Using Credentials                     ${EMAIL_CINCIN}              ${EMAIL_CINCIN_VALID_PASSWORD}
	SignInPage.Successfully Logged In Using My Account     ${EMAIL_CINCIN}

Security - Sign In: Unregistered account
    [Documentation]  Sign in with correct password
	[Tags]  regression smoke

	SignInPage.Login Using Credentials                     ${EMAIL_UNREGISTERED_ACCOUNT}              ${EMAIL_WRONG_PASSWORD}
	SignInPage.A Proper Error Message Is Shown

Security - Sign In: Forgot Password
    [Documentation]  User is able to reset the Password for external servers login from within the application.
    [Tags]  regression smoke

    Click Lupa Password Links
    Input Email         ${EMAIL_KAMAL}
    Click Button Reset Password
    Direct to Masukkan Kode Verifikasi Page         ${EXPECTED_TITLE_RESET_PASSWORD}

