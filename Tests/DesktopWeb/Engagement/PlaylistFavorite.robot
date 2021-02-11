*** Settings ***
Resource                ../../../Frameworks/Routers.robot

Test Timeout            ${DEFAULT_TEST_TIMEOUT}
Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}				                                        ${HOST}

${SAMPLE_MOVIE_URL_NON_LOGIN}                               ${HOST}/watch?v=vd94714791
${SAMPLE_MOVIE_URL_NON_LOGIN_TITLE}                         The Professor And The Madman
${SAMPLE_MOVIE_URL_FAVORITE}                                ${HOST}/watch?v=vd95509092
${SAMPLE_MOVIE_URL_FAVORITE_TITLE}                          IN SEARCH OF FELLINI
${SAMPLE_MOVIE_URL_FAVORITE2}                               ${HOST}/watch?v=vd94027038
${SAMPLE_MOVIE_URL_FAVORITE_TITLE2}                         ASTERIX & OBELIX
${SAMPLE_SERIES_URL}                                        ${HOST}/categories/KE
${SAMPLE_SERIES_TITLE}                                      Streaming Killing Eve
${SAMPLE_SERIES_SESSION_URL}                                ${HOST}/categories/KE-S1
${SAMPLE_SERIES_SESSION_TITLE}                              KILLING EVE S1
${SAMPLE_SERIES_SESSION_URL2}                               ${HOST}/categories/KE-S2
${SAMPLE_SERIES_SESSION_TITLE2}                             KILLING EVE S2


