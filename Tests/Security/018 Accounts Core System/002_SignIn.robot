*** Settings ***
Resource                ../../../Frameworks/Routers.robot
Library         	    SeleniumLibrary

Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}				                https://mola.tv/accounts/login

${EMAIL_CINCIN}                     cincin.jati@mola.tv
${EMAIL_CINCIN_VALID_PASSWORD}      12345678
${EMAIL_CINCIN_WRONG_PASSWORD}      123456789
${EMAIL_WRONG_EMAIL}                hello@gmail.com
${EMAIL_WRONG_PASSWORD}             123456

*** Test Cases ***
Security - Sign In: Wrong credential
    [documentation]  Sign in with wrong password
	[tags]  regression smoke

	SignInPage.Login Using Credentials                     ${EMAIL_WRONG_EMAIL}         ${EMAIL_WRONG_PASSWORD}
	SignInPage.A Proper Error Message Is Shown

Security - Sign In: Correct credential
    [documentation]  Sign in with correct password
	[tags]  regression smoke

	SignInPage.Login Using Credentials                     ${EMAIL_CINCIN}              ${EMAIL_CINCIN_VALID_PASSWORD}
	SignInPage.Successfully Logged In Using My Account     ${EMAIL_CINCIN}
