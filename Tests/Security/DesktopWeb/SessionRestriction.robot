*** Settings ***
Resource                ../../../Frameworks/Routers.robot
Library         	    SeleniumLibrary
Library 				String

Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}				                    ${HOST}/accounts/login
${URL_MOVIE_DETAIL}                     ${HOST}/watch?v=vd74299098
${URL_TRAILER_DETAIL}                   ${HOST}/watch?v=vd98467304
${URL_MOVIE_DETAIL2}                    ${HOST}/watch?v=vd98699941
${URL_MOVIE_DETAIL3}                    ${HOST}/watch?v=vd61951986
${URL_MOVIE_DETAIL18+}                  ${HOST}/watch?v=vd86229032
${URL_MOVIE_DETAIL_EPISODES}            ${HOST}/watch?v=vd71200689
${URL_MOVIE_DETAIL_Watermark}           ${HOST}/watch?v=vd93162909
${EXPECTED_URL_MOVIE_DETAIL}            ${URL_MOVIE_DETAIL}
${EXPECTED_URL_MOVIE_DETAIL2}           ${URL_MOVIE_DETAIL2}
${EXPECTED_URL_MOVIE_DETAIL3}           ${URL_MOVIE_DETAIL3}
${EXPECTED_TRAILER_DETAIL}              ${URL_TRAILER_DETAIL}
${EXPECTED_URL_MOVIE_DETAIL_EPISODES}   ${URL_MOVIE_DETAIL_EPISODES}
${EXPECTED_URL_MOVIE_DETAIL_Watermark}  ${URL_MOVIE_DETAIL_Watermark}
${EXPECTED_TEXT_MENU_HOME}              Home

*** Test Cases ***
TC001 Login at more than 1 different device
    [Documentation]     Login using the same user with 2 different devices
    ...         Go through login process at 2 devices with same account
	[Tags]  Regression  Smoke   Pending

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                  ${ACCOUNT_CINCIN_EMAIL}     ${ACCOUNT_CINCIN_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account  ${ACCOUNT_CINCIN_EMAIL}
    Sleep                               1
    CommonKeywords.Start Testing                        ${URL}
    SignInPage.Login Using Credentials                  ${ACCOUNT_CINCIN_EMAIL}     ${ACCOUNT_CINCIN_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account  ${ACCOUNT_CINCIN_EMAIL}
    ProfilePage.Sign Out
    HomePage.Verify The App Navigates To Home Page      ${EXPECTED_TEXT_MENU_HOME}
    ProfilePage.Verify Sign Out

TC002 Play video (VOD) at more than 1 different device at the same times
    [Documentation]     Play VOD using 1 account and login in 2 / 3 different device
    ...         Account had been login at 2 / 3 different device
	[Tags]  Regression  Smoke   Pending

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                  ${ACCOUNT_PUTRA_EMAIL}     ${ACCOUNT_PUTRA_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account  ${ACCOUNT_PUTRA_EMAIL}
    MovieDetailPage.Go To Movie Detail                  ${URL_MOVIE_DETAIL_Watermark}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    Sleep                               1
    CommonKeywords.Start Testing                        ${URL}
    SignInPage.Login Using Credentials                  ${ACCOUNT_PUTRA_EMAIL}     ${ACCOUNT_PUTRA_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account  ${ACCOUNT_PUTRA_EMAIL}
    MovieDetailPage.Go To Movie Detail                  ${URL_MOVIE_DETAIL_Watermark}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    ProfilePage.Sign Out
    HomePage.Verify The App Navigates To Home Page      ${EXPECTED_TEXT_MENU_HOME}
    ProfilePage.Verify Sign Out

TC004 Pause video and play at the other device
    [Documentation]     Account had been login at 2 / 3 different device
    ...         (try it to third device , if the package used allow access for 2 devices)
	[Tags]  Regression  Smoke   Pending

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                  ${ACCOUNT_ZAKI_EMAIL}     ${ACCOUNT_ZAKI_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account  ${ACCOUNT_ZAKI_EMAIL}
    MovieDetailPage.Go To Movie Detail                  ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Mouse Hover To Movie
    MovieDetailPage.Verify Pause And Resume Live Matches
    Sleep                               3
    CommonKeywords.Start Testing                        ${URL}
    SignInPage.Login Using Credentials                  ${ACCOUNT_ZAKI_EMAIL}     ${ACCOUNT_ZAKI_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account  ${ACCOUNT_ZAKI_EMAIL}
    MovieDetailPage.Go To Movie Detail                  ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    ProfilePage.Sign Out
    HomePage.Verify The App Navigates To Home Page      ${EXPECTED_TEXT_MENU_HOME}
    ProfilePage.Verify Sign Out

TC003 Play video (VOD) at more than 1 different device at the different times
    [Documentation]     Play VOD using 1 user and login in 2 / 3 different device
    ...         Account had been login at 2 / 3 different device
	[Tags]  Regression  Smoke   Pending

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                  ${ACCOUNT_KAMAL_EMAIL}     ${ACCOUNT_KAMAL_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account  ${ACCOUNT_KAMAL_EMAIL}
    MovieDetailPage.Go To Movie Detail                  ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    Sleep                               1
    CommonKeywords.Start Testing                        ${URL}
    HomePage.Open Login Page
    SignInPage.Login Using Credentials                  ${ACCOUNT_KAMAL_EMAIL}     ${ACCOUNT_KAMAL_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account  ${ACCOUNT_KAMAL_EMAIL}
    MovieDetailPage.Go To Movie Detail                  ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    Sleep                               1
    CommonKeywords.Start Testing                        ${URL}
    HomePage.Open Login Page
    SignInPage.Login Using Credentials                  ${ACCOUNT_KAMAL_EMAIL}     ${ACCOUNT_KAMAL_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account  ${ACCOUNT_KAMAL_EMAIL}
    MovieDetailPage.Go To Movie Detail                  ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    ProfilePage.Sign Out
    HomePage.Verify The App Navigates To Home Page      ${EXPECTED_TEXT_MENU_HOME}
    ProfilePage.Verify Sign Out