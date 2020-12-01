*** Settings ***
Resource                ../../../Frameworks/Routers.robot
Library         	    SeleniumLibrary
Library 				String

Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}				                    https://mola.tv/accounts/login

${EXPECTED_TEXT_MENU_HOME}              Home

${URL_MOVIE_DETAIL_Watermark}                   https://mola.tv/watch?v=vd93162909

${EXPECTED_URL_MOVIE_DETAIL_Watermark}          ${URL_MOVIE_DETAIL_Watermark}

*** Test Cases ***
TC001 Login at more than 1 different device
    [Documentation]     Login using the same user with 2 different devices
    ...         Go through login process at 2 devices with same account
	[Tags]  Regression  Smoke

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                  ${ACCOUNT_CINCIN_EMAIL}     ${ACCOUNT_CINCIN_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account  ${ACCOUNT_CINCIN_EMAIL}
    Sleep                               1
    Open Browser                ${URL}      ff
    SignInPage.Login Using Credentials                  ${ACCOUNT_CINCIN_EMAIL}     ${ACCOUNT_CINCIN_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account  ${ACCOUNT_CINCIN_EMAIL}
    ProfilePage.Sign Out
    HomePage.Verify The App Navigates To Home Page                  ${EXPECTED_TEXT_MENU_HOME}
    ProfilePage.Verify Sign Out

TC002 Play video (VOD) at more than 1 different device at the same times
    [Documentation]     Play VOD using 1 account and login in 2 / 3 different device
    ...         Account had been login at 2 / 3 different device
	[Tags]  Regression  Smoke

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                  ${ACCOUNT_CINCIN_EMAIL}     ${ACCOUNT_CINCIN_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account  ${ACCOUNT_CINCIN_EMAIL}
    MovieDetailPage.Go To Movie Detail          ${URL_MOVIE_DETAIL_Watermark}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    Sleep                               1
    Open Browser                ${URL}      ff
    SignInPage.Login Using Credentials                  ${ACCOUNT_CINCIN_EMAIL}     ${ACCOUNT_CINCIN_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account  ${ACCOUNT_CINCIN_EMAIL}
    MovieDetailPage.Go To Movie Detail          ${URL_MOVIE_DETAIL_Watermark}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    ProfilePage.Sign Out
    HomePage.Verify The App Navigates To Home Page                  ${EXPECTED_TEXT_MENU_HOME}
    ProfilePage.Verify Sign Out