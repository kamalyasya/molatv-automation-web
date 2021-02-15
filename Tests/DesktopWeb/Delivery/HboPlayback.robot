*** Settings ***
Resource                        ../../../Frameworks/Routers.robot
Library                         SeleniumLibrary

Test Timeout                    ${DEFAULT_TEST_TIMEOUT}
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
    SignInPage.Login Using Credentials                          ${ACCOUNTS_HBO_EMAIL}     ${ACCOUNTS_HBO_PASSWORD}
    HboPlayback.User able to play HBO Go movies                 ${URL_HBO_MOVIE}
    AgeRestrictionPage.Verify Show Age Blocker 1 Hbo
    MovieDetailPage.Play Content Video Or Play Video From Begining
    HboPlayback.Play HBO Movies
    HboPlayback.Verify User able to play HBO Go movies
    HboPlayback.Unselect Frame From Video
    SignInPage.Logout Account

HBO Playback - Default Controls
    [Documentation]     Verify user able to using all the default controls
    [Tags]              Regression  HBO

    HboPlayback.Go To Login Page
    SignInPage.Login Using Credentials                          ${ACCOUNTS_HBO_EMAIL}     ${ACCOUNTS_HBO_PASSWORD}
    HboPlayback.User able to play HBO Go movies                 ${URL_HBO_MOVIE}
    AgeRestrictionPage.Verify Show Age Blocker 1 Hbo
    MovieDetailPage.Play Content Video Or Play Video From Begining
    HboPlayback.Play HBO Movies
    HboPlayback.Verify User able to play HBO Go movies
    HboPlayback.Verify default control
    HboPlayback.Unselect Frame From Video
    SignInPage.Logout Account

HBO Playback - Fullscreen Mode
    [Documentation]     Verify user able to played HBO go in fullscreen mode
    [Tags]              Regression  HBO

    HboPlayback.Go To Login Page
    SignInPage.Login Using Credentials                          ${ACCOUNTS_HBO_EMAIL}     ${ACCOUNTS_HBO_PASSWORD}
    HboPlayback.User able to play HBO Go movies                 ${URL_HBO_MOVIE}
    AgeRestrictionPage.Verify Show Age Blocker 1 Hbo
    MovieDetailPage.Play Content Video Or Play Video From Begining
    HboPlayback.Play HBO Movies
    HboPlayback.Verify user able to played HBO go in fullscreen mode
    HboPlayback.Unselect Frame From Video
    SignInPage.Logout Account

HBO Playback - Playback Control
    [Documentation]     Verify the content on HBO Go player resumes after pausing
    [Tags]              Regression  HBO

    HboPlayback.Go To Login Page
    SignInPage.Login Using Credentials                          ${ACCOUNTS_HBO_EMAIL}     ${ACCOUNTS_HBO_PASSWORD}
    HboPlayback.User able to play HBO Go movies                 ${URL_HBO_MOVIE}
    AgeRestrictionPage.Verify Show Age Blocker 1 Hbo
    MovieDetailPage.Play Content Video Or Play Video From Begining
    HboPlayback.Play HBO Movies
    HboPlayback.Verify the content on HBO Go player resumes after pausing
    HboPlayback.Unselect Frame From Video
    SignInPage.Logout Account

HBO Playback - progress bar
    [Documentation]     Verify the progress bar and elapsed time on HBO Go player are updating when playing a content
    [Tags]              Regression  HBO

    HboPlayback.Go To Login Page
    SignInPage.Login Using Credentials                          ${ACCOUNTS_HBO_EMAIL}     ${ACCOUNTS_HBO_PASSWORD}
    HboPlayback.User able to play HBO Go movies                 ${URL_HBO_MOVIE}
    AgeRestrictionPage.Verify Show Age Blocker 1 Hbo
    MovieDetailPage.Play Content Video Or Play Video From Begining
    HboPlayback.Play HBO Movies
    HboPlayback.verify the progress bar and elapsed time on HBO Go player are updating when playing a content
    HboPlayback.Unselect Frame From Video
    SignInPage.Logout Account

