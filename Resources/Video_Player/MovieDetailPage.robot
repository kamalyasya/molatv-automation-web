*** Settings ***
Library             SeleniumLibrary
Resource            ../../Frameworks/Routers.robot

*** Variables ***
${menu_movies}                          css=a[title='Movies'] > div[title='Movies']
${button_movies_categories}             css=a:nth-of-type(1) > ._w0BR > ._1Ch51.css-tqv6h2.imageWrapper.loaded
${button_garsel}                        css=.css-1rguokb > div:nth-of-type(2) > div:nth-of-type(1) .css-11xe1ut.css-dzdbuq.slider > .slider-frame > .slider-list > .slide-current.slide-visible.slider-slide .css-tqv6h2.imageWrapper.loaded > .imageBorder
${title_garselep1}                      css=div:nth-of-type(1) > .css-gu2yrd > .title
${button_select_movies_garselep1}       css=div:nth-of-type(1) > .css-gu2yrd > .css-rh1xgi > .css-tqv6h2.imageWrapper.loaded > .imageBorder
${login_blocker_garselep1}              link=login
${movie_detail_login_blocker}           ${login_blocker_garselep1}
${text_login_login_page}                css=._2WE07 > ._3CiJF
${field_login_email}                    id=email
${field_login_password}                 id=password
${title_movie_detail}                   css=h1
${movie_detail_play_button}             css=.css-zy8jsc
${movie_detail_image_logo}              css=img[alt='Bug-logo Player']
${forward_movie_detail}                 css=.css-2v9r2y.forwardIcon
${movie_detail_duration}                css=.duration
${movie_progress_bar}                   css=div#video-child  .progress > .progress_wrapper
${movie_pause_button}                   css=.css-2v9r2y.pauseIcon
${movie_mouse_over}                     css=.css-q60n54
${movie_quality_control}                css=div#vpcc-quality
${movie_change_quality}                 css=.quality_popup
${movie_quality_list_576}               css=div#vpcc-quality > div > div:nth-of-type(3)
${movie_quality_list_270}               css=div#vpcc-quality > div > div:nth-of-type(5)
${movie_quality_list_360}               css=div#vpcc-quality > div > div:nth-of-type(4)
${movie_quality_list_720}               css=div#vpcc-quality > div > div:nth-of-type(2)
${movie_quality_list_auto}              css=div > div:nth-of-type(6)
${movie_quality_title}                  css=.quality_title
${autoplay_next_movie}                  css=.content
${autoplay_button_Play_next}            css=.play
${autoplay_button_skip}                 css=.close
${close_caption}                        css=div#vpcc-subtitle
${subtitle_title}                       css=.subtitle_title
${subtitle_list_Indonesia}              css=.subtitle_popup div:nth-of-type(2)
${subtitle_list_off}                    css=.subtitle_popup .subtitle_list:nth-of-type(3)
${movie2_play_button}                   css=.css-xvdnxx
${movie_volume_bar}                     css=input#vpcc-volume
${volume_button}                        css=#volume-button
${button_fullscreen}                    css=#vpcc-fullscreen
${expected_buffering}                   css=code
${expected_close_caption_icon}          css=div#vpcc-subtitle
${expected_subtitle_on_screen}          css=.css-du9w46
${expected_volume}                      xpath=//*[@id="vpcc-volume" and @value="0.49"]
${expected_fullscreen_icon}             css=#vpcc-fullscreen .withTooltip
${expected_pleyer_control_hide}         css=[class='css-1xc2rfo hide']
${expected_player_control_unhide}       css=[class='css-1xc2rfo ']

*** Keywords ***
Select an asset for video playback (Live/Reply/Movie)
    [Arguments]  ${URL_MOVIE_DETAIL}
    Go To                               ${URL_MOVIE_DETAIL}
    Wait Until Element Is Visible       ${movie_detail_login_blocker}

Verify login blocker if not sign in before
    Sleep                               3
    Page Should Contain Element         ${login_blocker_garselep1}
    Capture Element Screenshot          ${title_movie_detail}
    Capture Element Screenshot          ${login_blocker_garselep1}

Login from movie detail
    [Arguments]  ${URL_MOVIE_DETAIL}
    Go To                               ${URL_MOVIE_DETAIL}
    Wait Until Element Is Visible       ${movie_detail_login_blocker}
    Click Element                       ${movie_detail_login_blocker}

Verify Direct To Login Page
    Wait Until Element Is Visible       ${field_login_email}
    Element Should Be Visible           ${text_login_login_page}

Verify Is Redirected Back To The Same Movie Detail
    [Arguments]  ${URL}
    Sleep                               5
    Location Should Be                  ${URL}

Play Content From Movie Detail
    Wait Until Element Is Visible       ${title_movie_detail}
    sleep                               2
    Click Element                       ${movie_detail_play_button}
    sleep                               5

Forward Progress Bar
    Click Element                       ${forward_movie_detail}
    Click Element                       ${forward_movie_detail}
    Click Element                       ${forward_movie_detail}
    Click Element                       ${forward_movie_detail}
    Click Element                       ${forward_movie_detail}

