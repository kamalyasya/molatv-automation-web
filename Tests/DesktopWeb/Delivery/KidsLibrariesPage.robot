*** Settings ***
Resource                ../../../Frameworks/Routers.robot
Library         	    SeleniumLibrary

Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}				                                        https://mola.tv/
${URL_MOLA_HUB_ALL_MOVIES}                                  https://mola.tv/categories/Mola-All-Movie
${URL_MOLA_HUB_ALL_SERIES}                                  https://mola.tv/categories/primetime
${URL_MOLA_HUB_HBO_GO}                                      https://mola.tv/libraries/hbo-go
${URL_MOVIE_DETAIL}                                         https://mola.tv/watch?v=vd10137196
${EXPECTED_URL_MOVIE_DETAIL}                                ${URL_MOVIE_DETAIL}

*** Test Cases ***
TC001 Homepage UI
    [Documentation]  Verify UI layout of Home - Movies
    [Tags]  Smoke   Regression

    MenuKidsLibrariesPage.Go To Movies Libraries Page
    MenuKidsLibrariesPage.Verify UI Movies Side Bar Menu
    MenuKidsLibrariesPage.Verify UI Movies Top Bar Menu
    MenuKidsLibrariesPage.Verify Categories And Content Movies Is Shown

TC002 Homepage Banner
    [Documentation]  UI Verification
    [Tags]  Smoke   Regression

    MenuKidsLibrariesPage.Go To Movies Libraries Page
    MenuKidsLibrariesPage.Verify Rail Banner Movies Libraries Page

TC003 Select all banner
    [Documentation]  Verify the banner can be selected
    [Tags]  Smoke   Regression

    MenuKidsLibrariesPage.Go To Movies Libraries Page
    MenuKidsLibrariesPage.Verify The Banner Can Be Selected

TC004 HUBS - UI
    [Documentation]  Verify UI layout of the HUB
    [Tags]  Smoke   Regression

    MenuKidsLibrariesPage.Go To Movies Libraries Page
    MenuKidsLibrariesPage.Verify Mola Hub Movies Libraries

TC005 Select all HUBS
    [Documentation]  Verify every category in HUB can be selected
    [Tags]  Smoke   Regression

    MenuKidsLibrariesPage.Go To Movies Libraries Page
    MenuKidsLibrariesPage.Select Mola Hub All Movies
    MenuKidsLibrariesPage.Verify Mola Hub All Movies                  ${URL_MOLA_HUB_ALL_MOVIES}
    MenuKidsLibrariesPage.Select Mola Hub All Series
    MenuKidsLibrariesPage.Verify Mola Hub All Series                  ${URL_MOLA_HUB_ALL_SERIES}
    MenuKidsLibrariesPage.Select Mola Hub Hbo Go
    MenuKidsLibrariesPage.Verify Mola Hub Hbo Go                      ${URL_MOLA_HUB_HBO_GO}

TC006 Homepage Categories
    [Documentation]  Verify UI layout of Category page in homepage
    [Tags]  Smoke   Regression

    MenuKidsLibrariesPage.Go To Movies Libraries Page
    MenuKidsLibrariesPage.Verify Categories And Content Movies Is Shown

TC007 View All Categories
    [Documentation]  Verify the UI of category page after click view all button
    [Tags]  Smoke   Regression

    MenuKidsLibrariesPage.Go To Movies Libraries Page
    MenuKidsLibrariesPage.Click View All Button In The Category/Series Thumbnail In The Movies Page
    MenuKidsLibrariesPage.Verify The View All Page

#TC008 VOD/Match Card
#    [Documentation]  Verify the info shown in VOD/Match Card
#    [Tags]  Smoke   Regression


TC009 Navigate to Movie details
    [Documentation]  Verify Content Movie details page is reachable
    [Tags]  Smoke   Regression

    MenuKidsLibrariesPage.Go To Movies Libraries Page
    MovieDetailPage.Go To Movie Detail                                  ${URL_MOVIE_DETAIL}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail  ${EXPECTED_URL_MOVIE_DETAIL}

TC010 Back button navigation
    [Documentation]  Verify the back button on the all pages
    [Tags]  Smoke   Regression

    MenuKidsLibrariesPage.Go To Movies Libraries Page
    MenuKidsLibrariesPage.Verify Rail Banner Movies Libraries Page
    MovieDetailPage.Go To Movie Detail                                              ${URL_MOVIE_DETAIL}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${EXPECTED_URL_MOVIE_DETAIL}
    MenuKidsLibrariesPage.Verify the back button on the all pages

#TC011 Handling Empty Rail
#    [Documentation]  Verify the Activated page will be highlight
#    [Tags]  Regression  Smoke
#
#
#TC012 Handling Empty Title/Thumbnail
#    [Documentation]  Verify that no empty tile found in content list/page
#    [Tags]  Regression  Smoke