*** Test Cases ***
TC001 - Favorite video for non-login user
    [Documentation]  User cannot fovorite video if they are not logged in
	[Tags]  Regression  Smoke

    MovieDetailPage.Go To Movie Detail                      ${SAMPLE_MOVIE_URL_NON_LOGIN}
    MovieDetailPage.Click Button Favorit
    SignInPage.Login Using Credentials                      ${ACCOUNT_CINCIN_EMAIL}             ${ACCOUNT_CINCIN_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail      ${SAMPLE_MOVIE_URL_NON_LOGIN}
    Check Favorit Video
    MovieDetailPage.Verify Favorit Button Is Non Active
    Logout Account

TC002 - Favorite video from video detil page
    [Documentation]  User can favorite video from video detil
	[Tags]  Regression  Smoke

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                      ${ACCOUNT_CINCIN_EMAIL}             ${ACCOUNT_CINCIN_PASSWORD}
    MovieDetailPage.Go To Movie Detail                      ${SAMPLE_MOVIE_URL_FAVORITE}
    Check Favorit Video
    MovieDetailPage.Click Button Favorit
    MovieDetailPage.Verify Favorit Button Is Active
    MovieDetailPage.Verify Video Added To My Favorite In Daftar Tontonan Page       ${SAMPLE_MOVIE_URL_FAVORITE_TITLE}
    Verify Video Is Appeared At Favorite Video Section In Homepage                  ${SAMPLE_MOVIE_URL_FAVORITE_TITLE}
    Logout Account

TC003 - Favorite video from series season
    [Documentation]  User can favorite video from series season
	[Tags]  Regression  Smoke

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                      ${ACCOUNT_CINCIN_EMAIL}             ${ACCOUNT_CINCIN_PASSWORD}
    MovieSeriesPage.Open Series Playlist                    ${SAMPLE_SERIES_SESSION_URL}
    Check Favorit Series
    MovieSeriesPage.Click Button Favorit On Series
    MovieSeriesPage.Verify Favorit Button Is Active On Series
    MovieDetailPage.Verify Video Added To My Favorite In Daftar Tontonan Page       ${SAMPLE_SERIES_SESSION_TITLE}
    Verify Video Is Appeared At Favorite Video Section In Homepage                  ${SAMPLE_SERIES_SESSION_TITLE}
    Logout Account

TC004 - Favorite video from series playlist
    [Documentation]  User can favorite video from series playlist
	[Tags]  Regression  Smoke

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                      ${ACCOUNT_CINCIN_EMAIL}             ${ACCOUNT_CINCIN_PASSWORD}
    MovieSeriesPage.Open Series Playlist                    ${SAMPLE_SERIES_URL}
    Check Favorit Series
    MovieSeriesPage.Click Button Favorit On Series
    MovieSeriesPage.Verify Favorit Button Is Active On Series
    MovieDetailPage.Verify Video Added To My Favorite In Daftar Tontonan Page       ${SAMPLE_SERIES_TITLE}
    Verify Video Is Appeared At Favorite Video Section In Homepage                  ${SAMPLE_SERIES_TITLE}
    Logout Account

TC005 - Open my favorite video from account
    [Documentation]  User can find all their favorite videos in my favorite tab on daftar tontonan page
	[Tags]  Regression  Smoke

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                      ${ACCOUNT_CINCIN_EMAIL}             ${ACCOUNT_CINCIN_PASSWORD}
    HomePage.Open Tontonan Saya Page
    FavoritePage.Verify Tontonan Saya Is Opened
    Logout Account


TC006 - Open my favorite video from snackbar
    [Documentation]  User can find all their favorite videos in my favorite tab on daftar tontonan page by click text button in snackbar
	[Tags]  Regression  Smoke

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                      ${ACCOUNT_CINCIN_EMAIL}             ${ACCOUNT_CINCIN_PASSWORD}
    MovieSeriesPage.Open Series Playlist                    ${SAMPLE_SERIES_SESSION_URL2}
    Check Favorit Series
    MovieSeriesPage.Click Button Favorit On Series
    Click Button Lihat Daftar Favorit
    FavoritePage.Verify Tontonan Saya Is Opened
    Logout Account


TC007 - Remove/Unfavorite video
    [Documentation]  User can remove video from their favorite video list
	[Tags]  Regression  Smoke

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                      ${ACCOUNT_CINCIN_EMAIL}             ${ACCOUNT_CINCIN_PASSWORD}
    HomePage.Open Tontonan Saya Page
    FavoritePage.Remove Favorit Video From Tontonan Saya    ${SAMPLE_MOVIE_URL_FAVORITE_TITLE2}
    MovieDetailPage.Verify Favorit Button Is Non Active
    FavoritePage.Verify Video Removed From Tontonan Saya    ${SAMPLE_MOVIE_URL_FAVORITE_TITLE2}
    MovieDetailPage.Go To Movie Detail                      ${SAMPLE_MOVIE_URL_FAVORITE2}
    MovieDetailPage.Click Button Favorit
    Logout Account

TC008 - Sort favorite video by latest
    [Documentation]  User can sort their favorite video list by latest added
	[Tags]  Regression

	HomePage.Open Login Page
    SignInPage.Login Using Credentials                      ${ACCOUNT_CINCIN_EMAIL}             ${ACCOUNT_CINCIN_PASSWORD}
    HomePage.Open Tontonan Saya Page
    Sort Favorite Video By Latest
    Verify Sort Favorite Video By Latest
    Logout Account

TC009 - Sort favorite video by oldest
    [Documentation]  User can sort their favorite video list by oldest added
	[Tags]  Regression

	HomePage.Open Login Page
    SignInPage.Login Using Credentials                      ${ACCOUNT_CINCIN_EMAIL}             ${ACCOUNT_CINCIN_PASSWORD}
    HomePage.Open Tontonan Saya Page
    Sort Favorite Video By Oldest
    Verify Sort Favorite Video By Oldest
    Logout Account

TC010 - Condition when my favorite is empty
    [Documentation]  User can see empty state when my favorite list is empty
	[Tags]  Regression

	HomePage.Open Login Page
    SignInPage.Login Using Credentials                      ${ACCOUNT_SUPERMOLA1_EMAIL}         ${ACCOUNT_SUPERMOLA1_PASSWORD}
    HomePage.Open Tontonan Saya Page
    FavoritePage.Verify Condition When My Favorite Is Empty
    Logout Account

TC011 - Find all favorite video from homepage
    [Documentation]  User can find their favorite video from homepage
	[Tags]  Regression  Smoke

	HomePage.Open Login Page
    SignInPage.Login Using Credentials                      ${ACCOUNT_SUPERMOLA2_EMAIL}         ${ACCOUNT_SUPERMOLA2_PASSWORD}
    HomePage.Click View All On Favorit Saya
    FavoritePage.Verify Tontonan Saya Is Opened
    Logout Account
