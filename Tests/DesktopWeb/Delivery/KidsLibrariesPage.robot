*** Settings ***
Resource                ../../../Frameworks/Routers.robot
Library         	    SeleniumLibrary

Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}				                                        https://mola.tv/
${URL_MOVIE_DETAIL}                                         https://mola.tv/watch?v=vd02236357
${EXPECTED_URL_MOVIE_DETAIL}                                ${URL_MOVIE_DETAIL}

*** Test Cases ***
TC001 Homepage UI
    [Documentation]  Verify UI layout of Home - Movies
    [Tags]  Smoke   Regression

    MenuKidsLibrariesPage.Go To Kids Libraries Page
    MenuKidsLibrariesPage.Verify UI Kids Side Bar Menu
    MenuKidsLibrariesPage.Verify UI Kids Top Bar Menu
    MenuKidsLibrariesPage.Verify Categories And Content Kids Is Shown

TC002 Homepage Banner
    [Documentation]  UI Verification
    [Tags]  Smoke   Regression

    MenuKidsLibrariesPage.Go To Kids Libraries Page
    MenuKidsLibrariesPage.Verify Rail Banner Kids Libraries Page

TC003 Select all banner
    [Documentation]  Verify the banner can be selected
    [Tags]  Smoke   Regression

    MenuKidsLibrariesPage.Go To Kids Libraries Page
    MenuKidsLibrariesPage.Verify The Banner Can Be Selected

TC004 Homepage Categories
    [Documentation]  Verify UI layout of Category page in homepage
    [Tags]  Smoke   Regression

    MenuKidsLibrariesPage.Go To Kids Libraries Page
    MenuKidsLibrariesPage.Verify Categories And Content Kids Is Shown

TC005 View All Categories
    [Documentation]  Verify the UI of category page after click view all button
    [Tags]  Smoke   Regression

    MenuKidsLibrariesPage.Go To Kids Libraries Page
    MenuKidsLibrariesPage.Click View All Button In The Category/Series Thumbnail In The Kids Page
    MenuKidsLibrariesPage.Verify The View All Page

#TC006 VOD/Match Card
#    [Documentation]  Verify the info shown in VOD/Match Card
#    [Tags]  Smoke   Regression


TC007 Navigate to Movie details
    [Documentation]  Verify Content Movie details page is reachable
    [Tags]  Smoke   Regression

    MenuKidsLibrariesPage.Go To Kids Libraries Page
    MovieDetailPage.Go To Movie Detail                                  ${URL_MOVIE_DETAIL}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail  ${EXPECTED_URL_MOVIE_DETAIL}

TC008 Back button navigation
    [Documentation]  Verify the back button on the all pages
    [Tags]  Smoke   Regression

    MenuKidsLibrariesPage.Go To Kids Libraries Page
    MenuKidsLibrariesPage.Verify Rail Banner Kids Libraries Page
    MovieDetailPage.Go To Movie Detail                                              ${URL_MOVIE_DETAIL}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${EXPECTED_URL_MOVIE_DETAIL}
    MenuKidsLibrariesPage.Verify the back button on the all pages

#TC009 Handling Empty Rail
#    [Documentation]  Verify the Activated page will be highlight
#    [Tags]  Regression  Smoke
#
#
#TC010 Handling Empty Title/Thumbnail
#    [Documentation]  Verify that no empty tile found in content list/page
#    [Tags]  Regression  Smoke