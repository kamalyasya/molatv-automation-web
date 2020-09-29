*** Settings ***
Resource                        ../../../Frameworks/Routers.robot
Library                         SeleniumLibrary

Test Setup                      CommonKeywords.Start Testing        ${URL}
Test Teardown                   CommonKeywords.End Testing

*** Variables ***
${URL}                                  https://mola.tv
${URL_MOVIE_DETAIL}                     https://mola.tv/watch?v=tvri-nasio
${EXPECTED_URL_MOVIE_DETAIL}            ${URL_MOVIE_DETAIL}
${TITLE_MOVIE}                          Apocalypto
${URL_MOVIE_DETAIL2}                    https://mola.tv/watch?v=vd92288792
${EXPECTED_TEXT_MENU_HOME}              Home
${EXPECTED_MOVIE_DETAIL2}               ${URL_MOVIE_DETAIL2}
${EXPECTED_CHANGE_QUALITY_576}          576
${EXPECTED_CHANGE_QUALITY_270}          270
${EXPECTED_CHANGE_QUALITY_360}          360
${EXPECTED_CHANGE_QUALITY_720}          720

*** Test Cases ***
Delivery - Matches: TC001 Homepage UI
    [Documentation]     Verify UI Layout of Matches page
    [Tags]              Regression  Smoke

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                              ${ACCOUNT_MIA2_EMAIL}            ${ACCOUNT_MIA2_PASSWORD}
    HomePage.Verify The App Navigates To Home Page                  ${EXPECTED_TEXT_MENU_HOME}
    HomePage.Open Matches Page
    HomePage.Verify UI Layout of Matches page

Delivery - Matches: TC002 View All Categories
    [Documentation]     Verify the all the matches of categories will shown up
    [Tags]              Regression  Smoke

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                              ${ACCOUNT_PUTRA_EMAIL}            ${ACCOUNT_PUTRA_PASSWORD}
    HomePage.Verify The App Navigates To Home Page                  ${EXPECTED_TEXT_MENU_HOME}
    HomePage.Open Matches Page
    HomePage.Verify UI Layout of Matches page
    HomePage.Click view all button
    HomePage.Verify all the matches of categories will shown up from the beginning time

