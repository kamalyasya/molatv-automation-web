*** Settings ***
Resource                        ../../../Frameworks/Routers.robot
Library                         SeleniumLibrary

Test Timeout                    ${DEFAULT_TEST_TIMEOUT}
Test Setup                      CommonKeywords.Start Testing        ${URL}
Test Teardown                   CommonKeywords.End Testing

*** Variables ***
${URL}                                  https://mola.tv
${URL_MOVIE_DETAIL}                     https://mola.tv/watch?v=vd74299098
${URL_TRAILER_DETAIL}                   https://mola.tv/watch?v=vd98467304
${URL_MOVIE_DETAIL2}                    https://mola.tv/watch?v=vd98699941
${URL_MOVIE_DETAIL3}                    https://mola.tv/watch?v=vd61951986
${URL_MOVIE_DETAIL4}                    https://mola.tv/watch?v=vd03702876
${URL_MOVIE_DETAIL18+}                  https://mola.tv/watch?v=vd86229032
${URL_MOVIE_DETAIL_EPISODES}            https://mola.tv/watch?v=vd71200689
${EXPECTED_URL_MOVIE_DETAIL}            ${URL_MOVIE_DETAIL}
${EXPECTED_URL_MOVIE_DETAIL2}           ${URL_MOVIE_DETAIL2}
${EXPECTED_URL_MOVIE_DETAIL3}           ${URL_MOVIE_DETAIL3}
${EXPECTED_URL_MOVIE_DETAIL4}           ${URL_MOVIE_DETAIL4}
${EXPECTED_TRAILER_DETAIL}              ${URL_TRAILER_DETAIL}
${EXPECTED_URL_MOVIE_DETAIL_EPISODES}   ${URL_MOVIE_DETAIL_EPISODES}
${EXPECTED_LOCATION_NEXT_EPISODE}       https://mola.tv/watch?v=vd71200807&autoplay=1
${EXPECTED_TITLE_SAME_EPISODES}         S1E02: A New Chicken Shed for Moo
${EXPECTED_TEXT_MENU_HOME}              Home
${EXPECTED_CHANGE_QUALITY_576}          576
${EXPECTED_CHANGE_QUALITY_270}          270
${EXPECTED_CHANGE_QUALITY_360}          360
${EXPECTED_CHANGE_QUALITY_720}          720
${EXPECTED_CHANGE_QUALITY_AUTO}         Auto

*** Test Cases ***
Delivery - Video Player: TC001 Movie Details page
    [Documentation]     Verify the content details page of a movie
    [Tags]              Regression  Smoke

    MovieDetailPage.Go To Movie Detail          ${URL_MOVIE_DETAIL2}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials          ${ACCOUNTS_HBO_EMAIL}               ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${EXPECTED_URL_MOVIE_DETAIL2}
    SignInPage.Logout Account

Delivery - Video Player: TC002 Play the content
    [Documentation]     Verify the VOD can be played
    [Tags]              Regression  Smoke

    MovieDetailPage.Go To Movie Detail           ${URL_MOVIE_DETAIL2}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials           ${ACCOUNTS_HBO_EMAIL}              ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${EXPECTED_URL_MOVIE_DETAIL2}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Verify The progress bar and elapsed time are updating when playing a content
    SignInPage.Logout Account

Delivery - Video Player: TC003 Trailer Asset
    [Documentation]     Verify the VOD Trailer can be played
    [Tags]              Regression  Smoke

    MovieDetailPage.Go To Movie Detail              ${URL_TRAILER_DETAIL}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${EXPECTED_TRAILER_DETAIL}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Verify The progress bar and elapsed time are updating when playing a content

Delivery - Video Player: TC004 Default Controls
    [Documentation]     Verify the player is using the default control
    [Tags]              Regression  Smoke

    MovieDetailPage.Go To Movie Detail              ${URL_TRAILER_DETAIL}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Verify Default Control

Delivery - Video Player: TC005 Buffering
    [Documentation]  Verify there is a loading indicator when buffering
    [Tags]           Regression   Smoke

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL2}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${EXPECTED_URL_MOVIE_DETAIL2}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Mouse Hover To Movie
    MovieDetailPage.Forward Progress Bar
    MovieDetailPage.Verify Loading Indicator
    SignInPage.Logout Account

