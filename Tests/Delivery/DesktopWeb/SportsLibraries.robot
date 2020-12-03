*** Settings ***
Resource                ../../../Frameworks/Routers.robot
Library         	    SeleniumLibrary

Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}				                                        https://mola.tv/
${URL_MOVIE}                                                https://mola.tv/watch?v=vd01884222
${EXPECTED_URL_MOVIE}                                       ${URL_MOVIE}

*** Test Cases ***
TC001 Homepage UI
    [Documentation]  Verify UI layout of Home - Sports
    [Tags]  Regression  Smoke

    MenuSportsLibraries.Go To Sports Libraries Page
    MenuSportsLibraries.Verify UI Sports Side Bar Menu
    MenuSportsLibraries.Verify UI Sports Top Bar Menu
    MenuSportsLibraries.Verify Categories And Content Sports Is Shown

TC002 Homepage Banner
    [Documentation]  UI Verification
    [Tags]  Regression  Smoke

    MenuSportsLibraries.Go To Sports Libraries Page
    MenuSportsLibraries.Verify Rail Banner Sports Libraries

TC003 Select all banner
    [Documentation]  Verify the banner can be selected
    [Tags]  Regression  Smoke

    MenuSportsLibraries.Go To Sports Libraries Page
    MenuSportsLibraries.Verify The Banner Can Be Selected

TC004 Homepage Categories
    [Documentation]  Verify UI layout of Category page in homepage
    [Tags]  Regression  Smoke

    MenuSportsLibraries.Go To Sports Libraries Page
    MenuSportsLibraries.Verify Categories And Content Sports Is Shown

TC005 View All Categories
    [Documentation]    Verify the UI of category page after click view all button
    [Tags]  Regression  Smoke

    MenuSportsLibraries.Go To Sports Libraries Page
    MenuSportsLibraries.Verify Rail Banner Sports Libraries
    MenuSportsLibraries.Click View All Button In The Category/Series Thumbnail In The Sports Page

TC006 VOD/Match Card
    [Documentation]  Verify the info shown in VOD/Match Card
    [Tags]  Regression  Smoke

    MenuSportsLibraries.Go To Sports Libraries Page
    MenuSportsLibraries.Verify Rail Banner Sports Libraries
    MenuSportsLibraries.Verify The Banner Can Be Selected

TC007 Navigate to Movie details
    [Documentation]  Verify Content Sports details page is reachable
    [Tags]  Regression  Smoke

    MenuSportsLibraries.Go To Sports Libraries Page
    MenuSportsLibraries.Verify Rail Banner Sports Libraries
    MovieDetailPage.Go To Movie Detail                                              ${URL_MOVIE}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${EXPECTED_URL_MOVIE}

TC008 Back button navigation
    [Documentation]  Verify the back button on the all pages
    [Tags]  Regression  Smoke

    MenuSportsLibraries.Go To Sports Libraries Page
    MenuSportsLibraries.Verify Rail Banner Sports Libraries
    MovieDetailPage.Go To Movie Detail                                              ${URL_MOVIE}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${EXPECTED_URL_MOVIE}
    MenuSportsLibraries.Verify the back button on the all pages

#TC009 Handling Empty Rail
#    [Documentation]  Verify the Activated page will be highlight
#    [Tags]  Regression  Smoke
#
#
#TC010 Handling Empty Title/Thumbnail
#    [Documentation]  Verify that no empty tile found in content list/page
#    [Tags]  Regression  Smoke