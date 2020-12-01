*** Settings ***
Resource                ../../../Frameworks/Routers.robot
Library         	    SeleniumLibrary

Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}				                                        https://mola.tv/
${URL_MOVIE}                                                https://mola.tv/watch?v=vd97823877
${EXPECTED_URL_MOVIE}                                       ${URL_MOVIE}

*** Test Cases ***
TC001 Homepage UI
    [Documentation]  Verify UI layout of Home
    [Tags]  Regression  Smoke

    HomePage.Verify UI Homepage Side Bar Menu
    HomePage.Verify UI Homepage Top Bar Menu
    HomePage.Verify Categories And Content Is Shown

TC002 Homepage Banner
    [Documentation]  UI Verification
    [Tags]  Regression  Smoke

    HomePage.Verify Rail Banner Homepage

TC003 Select All Banner
    [Documentation]  Verify the banner can be selected
    [Tags]  Regression  Smoke

    HomePage.Click Banner & Verify Banner Can Be Selected

TC004 Continue Watching
    [Documentation]  UI Verification
    [Tags]  Regression  Smoke

    MovieDetailPage.Go To Movie Detail           ${URL_MOVIE}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials           ${ACCOUNTS_HBO_EMAIL}            ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail            ${EXPECTED_URL_MOVIE}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    HomePage.Verify Continue Watching Displayed Under The Banner

#TC005 Continue Watching - Timestamp
#    [Documentation]  Verify the remaining time in the VOD will appear in the bottom left corner
#    [Tags]  Regression  Smoke
#
#    Reason Can't Automated ?            The status for this testcase is N/A

TC006 Continue Watching - Progress bar
    [Documentation]  Verify the time spent in the VOD will appear in the form of a blue bar
    [Tags]  Regression  Smoke

    MovieDetailPage.Go To Movie Detail           ${URL_MOVIE}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials           ${ACCOUNTS_HBO_EMAIL}            ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail            ${EXPECTED_URL_MOVIE}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    HomePage.Verify Continue Watching Displayed Under The Banner
    HomePage.Verify Progress Bar Will Appear

TC007 Continue Watching
    [Documentation]  Verify The Description of VOD will appear in the bottom of video
    [Tags]  Regression  Smoke

    MovieDetailPage.Go To Movie Detail           ${URL_MOVIE}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials           ${ACCOUNT_PUTRA_EMAIL}            ${ACCOUNT_PUTRA_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail            ${EXPECTED_URL_MOVIE}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    HomePage.Verify Continue Watching Displayed Under The Banner
    HomePage.Verify Title VOD In Continues Watching

TC008 Continue Watching
    [Documentation]  Verify UI layout of Category page in homepage
    [Tags]  Regression  Smoke

    HomePage.Verify Rail Banner Homepage
    HomePage.Verify Categories And Content Is Shown

TC009 View All Categories
    [Documentation]  Verify the UI of category page after click view all button
    [Tags]  Regression  Smoke

    HomePage.Verify Rail Banner Homepage
    HomePage.Verify Categories And Content Is Shown
    HomePage.Verify the UI of category page after click view all button

TC010 VOD/Match Card
    [Documentation]  Verify the info shown in VOD/Match Card
    [Tags]  Regression  Smoke

    HomePage.Verify the info shown in VOD/Match Card

TC011 Navigate to Movie details
    [Documentation]  Verify Content Movie details page is reachable
    [Tags]  Regression  Smoke

    MovieDetailPage.Go To Movie Detail           ${URL_MOVIE}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail            ${EXPECTED_URL_MOVIE}

TC012 Back button navigation
    [Documentation]  Verify the back button on the all pages
    [Tags]  Regression  Smoke

    MovieDetailPage.Go To Movie Detail           ${URL_MOVIE}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail            ${EXPECTED_URL_MOVIE}
    HomePage.Verify the back button on the all pages

TC013 Handling Empty Rail
    [Documentation]  Verify No empty raiis shown in any page
    [Tags]  Regression  Smoke

    HomePage.Verify No empty raiis shown in any page

#TC014 Handling Empty Title/Thumbnail
#    [Documentation]  Verify that no empty tile found in content list/page
#    [Tags]  Regression  Smoke
#
#    HomePage.Click View All
#    HomePage.Verify that no empty tile found in content list/page