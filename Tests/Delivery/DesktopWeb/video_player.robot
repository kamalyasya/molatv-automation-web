*** Settings ***
Resource                        ../../../Frameworks/Routers.robot
Library                         SeleniumLibrary

Test Setup                      CommonKeywords.Start Testing        ${URL}
Test Teardown                   CommonKeywords.End Testing

*** Variables ***
${URL}                                  https://mola.tv

${URL_MOVIE_DETAIL}                     https://mola.tv/watch?v=vd74299098
${EMAIL_PUTRA}                          putra.pratama@mola.tv
${PASSWORD_PUTRA}                       admin123
${EMAIL_CINCIN}                         cincin.jati@mola.tv
${PASSWORD_CINCIN}                      12345678
${EMAIL_KAMAL}                          kamal.yasha@mola.tv
${PASSWORD_KAMAL}                       1234567890
${EXPECTED_URL_MOVIE_DETAIL}            ${URL_MOVIE_DETAIL}
${EXPECTED_BUFFERING}                   css=.progressbar_progress_buffer
${TITLE_MOVIE_DETAIL}                   css=h1
${TITLE_MOVIE}                          Apocalypto
${URL_MOVIE_DETAIL2}                    https://mola.tv/watch?v=vd61974308
${EXPECTED_MOVIE_DETAIL2}               ${URL_MOVIE_DETAIL2}
${EXPECTED_CHANGE_QUALITY_576}          576
${EXPECTED_CHANGE_QUALITY_270}          270
${EXPECTED_CHANGE_QUALITY_360}          360
${EXPECTED_CHANGE_QUALITY_720}          720
${EXPECTED_CHANGE_QUALITY_AUTO}         Auto

*** Test Cases ***
Delivery - Video Player: Video playback without sign in
    [Documentation]     Select an asset for video playback (Live/Reply/Movie)
    [Tags]              Regression Smoke

    MovieDetailPage.Select an asset for video playback (Live/Reply/Movie)      ${URL_MOVIE_DETAIL}
    MovieDetailPage.Verify login blocker if not sign in before

Delivery - Video player: Buffering
    [Documentation]  Buffering when movie played
    [Tags]           Regression Smoke

    MovieDetailPage.Login from movie detail         ${URL_MOVIE_DETAIL}
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials         ${EMAIL_PUTRA}          ${PASSWORD_PUTRA}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail      ${EXPECTED_URL_MOVIE_DETAIL}
    MovieDetailPage.Play Content From Movie Detail
    MovieDetailPage.Forward Progress Bar
    MovieDetailPage.Verify Loading Indicator        ${EXPECTED_BUFFERING}

Delivery - Video player: Playback Control
    [Documentation]  Playback control movie
    [Tags]           Regression Smoke

    MovieDetailPage.Login from movie detail         ${URL_MOVIE_DETAIL}
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${EMAIL_CINCIN}                 ${PASSWORD_CINCIN}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${EXPECTED_URL_MOVIE_DETAIL}
    MovieDetailPage.Play Content From Movie Detail
    MovieDetailPage.Mouse Hover To Movie
    MovieDetailPage.Verify The progress bar and elapsed time are updating when playing a content
    MovieDetailPage.Auto Play Next Episode
    MovieDetailPage.Verify Auto Play Next Episode

Delivery - Video player: Quality Control
    [Documentation]  Change Quality Control
    [Tags]           Regression Smoke

    MovieDetailPage.Login from movie detail         ${URL_MOVIE_DETAIL}
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${EMAIL_KAMAL}                  ${PASSWORD_KAMAL}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${EXPECTED_URL_MOVIE_DETAIL}
    MovieDetailPage.Play Content From Movie Detail
    MovieDetailPage.Change Video Quality
    MovieDetailPage.Verify Change Quality           ${EXPECTED_CHANGE_QUALITY_576}  ${EXPECTED_CHANGE_QUALITY_270}      ${EXPECTED_CHANGE_QUALITY_360}      ${EXPECTED_CHANGE_QUALITY_720}      ${EXPECTED_CHANGE_QUALITY_AUTO}