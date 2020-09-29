*** Settings ***
Resource                        ../../../Frameworks/Routers.robot
Library                         SeleniumLibrary

Test Setup                      CommonKeywords.Start Testing        ${URL}
Test Teardown                   CommonKeywords.End Testing

*** Variables ***
${URL}                                  https://mola.tv
${URL_MOVIE_DETAIL}                     https://mola.tv/watch?v=vd74299098
${EXPECTED_URL_MOVIE_DETAIL}            ${URL_MOVIE_DETAIL}
${TITLE_MOVIE}                          Apocalypto
${URL_MOVIE_DETAIL2}                    https://mola.tv/watch?v=vd92288792
${EXPECTED_TEXT_MENU_HOME}              Home
${EXPECTED_MOVIE_DETAIL2}               ${URL_MOVIE_DETAIL2}
${EXPECTED_CHANGE_QUALITY_576}          576
${EXPECTED_CHANGE_QUALITY_270}          270
${EXPECTED_CHANGE_QUALITY_360}          360
${EXPECTED_CHANGE_QUALITY_720}          720
${EXPECTED_CHANGE_QUALITY_AUTO}         Auto

*** Test Cases ***
Delivery - Vod: Match detail
    [Documentation]     Verify the details page of a Live/Replay/Highlights match
    [Tags]              Regression  Smoke

    MovieDetailPage.Login from movie detail         ${URL_MOVIE_DETAIL}
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials         ${ACCOUNT_CINCIN_EMAIL}          ${ACCOUNT_CINCIN_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail          ${EXPECTED_URL_MOVIE_DETAIL}

Delivery - Vod: Video playback without sign in
    [Documentation]     Select an asset for video playback (Live/Reply/Movie)
    [Tags]              Regression  Smoke

    MovieDetailPage.Select an asset for video playback (Live/Reply/Movie)      ${URL_MOVIE_DETAIL}
    MovieDetailPage.Verify login blocker if not sign in before

Delivery - Vod: Buffering
    [Documentation]  Buffering when movie played
    [Tags]           Regression     Smoke

    MovieDetailPage.Login from movie detail         ${URL_MOVIE_DETAIL}
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials         ${ACCOUNT_CINCIN_EMAIL}          ${ACCOUNT_CINCIN_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail          ${EXPECTED_URL_MOVIE_DETAIL}
    MovieDetailPage.Play Content From Movie Detail
    MovieDetailPage.Mouse Hover To Movie
    MovieDetailPage.Forward Progress Bar
    MovieDetailPage.Verify Loading Indicator

Delivery - Vod: Playback Control
    [Documentation]  Playback control movie
    [Tags]           Regression     Smoke

    MovieDetailPage.Login from movie detail         ${URL_MOVIE_DETAIL}
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNT_PUTRA_EMAIL}                  ${ACCOUNT_PUTRA_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail                      ${EXPECTED_URL_MOVIE_DETAIL}
    MovieDetailPage.Play Content From Movie Detail
    MovieDetailPage.Mouse Hover To Movie
    MovieDetailPage.Verify The progress bar and elapsed time are updating when playing a content
    MovieDetailPage.Auto Play Next Episode

Delivery - Vod: Quality Control
    [Documentation]  Change Quality Control
    [Tags]           Regression     Smoke

    MovieDetailPage.Login from movie detail         ${URL_MOVIE_DETAIL}
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNT_KAMAL_EMAIL}                  ${ACCOUNT_KAMAL_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail                      ${EXPECTED_URL_MOVIE_DETAIL}
    MovieDetailPage.Play Content From Movie Detail
    MovieDetailPage.Change Video Quality
    MovieDetailPage.Verify Change Quality           ${EXPECTED_CHANGE_QUALITY_576}  ${EXPECTED_CHANGE_QUALITY_270}      ${EXPECTED_CHANGE_QUALITY_360}      ${EXPECTED_CHANGE_QUALITY_720}      ${EXPECTED_CHANGE_QUALITY_AUTO}

Delivery - Vod: Closed Caption (Subtitles) Control
    [Documentation]  Check about closed caption from video player
    [Tags]           Regression     Smoke

    MovieDetailPage.Login from movie detail                     ${URL_MOVIE_DETAIL}
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials                          ${ACCOUNT_MIA2_EMAIL}                   ${ACCOUNT_MIA2_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail                                  ${EXPECTED_URL_MOVIE_DETAIL}
    MovieDetailPage.Play Content From Movie Detail
    MovieDetailPage.Verify Content not Supporting Closed Caption
    MovieDetailPage.Play a content which is not supporting closed caption                               ${URL_MOVIE_DETAIL2}
    MovieDetailPage.Verify Close Caption Icon
    MovieDetailPage.Play a content which is supporting closed caption
    MovieDetailPage.Verify Subtitle
    MovieDetailPage.No closed caption is shown when the 'Closed Caption' is off
    MovieDetailPage.Verify Closed Caption is Not Shown

Delivery - Vod: Volume Control
     [Documentation]  Change volume during video playback
     [Tags]           Regression    Smoke

    MovieDetailPage.Login from movie detail                     ${URL_MOVIE_DETAIL}
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials                          ${ACCOUNT_CINCIN_EMAIL}                     ${ACCOUNT_CINCIN_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail                                      ${EXPECTED_URL_MOVIE_DETAIL}
    MovieDetailPage.Play Content From Movie Detail
    MovieDetailPage.Change volume during video playback

Delivery - Vod: Fullscreen mode
    [Documentation]  Video player can be played in minimize and maximize
    [Tags]           Regression     Smoke

    MovieDetailPage.Login from movie detail                     ${URL_MOVIE_DETAIL}
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials                          ${ACCOUNT_PUTRA_EMAIL}                      ${ACCOUNT_PUTRA_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail                                      ${EXPECTED_URL_MOVIE_DETAIL}
    MovieDetailPage.Play Content From Movie Detail
    MovieDetailPage.Play a content in fullscreen mode
    MovieDetailPage.Verify fullscreen icon

Delivery - Vod: Video Metadata
    [Documentation]  Shown player content from VOD
    [Tags]           Regression     Smoke

    MovieDetailPage.Login from movie detail                     ${URL_MOVIE_DETAIL}
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials                          ${ACCOUNT_KAMAL_EMAIL}                      ${ACCOUNT_KAMAL_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail                                      ${EXPECTED_URL_MOVIE_DETAIL}
    MovieDetailPage.Play Content From Movie Detail
    MovieDetailPage.Play a content in fullscreen mode
    MovieDetailPage.Verify fullscreen icon
    MovieDetailPage.Verify Video Metadata