*** Settings ***
Resource                        ../../../Frameworks/Routers.robot
Library                         SeleniumLibrary

Test Setup                      CommonKeywords.Start Testing        ${URL}
Test Teardown                   CommonKeywords.End Testing

*** Variables ***
${URL}                      https://mola.tv
${URL_HBO_MOVIE}            https://mola.tv/watch?v=HBO023714X0

*** Test Cases ***
HBO Playback - Play The Content
    [Documentation]     Verify User able to play HBO Go movies
    [Tags]              Regression  HBO

    HboPlayback.Go To Login Page
    SignInPage.Login Using Credentials                          ${ACCOUNT_CINCIN_EMAIL}     ${ACCOUNT_CINCIN_PASSWORD}
    HboPlayback.User able to play HBO Go movies                 ${URL_HBO_MOVIE}
    HboPlayback.Verify User able to play HBO Go movies

HBO Playback - Default Controls
    [Documentation]     verify user able to using all the default controls
    [Tags]              Regression  HBO

    HboPlayback.Go To Login Page
    SignInPage.Login Using Credentials                          ${ACCOUNT_KAMAL_EMAIL}     ${ACCOUNT_KAMAL_PASSWORD}
    HboPlayback.User able to play HBO Go movies                 ${URL_HBO_MOVIE}
    HboPlayback.Verify User able to play HBO Go movies
    HboPlayback.Verify default control

HBO Playback - Fullscreen Mode
    [Documentation]     Verify user able to played HBO go in fullscreen mode
    [Tags]              Regression  HBO

    HboPlayback.Go To Login Page
    SignInPage.Login Using Credentials                          ${ACCOUNT_PUTRA_EMAIL}     ${ACCOUNT_PUTRA_PASSWORD}
    HboPlayback.User able to play HBO Go movies                 ${URL_HBO_MOVIE}
    HboPlayback.Verify user able to played HBO go in fullscreen mode

HBO Playback - Playback Control
    [Documentation]     Verify the content on HBO Go player resumes after pausing
    [Tags]              Regression  HBO

    HboPlayback.Go To Login Page
    SignInPage.Login Using Credentials                          ${ACCOUNT_JERRY_EMAIL}     ${ACCOUNT_JERRY_PASSWORD}
    HboPlayback.User able to play HBO Go movies                 ${URL_HBO_MOVIE}
    HboPlayback.Verify the content on HBO Go player resumes after pausing

HBO Playback - progress bar
    [Documentation]     Verify the progress bar and elapsed time on HBO Go player are updating when playing a content
    [Tags]              Regression  HBO

    HboPlayback.Go To Login Page
    SignInPage.Login Using Credentials                          ${ACCOUNT_CINCIN_EMAIL}     ${ACCOUNT_CINCIN_PASSWORD}
    HboPlayback.User able to play HBO Go movies                 ${URL_HBO_MOVIE}
    HboPlayback.verify the progress bar and elapsed time on HBO Go player are updating when playing a content

HBO Playback - Forward/Rewound
    [Documentation]     Verify the content resumes after fast forwarded or rewound
    [Tags]              Regression  HBO

    HboPlayback.Go To Login Page
    SignInPage.Login Using Credentials                          ${ACCOUNT_PUTRA_EMAIL}     ${ACCOUNT_PUTRA_PASSWORD}
    HboPlayback.User able to play HBO Go movies                 ${URL_HBO_MOVIE}
    HboPlayback.Verify the content resumes after fast forwarded or rewound

HBO Playback - Subtitle Turn Off
    [Documentation]     Verify No closed caption/Subtitle is shown when the 'Closed Caption' is off
    [Tags]              Regression  HBO

    HboPlayback.Go To Login Page
    SignInPage.Login Using Credentials                          ${ACCOUNT_KAMAL_EMAIL}     ${ACCOUNT_KAMAL_PASSWORD}
    HboPlayback.User able to play HBO Go movies                 ${URL_HBO_MOVIE}
    HboPlayback.Verify No closed caption/Subtitle is shown when the 'Closed Caption' is off

HBO Playback - Subtitle Turn On
    [Documentation]     Verify the closed caption/Subtitle is shown based on the selected language
    [Tags]              Regression  HBO

    HboPlayback.Go To Login Page
    SignInPage.Login Using Credentials                          ${ACCOUNT_JERRY_EMAIL}     ${ACCOUNT_JERRY_PASSWORD}
    HboPlayback.User able to play HBO Go movies                 ${URL_HBO_MOVIE}
    HboPlayback.Verify the closed caption/Subtitle is shown based on the selected language

HBO Playback - Volume Controls
    [Documentation]     Verify User able to set volume up/down on HBO Go player
    [Tags]              Regression  HBO

    HboPlayback.Go To Login Page
    SignInPage.Login Using Credentials                          ${ACCOUNT_KAMAL_EMAIL}     ${ACCOUNT_KAMAL_PASSWORD}
    HboPlayback.User able to play HBO Go movies                 ${URL_HBO_MOVIE}
    HboPlayback.Verify User able to set volume up/down on HBO Go player

HBO Playback - Movie Rating
    [Documentation]     Verify User able to see HBO movie rating on movie detail
    [Tags]              Regression  HBO

    HboPlayback.Go To Login Page
    SignInPage.Login Using Credentials                          ${ACCOUNT_PUTRA_EMAIL}     ${ACCOUNT_PUTRA_PASSWORD}
    HboPlayback.See HBO movie rating on movie detail            ${URL_HBO_MOVIE}
    HboPlayback.User able to see HBO movie rating on movie detail