Delivery - Video Player: TC006 Fullscreen Mode
    [Documentation]  Verify the content can be played in fullscreen mode
    [Tags]           Regression   Smoke

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL2}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${EXPECTED_URL_MOVIE_DETAIL2}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Play a content in fullscreen mode
    MovieDetailPage.Verify fullscreen icon
    SignInPage.Logout Account

Delivery - Video Player: TC007 Playback Control
    [Documentation]  Playback control movie
    [Tags]           Regression   Smoke

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL2}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${EXPECTED_URL_MOVIE_DETAIL2}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Mouse Hover To Movie
    MovieDetailPage.Verify Pause And Resume Live Matches
    SignInPage.Logout Account

Delivery - Video Player: TC008 Playback - progress bar
    [Documentation]  Verify the progress bar and elapsed time are updating when playing a content
    [Tags]           Regression   Smoke

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL2}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${EXPECTED_URL_MOVIE_DETAIL2}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Mouse Hover To Movie
    MovieDetailPage.Verify The progress bar and elapsed time are updating when playing a content
    SignInPage.Logout Account

Delivery - Video Player: TC009 Playback - Forward/Backward
    [Documentation]  Verify the content resumes after fast forwarded or backward
    [Tags]           Regression   Smoke

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL2}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${EXPECTED_URL_MOVIE_DETAIL2}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Mouse Hover To Movie
    MovieDetailPage.Click button Forward/backward movie
    MovieDetailPage.Verify The progress bar and elapsed time are updating when playing a content
    SignInPage.Logout Account

Delivery - Video Player: TC010 Auto Next Video - Same Categories
    [Documentation]  Verify the Next VOD is play in the same Category as a VOD before
    [Tags]           Regression   Smoke

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL4}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${EXPECTED_URL_MOVIE_DETAIL4}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Seek To Last 10s
    MovieDetailPage.Click Button Play Next Auto Play
    AgeRestrictionPage.Verify Show Age blocker "CLOSE or TUTUP" button
    MovieDetailPage.Verify Categories Movie
    SignInPage.Logout Account

Delivery - Video Player: TC011 Auto Next Video - Episodes
    [Documentation]  Verify the Next continued Episode VOD is play in the same Category as a VOD before
    [Tags]           Regression   Smoke

    MovieDetailPage.Go To Movie Detail              ${EXPECTED_URL_MOVIE_DETAIL_EPISODES}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${EXPECTED_URL_MOVIE_DETAIL_EPISODES}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Seek To Last 10s
    MovieDetailPage.Verify Next Episode Same Category As VOD                        ${EXPECTED_TITLE_SAME_EPISODES}
    SignInPage.Logout Account

Delivery - Video Player: TC012 Auto Next Video - Countdown
    [Documentation]  Verify AutoPlay Next Episode with countdown to 0
    [Tags]           Regression   Smoke

    MovieDetailPage.Go To Movie Detail              ${EXPECTED_URL_MOVIE_DETAIL_EPISODES}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${EXPECTED_URL_MOVIE_DETAIL_EPISODES}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Seek To Last 10s
    MovieDetailPage.Verify Countdown Auto Play      ${EXPECTED_LOCATION_NEXT_EPISODE}
    SignInPage.Logout Account

Delivery - Video Player: TC013 Auto Next Video - Skip
    [Documentation]  verify the pop up next video will disappear after click skip
    [Tags]           Regression   Smoke

    MovieDetailPage.Go To Movie Detail              ${EXPECTED_URL_MOVIE_DETAIL_EPISODES}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${EXPECTED_URL_MOVIE_DETAIL_EPISODES}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Seek To Last 10s
    MovieDetailPage.Click Button Skip Auto Play
    MovieDetailPage.Verify Button Replay Auto Play
    SignInPage.Logout Account

