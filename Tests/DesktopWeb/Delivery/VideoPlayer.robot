*** Settings ***
Resource                        ../../../Frameworks/Routers.robot

Test Timeout                    ${DEFAULT_TEST_TIMEOUT}
Test Setup                      CommonKeywords.Start Testing        ${URL}
Test Teardown                   CommonKeywords.End Testing

*** Variables ***
${URL}                                          ${HOST}
${URL_MOVIE_DETAIL}                             ${HOST}/watch?v=vd09872518
${URL_TRAILER_DETAIL}                           ${HOST}/watch?v=vd97823877
${URL_MOVIE_DETAIL2}                            ${HOST}/watch?v=vd13549177
${URL_MOVIE_DETAIL3}                            ${HOST}/watch?v=vd87538853
${URL_MOVIE_DETAIL4}                            ${HOST}/watch?v=vd07512244
${URL_MOVIE_DETAIL5}                            ${HOST}/watch?v=vd16826140
${URL_MOVIE_DETAIL18+}                          ${HOST}/watch?v=vd94027041
${URL_MOVIE_DETAIL_SERIES}                      ${HOST}/watch?v=vd10443785
${URL_MOVIE_DETAIL_EPISODES_KIDS}               ${HOST}/watch?v=vd71200689
${URL_MOVIE_DETAIL_EPISODES_DRAMA}              ${HOST}/watch?v=vd12945393
${URL_MOVIE_DETAIL_SPORTS}                      ${HOST}/watch?v=vd11747939
${EXPECTED_URL_MOVIE_DETAIL}                    ${URL_MOVIE_DETAIL}
${EXPECTED_URL_MOVIE_DETAIL2}                   ${URL_MOVIE_DETAIL2}
${EXPECTED_URL_MOVIE_DETAIL3}                   ${URL_MOVIE_DETAIL3}
${EXPECTED_URL_MOVIE_DETAIL4}                   ${URL_MOVIE_DETAIL4}
${EXPECTED_URL_MOVIE_DETAIL5}                   ${URL_MOVIE_DETAIL5}
${EXPECTED_TRAILER_DETAIL}                      ${URL_TRAILER_DETAIL}
${EXPECTED_URL_MOVIE_DETAIL_EPISODES_KIDS}      ${URL_MOVIE_DETAIL_EPISODES_KIDS}
${EXPECTED_URL_MOVIE_DETAIL_EPISODES_DRAMA}     ${URL_MOVIE_DETAIL_EPISODES_DRAMA}
${EXPECTED_LOCATION_NEXT_EPISODE}               ${HOST}/watch?v=vd71200807&autoplay=1
${EXPECTED_TITLE_SAME_EPISODES}                 S1E02: A New Chicken Shed for Moo
${EXPECTED_TEXT_MENU_HOME}                      Home
${EXPECTED_CHANGE_QUALITY_576}                  576
${EXPECTED_CHANGE_QUALITY_270}                  270
${EXPECTED_CHANGE_QUALITY_360}                  360
${EXPECTED_CHANGE_QUALITY_720}                  720
${EXPECTED_CHANGE_QUALITY_AUTO}                 Auto

*** Test Cases ***
Delivery - Video Player: TC001 Movie Details page
    [Documentation]     Verify the content details page of a movie
    [Tags]              Regression  Smoke   Verified

    MovieDetailPage.Go To Movie Detail          ${URL_MOVIE_DETAIL_EPISODES_DRAMA}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials          ${ACCOUNTS_HBO_EMAIL}               ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${EXPECTED_URL_MOVIE_DETAIL_EPISODES_DRAMA}
    MovieDetailPage.Verify Title Related Video
    MovieDetailPage.Verify Related Video Based On Single Film Title
    MovieDetailPage.Go To Movie Detail          ${URL_MOVIE_DETAIL5}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${EXPECTED_URL_MOVIE_DETAIL5}
    MovieDetailPage.Verify Title Related Video
    MovieDetailPage.Verify Related Video Based On Single Film Title
    SignInPage.Logout Account

Delivery - Video Player: TC002 Play the content
    [Documentation]     Verify the VOD can be played
    [Tags]              Regression  Smoke   Verified

    MovieDetailPage.Go To Movie Detail           ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials           ${ACCOUNTS_HBO_EMAIL}              ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Verify The progress bar and elapsed time are updating when playing a content
    SignInPage.Logout Account

