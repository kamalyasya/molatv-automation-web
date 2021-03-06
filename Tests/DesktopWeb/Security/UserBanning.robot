*** Settings ***
Resource                ../../../Frameworks/Routers.robot

Test Timeout            ${DEFAULT_TEST_TIMEOUT}
Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}                                          ${HOST}
${URL_MOVIE_DETAIL_BANNED}                      ${HOST}/watch?v=vd93162681
${URL_MOVIE_DETAIL_Watermark}                   ${HOST}/watch?v=vd93162909
${URL_MOVIE_DETAIL_Without_Login}               ${HOST}/watch?v=vd93163005
${URL_MOVIE_DETAIL_18+}                         ${HOST}/watch?v=vd94027041

${EXPECTED_URL_MOVIE_DETAIL_BANNED}             ${URL_MOVIE_DETAIL_BANNED}
${EXPECTED_URL_MOVIE_DETAIL_Watermark}          ${URL_MOVIE_DETAIL_Watermark}
${EXPECTED_URL_MOVIE_DETAIL_Without_Login}      ${URL_MOVIE_DETAIL_Without_Login}
${EXPECTED_URL_MOVIE_DETAIL_18+}                ${URL_MOVIE_DETAIL_18+}

*** Test Cases ***
TC001 Check Watermark and Banned Account Process
    [Documentation]         User already have an account and sign in
	[Tags]                  Regression  Smoke   Pending

    HomePage.Open Login Page
    SignInPage.Login Using Credentials      ${ACCOUNT_BANNED_EMAIL}     ${ACCOUNT_BANNED_PASSWORD}
    MovieDetailPage.Go To Movie Detail      ${URL_MOVIE_DETAIL_BANNED}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail      ${EXPECTED_URL_MOVIE_DETAIL_BANNED}
    MovieDetailPage.Play Content From Movie Detail
    UserBanningPage.Verify banned account in VOD

TC002 Watermark On Video Player
    [Documentation]         Check watermark on video player.
    ...                     User already have an account and sign in.
	[Tags]                  Regression  Smoke   Pending

    HomePage.Open Login Page
    SignInPage.Login Using Credentials      ${ACCOUNT_SUPERMOLA69690_EMAIL}     ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    MovieDetailPage.Go To Movie Detail          ${URL_MOVIE_DETAIL_Watermark}
    AgeRestrictionPage.Verify Movie Detail          ${EXPECTED_URL_MOVIE_DETAIL_Watermark}
    UserBanningPage.Verify Watermark in VOD             ${ACCOUNT_SUPERMOLA69690_USERID}

TC003 Check Watermark on Free Content Video without Login
    [Documentation]         Check watermark on free content video without Login
	[Tags]                  Regression  Smoke   Pending     Updated

    HomePage.Open Login Page
    MovieDetailPage.Go To Movie Detail          ${URL_MOVIE_DETAIL_Without_Login}
    MovieDetailPage.Login from movie detail
    UserBanningPage.Verify Login To Watch Button Is Visible

TC004 Check Watermark on Free Content Video using Account without package
    [Documentation]         Check watermark on free content video using account without package
    ...                     Already login and account didn't have a package.
	[Tags]                  Regression  Smoke   Pending

    HomePage.Open Login Page
    SignInPage.Login Using Credentials      ${ACCOUNT_SUPERMOLA6969_EMAIL}      ${ACCOUNT_SUPERMOLA6969_PASSWORD}
    MovieDetailPage.Go To Movie Detail          ${URL_MOVIE_DETAIL_Watermark}
    AgeRestrictionPage.Verify Movie Detail          ${EXPECTED_URL_MOVIE_DETAIL_Watermark}
    UserBanningPage.Verify Watermark in VOD             ${ACCOUNT_SUPERMOLA6969_USERID}

TC005 Check Watermark on Free Content Video using Account with package
    [Documentation]         Check watermark on free content video using account with package
    ...                     Already login and account have a package.
	[Tags]                  Regression  Smoke   Pending

    HomePage.Open Login Page
    SignInPage.Login Using Credentials      ${ACCOUNT_KAMAL_EMAIL}      ${ACCOUNT_KAMAL_PASSWORD}
    MovieDetailPage.Go To Movie Detail      ${URL_MOVIE_DETAIL_18+}
    AgeRestrictionPage.Verify Show Age blocker
    AgeRestrictionPage.Verify Movie Detail          ${EXPECTED_URL_MOVIE_DETAIL_18+}
    UserBanningPage.Verify Watermark in VOD             ${ACCOUNT_KAMAL_USERID}

TC006 Check Watermark on Premium Content Video without Login
    [Documentation]         Check watermark on premium content video without login
	[Tags]                  Regression  Smoke   Pending

    HomePage.Open Login Page
    MovieDetailPage.Go To Movie Detail      ${URL_MOVIE_DETAIL_18+}
    MovieDetailPage.Login from movie detail
    UserBanningPage.Verify Login To Watch Button Is Visible

TC007 Check Watermark on Premium Content Video using Account without package
    [Documentation]         Check watermark on premium content video using account without package
    ...                     Already login and account didn't have a package.
	[Tags]                  Regression  Smoke   Pending

    HomePage.Open Login Page
    SignInPage.Login Using Credentials      ${ACCOUNT_SUPERMOLA690_EMAIL}       ${ACCOUNT_SUPERMOLA690_PASSWORD}
    MovieDetailPage.Go To Movie Detail      ${URL_MOVIE_DETAIL_18+}
    MovieDetailPage.Verify Subscription Blocker Is Shown

TC008 Check Watermark on Premium Content Video using Account with package
    [Documentation]         Check watermark on premium content video using account with package
    ...                     Already login and account have a package.
	[Tags]                  Regression  Smoke   Pending

    HomePage.Open Login Page
    SignInPage.Login Using Credentials      ${ACCOUNTS_HBO_EMAIL}      ${ACCOUNTS_HBO_PASSWORD}}
    MovieDetailPage.Go To Movie Detail      ${URL_MOVIE_DETAIL_18+}
    AgeRestrictionPage.Verify Show Age blocker
    AgeRestrictionPage.Verify Movie Detail      ${EXPECTED_URL_MOVIE_DETAIL_18+}
    UserBanningPage.Verify Watermark in VOD             ${ACCOUNTS_HBO_USERID}
    ProfilePage.Sign Out

TC009 Check on-demand fingerprint / watermark
    [Documentation]         Shows up watermark at the moment.
	[Tags]                  Regression  Smoke   Pending

    HomePage.Open Login Page
    SignInPage.Login Using Credentials      ${ACCOUNT_KAMAL_EMAIL}      ${ACCOUNT_KAMAL_PASSWORD}
    MovieDetailPage.Go To Movie Detail          ${URL_MOVIE_DETAIL_Watermark}
    AgeRestrictionPage.Verify Movie Detail          ${EXPECTED_URL_MOVIE_DETAIL_Watermark}
    UserBanningPage.Verify Watermark in VOD             ${ACCOUNT_KAMAL_USERID}