Delivery - Video Player: TC014 Auto Next Video button in Player
    [Documentation]  Verify the Next VOD is play in the same Category as a VOD before
    [Tags]           Regression   Smoke

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL4}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Click Button Next Video Beside Volume
    AgeRestrictionPage.Verify Show Age blocker "CLOSE or TUTUP" button
    MovieDetailPage.Verify Categories Movie
    SignInPage.Logout Account

Delivery - Video Player: TC015 Auto Next Video - Rewind VOD
    [Documentation]  Verify the pop up next video will disappear after scrub progress bar
    [Tags]           Regression   Smoke

    MovieDetailPage.Go To Movie Detail              ${EXPECTED_URL_MOVIE_DETAIL_EPISODES}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${EXPECTED_URL_MOVIE_DETAIL_EPISODES}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Seek To Last 10s
    MovieDetailPage.Click Button Skip Auto Play
    MovieDetailPage.Verify Button Replay Auto Play
    MovieDetailPage.Mouse Hover To Movie
    MovieDetailPage.Click Button Play Default Control
    MovieDetailPage.Seek To Last 10s
    MovieDetailPage.Verify No Autoplay Vanished
    SignInPage.Logout Account

Delivery - Video Player: TC016 Auto Next Video - Age Desclimer
    [Documentation]  verify the notification Age Disclaimer consists of disclaimer information, "Tutup" and "Setuju" buttons is shown
    [Tags]           Regression   Smoke

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL18+}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    AgeRestrictionPage.Verify Show Age blocker "CLOSE or TUTUP" button
    MovieDetailPage.Click Button Watch Now On Video Player
    MovieDetailPage.Seek To Last 10s
    MovieDetailPage.Click Button Play Next Auto Play
    AgeRestrictionPage.Verify Show Age Blocker 2 18+
    SignInPage.Logout Account

Delivery - Video Player: TC017 Quality Control
    [Documentation]     Verify the quality control is enabled
    [Tags]              Regression  Smoke

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL2}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${URL_MOVIE_DETAIL2}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Change Video Quality
    MovieDetailPage.Verify Change Quality           ${EXPECTED_CHANGE_QUALITY_576}  ${EXPECTED_CHANGE_QUALITY_270}  ${EXPECTED_CHANGE_QUALITY_360}  ${EXPECTED_CHANGE_QUALITY_720}
    SignInPage.Logout Account

Delivery - Video Player: TC018 Subtitle - not support
    [Documentation]     Verify VOD not supporting closed caption/subtitle
    [Tags]              Regression  Smoke

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL2}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${URL_MOVIE_DETAIL2}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Verify Content not Supporting Closed Caption
    SignInPage.Logout Account

Delivery - Video Player: TC019 Subtitle - turn off
    [Documentation]     Verify VOD not supporting closed caption/subtitle
    [Tags]              Regression  Smoke

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Click Button Watch Now On Video Player
    MovieDetailPage.Choose Closed Caption off
    MovieDetailPage.Verify Closed Caption is Not Shown
    SignInPage.Logout Account

Delivery - Video Player: TC020 Subtitle - Turn on
    [Documentation]     Verify the closed caption/Subtitle is shown based on the selected language
    [Tags]              Regression  Smoke

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Click Button Watch Now On Video Player
    MovieDetailPage.Play a content which is supporting closed caption
    MovieDetailPage.Verify Subtitle On Screen
    SignInPage.Logout Account

Delivery - Video Player: TC021 Volume Controls
    [Documentation]     Verify Change volume during video playback
    [Tags]              Regression  Smoke

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Click Button Watch Now On Video Player
    MovieDetailPage.Seek bar Volume
    MovieDetailPage.Verify Change volume during video playback
    SignInPage.Logout Account

Delivery - Video Player: TC023 Video Metadata
    [Documentation]  Verify the video metadata is shown in player
    [Tags]           Regression   Smoke

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL2}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${EXPECTED_URL_MOVIE_DETAIL2}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Play a content in fullscreen mode
    MovieDetailPage.Verify Video Metadata

Delivery - Video Player: TC024 Video playback for NOT sign in user
    [Documentation]  Verify A message prompt to sign in is shown
    [Tags]           Regression   Smoke

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL2}
    MovieDetailPage.Verify Message Prompt To Sign In                                ${URL_MOVIE_DETAIL2}