Delivery - Video Player: TC003 Trailer Asset
    [Documentation]     Verify the VOD Trailer can be played
    [Tags]              Regression  Smoke   Verified

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL4}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${URL_MOVIE_DETAIL4}
    MovieDetailPage.Verify Button Login To Watch Appear After Trailer Finished
    MovieDetailPage.Verify Trailer Can Play In Movie Detail Tab "Trailer"
    MovieDetailPage.Verify Default Control Trailer

Delivery - Video Player: TC004 Default Controls
    [Documentation]     Verify the player is using the default control
    [Tags]              Regression  Smoke   Verified

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}               ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail                  ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Verify Default Control

Delivery - Video Player: TC005 Buffering
    [Documentation]     Verify there is a loading indicator when buffering
    [Tags]              Regression   Smoke  Verified

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Mouse Hover To Movie
    MovieDetailPage.Forward Progress Bar
    MovieDetailPage.Verify Loading Indicator
    SignInPage.Logout Account

Delivery - Video Player: TC006 Fullscreen Mode
    [Documentation]     Verify the content can be played in fullscreen mode
    [Tags]              Regression   Smoke  Verified

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Play a content in fullscreen mode
    MovieDetailPage.Verify fullscreen icon
    SignInPage.Logout Account

Delivery - Video Player: TC007 Playback Control
    [Documentation]     Verify the content resumes after pausing
    [Tags]              Regression   Smoke  Verified

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Verify Pause And Resume Live Matches
    MovieDetailPage.Seek To Last 10s
    MovieDetailPage.Click Button Skip Auto Play
    MovieDetailPage.Verify Button Replay Auto Play
    SignInPage.Logout Account

Delivery - Video Player: TC008 Playback - progress bar
    [Documentation]     Verify the progress bar and elapsed time are updating when playing a content
    [Tags]              Regression   Smoke  Verified

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Verify VOD Is Playing
    MovieDetailPage.Verify The progress bar and elapsed time are updating when playing a content
    SignInPage.Logout Account

Delivery - Video Player: TC009 Playback - Forward/Backward
    [Documentation]     Verify the content resumes after fast forwarded or backward
    [Tags]              Regression   Smoke  Verified

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Mouse Hover To Movie
    MovieDetailPage.Click button Forward/backward movie
    MovieDetailPage.Verify The progress bar and elapsed time are updating when playing a content
    SignInPage.Logout Account

Delivery - Video Player: TC010 Auto Next Video - Same Categories
    [Documentation]     Verify the Next VOD is play in the same Category as a VOD before
    [Tags]              Regression   Smoke  Verified

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL4}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Accept Adult Content
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${EXPECTED_URL_MOVIE_DETAIL4}
    MovieDetailPage.Click Button Watch Now On Video Player
    MovieDetailPage.Verify Movie In Related Video Is Same With Movie In Autoplay
    MovieDetailPage.Verify Categories Movie
    SignInPage.Logout Account

Delivery - Video Player: TC011 Auto Next Video - Episodes
    [Documentation]     Verify the Next continued Episode VOD is play in the same Category as a VOD before
    [Tags]              Regression   Smoke  Verified

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL_SERIES}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${URL_MOVIE_DETAIL_SERIES}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Verify Movie In Related Video Is Same With Movie In Autoplay
    MovieDetailPage.Verify Next Episode Same Category As VOD
    SignInPage.Logout Account

Delivery - Video Player: TC012 Auto Next Video - Countdown
    [Documentation]     Verify AutoPlay Next Episode with countdown to 0
    [Tags]              Regression   Smoke  Verified

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Verify Movie In Related Video Is Same With Movie In Autoplay
    MovieDetailPage.Verify Countdown Auto Play
    SignInPage.Logout Account

Delivery - Video Player: TC013 Auto Next Video - Skip
    [Documentation]     Verify the pop up next video will disappear after click skip
    [Tags]              Regression   Smoke  Verified

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Seek To Last 10s
    MovieDetailPage.Click Button Skip Auto Play
    MovieDetailPage.Verify Button Replay Auto Play
    MovieDetailPage.Verify VOD Is Playing
    SignInPage.Logout Account