Verify Loading Indicator
    Mouse Over                          ${movie_mouse_over}
    Wait Until Element Is Visible       ${expected_buffering}
    Page Should Contain Element         ${expected_buffering}
    Capture Element Screenshot          ${expected_buffering}
    sleep                               3
    Capture Element Screenshot          ${movie_detail_image_logo}

Mouse Hover To Movie
    Mouse Over                          ${movie_mouse_over}

Verify The progress bar and elapsed time are updating when playing a content
    Page Should Contain Element         ${movie_pause_button}
    Page Should Contain Element         ${movie_detail_duration}
    Page Should Contain Element         ${movie_progress_bar}

Auto Play Next Episode
    Sleep                               110
    Wait Until Element Is Visible       ${autoplay_next_movie}

Verify Auto Play Next Episode
    Page Should Contain Element         ${autoplay_next_movie}
    Page Should Contain Element         ${autoplay_button_Play_next}
    Capture Element Screenshot          ${autoplay_button_Play_next}
    Page Should Contain Element         ${autoplay_button_skip}
    Capture Element Screenshot          ${autoplay_button_skip}

Change Video Quality
    Mouse Over                          ${movie_mouse_over}
    Wait Until Element Is Visible       ${movie_quality_control}
    Click Element                       ${movie_quality_control}
    Wait Until Element Is Visible       ${movie_change_quality}
    Click Element                       ${movie_quality_list_576}
    sleep                               5
    Mouse Over                          ${movie_mouse_over}
    Wait Until Element Is Visible       ${movie_change_quality}
    Click Element                       ${movie_quality_list_270}
    sleep                               5
    Mouse Over                          ${movie_mouse_over}
    Wait Until Element Is Visible       ${movie_change_quality}
    Click Element                       ${movie_quality_list_360}
    sleep                               5
    Mouse Over                          ${movie_mouse_over}
    Wait Until Element Is Visible       ${movie_change_quality}
    Click Element                       ${movie_quality_list_720}
    sleep                               5
    Mouse Over                          ${movie_mouse_over}
    Wait Until Element Is Visible       ${movie_change_quality}
    Click Element                       ${movie_quality_list_auto}
    sleep                               5

Verify Change Quality
    [Arguments]  ${EXPECTED_CHANGE_QUALITY_576}     ${EXPECTED_CHANGE_QUALITY_270}      ${EXPECTED_CHANGE_QUALITY_360}      ${EXPECTED_CHANGE_QUALITY_720}      ${EXPECTED_CHANGE_QUALITY_AUTO}
    Page Should Contain Element         ${movie_change_quality}            ${EXPECTED_CHANGE_QUALITY_576}
    Page Should Contain Element         ${movie_change_quality}            ${EXPECTED_CHANGE_QUALITY_270}
    Page Should Contain Element         ${movie_change_quality}            ${EXPECTED_CHANGE_QUALITY_360}
    Page Should Contain Element         ${movie_change_quality}            ${EXPECTED_CHANGE_QUALITY_720}
    Page Should Contain Element         ${movie_change_quality}            ${EXPECTED_CHANGE_QUALITY_AUTO}
    Page Should Contain Element         ${movie_quality_title}

Verify Content not Supporting Closed Caption
    Mouse Over                          ${movie_mouse_over}
    Page Should Not Contain Element     ${close_caption}                    ${expected_close_caption_icon}

Play a content which is not supporting closed caption
    [Arguments]  ${URL_MOVIE_DETAIL2}
    Go To                               ${URL_MOVIE_DETAIL2}
    Wait Until Element Is Visible       ${movie2_play_button}
    Click Element                       ${movie2_play_button}
    Wait Until Element Is Visible       ${close_caption}

Verify Close Caption Icon
    Page Should Contain Element         ${expected_close_caption_icon}

Play a content which is supporting closed caption
    Click Element                       ${close_caption}
    Mouse Over                          ${movie_mouse_over}
    Click Element                       ${subtitle_list_Indonesia}

Verify Subtitle
    Wait Until Element Is Visible       ${expected_subtitle_on_screen}
    Page Should Contain Element         ${expected_subtitle_on_screen}
    Capture Element Screenshot          ${expected_subtitle_on_screen}

No closed caption is shown when the 'Closed Caption' is off
    Mouse Over                          ${movie_mouse_over}
    Click Element                       ${subtitle_list_off}
    Sleep                               5

Verify Closed Caption is Not Shown
    Page Should Not Contain Element     ${expected_subtitle_on_screen}

Change volume during video playback
    Mouse Over                          ${movie_mouse_over}
    Click Element                       ${movie_volume_bar}
    Sleep                               2
    Element Should Be Visible           ${expected_volume}
    Click Element                       ${volume_button}
    Sleep                               2
    Element Should Be Visible           ${volume_button}

Play a content in fullscreen mode
    Mouse Over                          ${movie_mouse_over}
    Click Element                       ${button_fullscreen}
    Mouse Over                          ${button_fullscreen}
    Sleep                               3

Verify fullscreen icon
    Page Should Contain Element         ${expected_fullscreen_icon}
    Capture Element Screenshot          ${expected_fullscreen_icon}

Verify Video Metadata
    Sleep                               10
    Page Should Contain Element         ${expected_pleyer_control_hide}
    Mouse Over                          ${movie_mouse_over}
    Page Should Contain Element         ${expected_player_control_unhide}