HBO Playback - Forward/Rewound
    [Documentation]     Verify the content resumes after fast forwarded or rewound
    [Tags]              Regression  HBO

    HboPlayback.Go To Login Page
    SignInPage.Login Using Credentials                          ${ACCOUNTS_HBO_EMAIL}     ${ACCOUNTS_HBO_PASSWORD}
    HboPlayback.User able to play HBO Go movies                 ${URL_HBO_MOVIE}
    AgeRestrictionPage.Verify Show Age Blocker 1 Hbo
    MovieDetailPage.Play Content Video Or Play Video From Begining
    HboPlayback.Play HBO Movies
    HboPlayback.Verify the content resumes after fast forwarded or rewound
    HboPlayback.Unselect Frame From Video
    SignInPage.Logout Account

HBO Playback - Subtitle Turn Off
    [Documentation]     Verify No closed caption/Subtitle is shown when the 'Closed Caption' is off
    [Tags]              Regression  HBO

    HboPlayback.Go To Login Page
    SignInPage.Login Using Credentials                          ${ACCOUNTS_HBO_EMAIL}     ${ACCOUNTS_HBO_PASSWORD}
    HboPlayback.User able to play HBO Go movies                 ${URL_HBO_MOVIE}
    AgeRestrictionPage.Verify Show Age Blocker 1 Hbo
    MovieDetailPage.Play Content Video Or Play Video From Begining
    HboPlayback.Play HBO Movies
    HboPlayback.Verify No closed caption/Subtitle is shown when the 'Closed Caption' is off
    HboPlayback.Unselect Frame From Video
    SignInPage.Logout Account

HBO Playback - Subtitle Turn On
    [Documentation]     Verify the closed caption/Subtitle is shown based on the selected language
    [Tags]              Regression  HBO

    HboPlayback.Go To Login Page
    SignInPage.Login Using Credentials                          ${ACCOUNTS_HBO_EMAIL}     ${ACCOUNTS_HBO_PASSWORD}
    HboPlayback.User able to play HBO Go movies                 ${URL_HBO_MOVIE}
    AgeRestrictionPage.Verify Show Age Blocker 1 Hbo
    MovieDetailPage.Play Content Video Or Play Video From Begining
    HboPlayback.Play HBO Movies
    HboPlayback.Verify the closed caption/Subtitle is shown based on the selected language
    HboPlayback.Unselect Frame From Video
    SignInPage.Logout Account

HBO Playback - Volume Controls
    [Documentation]     Verify User able to set volume up/down on HBO Go player
    [Tags]              Regression  HBO

    HboPlayback.Go To Login Page
    SignInPage.Login Using Credentials                          ${ACCOUNTS_HBO_EMAIL}     ${ACCOUNTS_HBO_PASSWORD}
    HboPlayback.User able to play HBO Go movies                 ${URL_HBO_MOVIE}
    AgeRestrictionPage.Verify Show Age Blocker 1 Hbo
    MovieDetailPage.Play Content Video Or Play Video From Begining
    HboPlayback.Play HBO Movies
    HboPlayback.Verify User able to set volume up/down on HBO Go player
    HboPlayback.Unselect Frame From Video
    SignInPage.Logout Account

HBO Playback - Movie Rating
    [Documentation]     Verify User able to see HBO movie rating on movie detail
    [Tags]              Regression  HBO

    HboPlayback.Go To Login Page
    SignInPage.Login Using Credentials                          ${ACCOUNTS_HBO_EMAIL}     ${ACCOUNTS_HBO_PASSWORD}
    HboPlayback.See HBO movie rating on movie detail            ${URL_HBO_MOVIE}
    AgeRestrictionPage.Verify Show Age Blocker 1 Hbo
    HboPlayback.User able to see HBO movie rating on movie detail
    SignInPage.Logout Account