Delivery - Video Player: TC014 Auto Next Video button in Player
    [Documentation]     Verify the Next VOD is play in the same Category as a VOD before
    [Tags]              Regression   Smoke  Verified

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Click Button Next Video Beside Volume And Verify Movie In Related Video Is Same With Next Movie
    SignInPage.Logout Account

Delivery - Video Player: TC015 Auto Next Video - Rewind VOD
    [Documentation]     Verify the pop up next video will disappear after scrub progress bar
    [Tags]              Regression   Smoke  Verified

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Seek To Last 10s
    MovieDetailPage.Seek Progress Bar
    MovieDetailPage.Verify Video Player Continue Playing
    SignInPage.Logout Account

Delivery - Video Player: TC016 Auto Next Video - Age Desclimer
    [Documentation]     Verify the notification Age Disclaimer consists of disclaimer information, "Tutup" and "Setuju" buttons is shown
    [Tags]              Regression   Smoke  Verified

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL18+}
    MovieDetailPage.Login From Movie Detail If There Is Trailer
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Accept Adult Content
    MovieDetailPage.Play Content 'Watch Now'
    MovieDetailPage.Seek To Last 10s
    MovieDetailPage.Click Button Play Next Auto Play
    AgeRestrictionPage.Verify Age Blocker 18+ With Click Element
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Verify VOD Is Playing
    SignInPage.Logout Account

Delivery - Video Player: TC017 Quality Control
    [Documentation]     Verify the quality control is enabled
    [Tags]              Regression  Smoke   Verified

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Change Video Quality
    MovieDetailPage.Verify Popup Quality Disappear After Click Button Quality
    SignInPage.Logout Account

    #(Improvement)verifikasi jika ada 2 checklist yang muncul pada saat memilih kualitas video

Delivery - Video Player: TC018 Subtitle - not support
    [Documentation]     Verify VOD not supporting closed caption/subtitle
    [Tags]              Regression  Smoke   Verified

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL_SPORTS}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Verify Content not Supporting Closed Caption
    SignInPage.Logout Account

Delivery - Video Player: TC019 Subtitle - turn off
    [Documentation]     Verify VOD not supporting closed caption/subtitle
    [Tags]              Regression  Smoke   Verified

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Choose Closed Caption off
    MovieDetailPage.Verify Closed Caption is Not Shown
    SignInPage.Logout Account

Delivery - Video Player: TC020 Subtitle - Turn on
    [Documentation]     Verify the closed caption/Subtitle is shown based on the selected language
    [Tags]              Regression  Smoke   Verified

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL2}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${URL_MOVIE_DETAIL2}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Play a content which is supporting closed caption
#    MovieDetailPage.Verify Subtitle On Screen
    SignInPage.Logout Account

Delivery - Video Player: TC021 Volume Controls
    [Documentation]     Verify Change volume during video playback
    [Tags]              Regression  Smoke   Verified

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Verify Change volume during video playback
    MovieDetailPage.Seek bar Volume
    SignInPage.Logout Account

    #(Improvement) bisa seek volume sampai setengahnya

Delivery - Video Player: TC022 Image and audio synchronization
    [Documentation]     Verify the image and audio of the content synchronize
    [Tags]              Skip
    log                 Reason Can't Automated : Cannot Test Because In Robot Framework There Is No Keyword To Launch This Testcase

Delivery - Video Player: TC023 Video Metadata
    [Documentation]     Verify the video metadata is shown in player
    [Tags]              Regression   Smoke  Verified

    MovieDetailPage.Go To Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Play a content in fullscreen mode
    MovieDetailPage.Verify Video Metadata

Delivery - Video Player: TC024 Video playback for NOT sign in user
    [Documentation]     Verify A message prompt to sign in is shown
    [Tags]              Regression   Smoke  Verified

    MovieDetailPage.Go To Movie Detail                                              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNT_SUPERMOLA1_EMAIL}     ${ACCOUNT_SUPERMOLA1_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Verify Play Movie With User Without Package
    SignInPage.Logout Account
    MovieDetailPage.Go To Movie Detail                                              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Verify Default Control

Delivery - Video Player: TC025 Fill / Fit on Screen
    [Documentation]     Verify the video image can be played in fill on screen or fit on screen.
    [Tags]              Regression  Smoke   Verified

    MovieDetailPage.Go To Movie Detail                                              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}           ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Play a content in fullscreen mode
    MovieDetailPage.Verify Button Fill On Screen And Fit On Screen Works Fine