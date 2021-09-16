*** Settings ***
Resource                ../../../Frameworks/Routers.robot

Test Timeout            ${DEFAULT_TEST_TIMEOUT}
Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}				                                        ${HOST}
${URL_MOVIE}                                                ${HOST}/watch?v=vd97823877
${URL_MOVIE_2}                                              ${HOST}/watch?v=vd24216830
${URL_MOLA_HUBS_ALL_MOVIES}                                 ${HOST}/categories/Mola-All-Movie
${URL_MOLA_HUBS_ALL_SERIES}                                 ${HOST}/categories/primetime
${URL_MOLA_HUBS_HBO_GO}                                     ${HOST}/categories/hbo-go
${EXPECTED_URL_MOVIE}                                       ${URL_MOVIE}

*** Test Cases ***
TC001 Homepage UI
    [Documentation]  Verify UI layout of Home
    [Tags]  Regression  Smoke   Verified

    HomePage.Verify UI Homepage Side Bar Menu
    HomePage.Verify UI Homepage Top Bar Menu
    HomePage.Verify Categories And Content Is Shown

TC002 Homepage Banner
    [Documentation]  UI Verification
    [Tags]  Regression  Smoke   NeedReview

    HomePage.Verify Rail Banner Homepage

TC003 Select All Banner
    [Documentation]  Verify the banner can be selected
    [Tags]  Regression  Smoke   NeedReview

    Homepage.Open Login Page
    SignInPage.Login Using Credentials           ${ACCOUNTS_HBO_EMAIL}            ${ACCOUNTS_HBO_PASSWORD}
    Homepage.Verify The App Navigates To Home Page
    Homepage.Verify No empty rails shown in any page
    HomePage.Click Banner & Verify Banner Can Be Selected

TC004 Continue Watching
    [Documentation]  UI Verification
    [Tags]  Regression  Smoke   NeedReview

    MovieDetailPage.Go To Movie Detail           ${URL_MOVIE}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials           ${ACCOUNTS_HBO_EMAIL}            ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail            ${EXPECTED_URL_MOVIE}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    HomePage.Verify Card Continue Watching

TC005 Continue Watching - Timestamp
    [Documentation]     Verify the remaining time in the VOD will appear in the bottom left corner
    [Tags]              Regression  Smoke  Skip
    Log                 Reason Can't Automated ?            The status for this testcase is N/A

TC006 Continue Watching - Progress bar
    [Documentation]  Verify the time spent in the VOD will appear in the form of a blue bar
    [Tags]  Regression  Smoke   NeedReview

    MovieDetailPage.Go To Movie Detail           ${URL_MOVIE}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials           ${ACCOUNTS_HBO_EMAIL}            ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail            ${EXPECTED_URL_MOVIE}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    HomePage.Verify Continue Watching Displayed Under The Banner
    HomePage.Verify Progress Bar Will Appear

TC007 Continue Watching VOD Title
    [Documentation]  Verify The Description of VOD will appear in the bottom of video
    [Tags]  Regression  Smoke   NeedReview

    MovieDetailPage.Go To Movie Detail           ${URL_MOVIE}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials           ${ACCOUNT_PUTRA_EMAIL}             ${ACCOUNT_PUTRA_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${EXPECTED_URL_MOVIE}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    HomePage.Verify Card Continue Watching
    HomePage.Verify Title VOD In Continues Watching

TC008 Homepage Categories
    [Documentation]  Verify UI layout of Category page in homepage
    [Tags]  Regression  Smoke   NeedVerify

    HomePage.Verify Rail Banner Homepage
    HomePage.Verify Categories And Content Is Shown

TC009 View All Categories
    [Documentation]  Verify the UI of category page after click view all button
    [Tags]  Regression  Smoke   NeedReview

    HomePage.Verify Rail Banner Homepage
    HomePage.Verify Categories And Content Is Shown
    HomePage.Verify the UI of category page after click view all button

TC010 VOD/Match Card
    [Documentation]  Verify the info shown in VOD/Match Card
    [Tags]  Regression  Smoke   NeedReview

    HomePage.Verify the info shown in VOD/Match Card

TC011 Navigate to Movie details
    [Documentation]  Verify Content Movie details page is reachable
    [Tags]  Regression  Smoke   NeedReview

    MovieDetailPage.Go To Movie Detail           ${URL_MOVIE}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail            ${EXPECTED_URL_MOVIE}
    Category.Go To Homepage From Movie Detail Page
    Homepage.Choose Movies Categories
    Category.Verify User Navigate To Categories Page
    Category.Choose Movie From Categories Page  ${URL_MOVIE_2}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail            ${URL_MOVIE_2}

TC012 Back button navigation
    [Documentation]  Verify the back button on the all pages
    [Tags]  Regression  Smoke   NeedReview

    MovieDetailPage.Go To Movie Detail           ${URL_MOVIE}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail            ${EXPECTED_URL_MOVIE}
    HomePage.Verify the back button on the all pages

TC013 Handling Empty Rail
    [Documentation]  Verify No empty raiis shown in any page
    [Tags]  Regression  Smoke   NeedReview

    HomePage.Verify No empty rails shown in any page

TC014 Handling Empty Title/Thumbnail
    [Documentation]  Verify that no empty tile found in content list/page
    [Tags]  Regression  Smoke   NeedReview

    HomePage.Verify No empty rails shown in any page

TC015 HUBS - UI
    [Documentation]  Verify UI layout of the HUB
    [Tags]  Regression  Smoke   NeedReview

    HomePage.Verify Categories And Content Is Shown
    HomePage.Verify Mola Hubs

TC016 Select All Hubs
    [Documentation]  Verify every category in HUB can be selected
    [Tags]  Regression Smoke NeedReview

    HomePage.Verify Categories And Content Is Shown
    HomePage.Verify Mola Hubs
    HomePage.Choose Mola Hub All Movies
    Category.Verify Go To Mola Hub All Movies           ${URL_MOLA_HUBS_ALL_MOVIES}
    Category.Go Back To The Previous Page
    HomePage.Verify Categories And Content Is Shown
    HomePage.Verify Mola Hubs
    HomePage.Choose Mola Hub All Series
    Category.Verify Go To Mola Hub All Series           ${URL_MOLA_HUBS_ALL_SERIES}
    Category.Go Back To The Previous Page
    HomePage.Verify Categories And Content Is Shown
    HomePage.Verify Mola Hubs
    HomePage.Choose Mola Hub HBO GO
    Category.Verify Go To Mola Hub HBO GO               ${URL_MOLA_HUBS_HBO_GO}

TC017 Recommendations
    [Documentation]     verify the list of video reccomendation on HOMEPAGE are same on web desktop and mobile, using the same account
    [Tags]              Regression  Smoke   Skip
    Log                 Reason Can't Automated ?            Because the website and mobile phone cannot be compared