Delivery - Matches: TC003 Match detail page
    [Documentation]     Verify the details page of a Live/Replay/Highlights match
    [Tags]              Regression  Smoke

    MovieDetailPage.Go To Movie Detail                               ${URL_MOVIE_DETAIL}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials         ${ACCOUNT_CINCIN_EMAIL}          ${ACCOUNT_CINCIN_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail          ${EXPECTED_URL_MOVIE_DETAIL}

Delivery - Matches: TC004 Video Metadata
    [Documentation]  Shown player content from VOD
    [Tags]           Regression     Smoke

    MovieDetailPage.Go To Movie Detail                               ${URL_MOVIE_DETAIL}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials                          ${ACCOUNT_MIA2_EMAIL}                      ${ACCOUNT_MIA2_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail                                      ${EXPECTED_URL_MOVIE_DETAIL}
    MovieDetailPage.Play Content From Movie Detail
    MovieDetailPage.Play a content in fullscreen mode
    MovieDetailPage.Verify fullscreen icon
    MovieDetailPage.Verify Video Metadata

Delivery - Matches: TC005 Default Controls
    [Documentation]  Verify the default control in player working correctly
    [Tags]           Regression     Smoke       Prod Sync

    HomePage.Open Matches Page
    HomePage.Choose any upcoming match
    ${status} =        Run Keyword And Continue On Failure    Get Text  ${matches_status_match}
    Run Keyword If	   '${status}' == 'LIVE NOW'      Check Upcoming Matches
    ...                ELSE IF	'${status}' != 'LIVE NOW'    Go To Another Live Match     ${URL_MOVIE_DETAIL}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials                          ${ACCOUNT_PUTRA_EMAIL}                      ${ACCOUNT_PUTRA_PASSWORD}
    MovieDetailPage.Verify Default Control

Delivery - Matches: TC006 Buffering
    [Documentation]  Buffering when movie played
    [Tags]           Regression     Smoke

    MovieDetailPage.Go To Movie Detail                               ${URL_MOVIE_DETAIL}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials         ${ACCOUNT_CINCIN_EMAIL}          ${ACCOUNT_CINCIN_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail          ${EXPECTED_URL_MOVIE_DETAIL}
    MovieDetailPage.Play Content From Movie Detail
    MovieDetailPage.Mouse Hover To Movie
    MovieDetailPage.Forward Progress Bar
    MovieDetailPage.Verify Loading Indicator

Delivery - Matches: TC007 Full Screen Mode
    [Documentation]  Video player can be played in minimize and maximize
    [Tags]           Regression     Smoke

    MovieDetailPage.Go To Movie Detail                               ${URL_MOVIE_DETAIL}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials                          ${ACCOUNT_MIA2_EMAIL}                      ${ACCOUNT_MIA2_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail                                      ${EXPECTED_URL_MOVIE_DETAIL}
    MovieDetailPage.Play Content From Movie Detail
    MovieDetailPage.Play a content in fullscreen mode
    MovieDetailPage.Verify fullscreen icon

Delivery - Matches: TC009 Playback Control
    [Documentation]  Playback control movie
    [Tags]           Regression     Smoke

    MovieDetailPage.Go To Movie Detail                               ${URL_MOVIE_DETAIL}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNT_PUTRA_EMAIL}                  ${ACCOUNT_PUTRa_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail                      ${EXPECTED_URL_MOVIE_DETAIL}
    MovieDetailPage.Play Content From Movie Detail
    MovieDetailPage.Mouse Hover To Movie
    MovieDetailPage.Pause And Resume Live Matches

Delivery - Matches: TC010 Quality Control
    [Documentation]  Change Quality Control
    [Tags]           Regression     Smoke

    MovieDetailPage.Go To Movie Detail                               ${URL_MOVIE_DETAIL}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNT_JERRY_EMAIL}                  ${ACCOUNT_JERRY_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail                      ${EXPECTED_URL_MOVIE_DETAIL}
    MovieDetailPage.Play Content From Movie Detail
    MovieDetailPage.Change Video Quality
    MovieDetailPage.Verify Change Quality           ${EXPECTED_CHANGE_QUALITY_576}  ${EXPECTED_CHANGE_QUALITY_270}      ${EXPECTED_CHANGE_QUALITY_360}      ${EXPECTED_CHANGE_QUALITY_720}

Delivery - Matches: TC011 Volume Control
     [Documentation]  Change volume during video playback
     [Tags]           Regression    Smoke

    MovieDetailPage.Go To Movie Detail                               ${URL_MOVIE_DETAIL}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials                          ${ACCOUNT_CINCIN_EMAIL}                     ${ACCOUNT_CINCIN_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail                                      ${EXPECTED_URL_MOVIE_DETAIL}
    MovieDetailPage.Play Content From Movie Detail
    MovieDetailPage.Change volume during video playback

Delivery - Matches: TC012 Upcoming match details page
    [Documentation]     Verify the details page of a Upcoming match
    [Tags]              Regression  Smoke   Prod Sync

    HomePage.Open Matches Page
    HomePage.Choose any upcoming match

    ${status} =        Run Keyword And Continue On Failure    Get Text  ${matches_status_match}
    Run Keyword If	   '${status}' == 'Upcoming'      Check Upcoming Matches
    ...                ELSE IF	'${status}' == 'LIVE NOW'    Click Next Day
    ...                ELSE IF  '${status}' == 'Full Time'   Click Next Day
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials                          ${ACCOUNT_PUTRA_EMAIL}                      ${ACCOUNT_PUTRA_PASSWORD}
    MovieDetailPage.Verify Upcoming Live Matches

Delivery - Matches: TC013 Filter Live Matches
    [Documentation]     Verify filter live matches
    [Tags]              Regression  Smoke   Prod Sync

    HomePage.Open Matches Page
    HomePage.Tap Drop Down Filter Competition
    HomePage.Change Filter Competition
    HomePage.Click Button Apply
    HomePage.Verify displayed the live match schedule according to the filter

Delivery - Matches: TC014 Filter live matches not saved
    [Documentation]     Verify filter live matches
    [Tags]              Regression  Smoke   Prod Sync

    HomePage.Open Matches Page
    HomePage.Tap Drop Down Filter Competition
    HomePage.Change Filter Competition
    HomePage.Dont't Click Button Apply
    HomePage.Verify Filter Not Saved