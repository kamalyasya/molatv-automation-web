*** Settings ***
Resource                        ../../../Frameworks/Routers.robot
Library                         SeleniumLibrary

Test Setup                      CommonKeywords.Start Testing        ${URL}
Test Teardown                   CommonKeywords.End Testing

*** Variables ***
${URL}                                  https://mola.tv

${URL_MOVIE_DETAIL}                     https://mola.tv/watch?v=vd91671021
${EMAIL_PUTRA}                          putra.pratama@mola.tv
${PASSWORD_PUTRA}                       admin123
${EXPECTED_URL_MOVIE_DETAIL}            ${URL_MOVIE_DETAIL}
${EXPECTED_BUFFERING}                   css=.progressbar_progress_buffer
${TITLE_MOVIE_DETAIL}                   css=h1
${TITLE_MOVIE}                          Apocalypto
${URL_MOVIE_DETAIL2}                    https://mola.tv/watch?v=vd61974308
${EXPECTED_MOVIE_DETAIL2}               ${URL_MOVIE_DETAIL2}

*** Test Cases ***
Delivery - Video Player: Video playback without sign in
    [Documentation]     Select an asset for video playback without sign in
    [Tags]              Regression Smoke

    MovieDetailPage.Select an asset for video playback (Live/Reply/Movie)
    MovieDetailPage.Verify login blocker if not sign in before

Delivery - Video player: Buffering
    [Documentation]  Buffering when movie played
    [Tags]           Regression Smoke

    MovieDetailPage.Login from movie detail         ${URL_MOVIE_DETAIL}
    MovieDetailPage.Verify Direct To Login Page
    MovieDetailPage.Login Using Credintials         ${EMAIL_PUTRA}          ${PASSWORD_PUTRA}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail      ${EXPECTED_URL_MOVIE_DETAIL}
    MovieDetailPage.Play Content From Movie Detail
    MovieDetailPage.Verify Loading Indicator        ${EXPECTED_BUFFERING}

Delivery - Video player: Playback Control
    [Documentation]  Playback control movie
    [Tags]           Regression Smoke

    MovieDetailPage.Login from movie detail         ${URL_MOVIE_DETAIL}
    MovieDetailPage.Verify Direct To Login Page
    MovieDetailPage.Login Using Credintials         ${EMAIL_PUTRA}          ${PASSWORD_PUTRA}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail      ${EXPECTED_URL_MOVIE_DETAIL}
    MovieDetailPage.Play Content From Movie Detail
    MovieDetailPage.Verify The progress bar and elapsed time are updating when playing a content