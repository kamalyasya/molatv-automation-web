*** Settings ***
Library             SeleniumLibrary
Resource            ../../Frameworks/Routers.robot

*** Variables ***
${text_movie_detail_title_vod}          css=h1
${button_movies_categories}             css=a:nth-of-type(1) > ._w0BR > ._1Ch51.css-tqv6h2.imageWrapper.loaded
${login_blocker_garselep1}              css=._33Xwm
${movie_detail_login_blocker}           ${login_blocker_garselep1}
${text_login_login_page}                css=._2WE07 > ._3CiJF
${frame_login_movie_detail}             css=._3Z4PZ
${field_login_email}                    id=email
${field_login_password}                 id=password
${movie_detail_play_button}             css=.css-zy8jsc
${movie_detail_image_logo}              css=img[alt='Bug-logo Player']
${button_forward_movie_detail}          css=.css-1nkv7aa.forwardIcon
${button_backward_movie_detail}         css=.backwardIcon.css-1nkv7aa
${movie_detail_duration}                css=.duration
${movie_progress_bar}                   css=div#video-child  .progress > .progress_wrapper
${movie_pause_button}                   css=.css-1nkv7aa.pauseIcon

${movie_mouse_over}                     css=div#video-child > .css-q60n54
${movie_quality_control}                css=div#vpcc-quality
${movie_change_quality}                 css=.quality_popup
${movie_quality_list_576}               css=div#vpcc-quality > div > div:nth-of-type(3)
${movie_quality_list_270}               css=div#vpcc-quality > div > div:nth-of-type(5)
${movie_quality_list_360}               css=div#vpcc-quality > div > div:nth-of-type(4)
${movie_quality_list_720}               css=div#vpcc-quality > div > div:nth-of-type(2)
${movie_quality_list_auto}              css=div > div:nth-of-type(6)
${movie_quality_selected}               css=.css-2v9r2y.tickIcon
${movie_quality_title}                  css=.quality_title
${autoplay_next_movie}                  css=.content
${autoplay_button_Play_next}            css=.play
${autoplay_button_skip}                 css=.close

${close_caption}                        css=div#vpcc-subtitle
${subtitle_title}                       css=.subtitle_title
${subtitle_list_Indonesia}              css=.subtitle_popup div:nth-of-type(2)
${subtitle_list_off}                    xpath=//div[@id='vpcc-subtitle']//div[.='Off']

${movie2_play_button}                   css=.css-xvdnxx.playIcon
${movie_volume_bar}                     css=input#vpcc-volume
${volume_button}                        css=#volume-button
${button_fullscreen}                    css=#vpcc-fullscreen
${button_play_player_control}           css=.css-1nkv7aa.playIcon

${expected_buffering}                   css=code
${expected_close_caption_icon}          css=div#vpcc-subtitle
${expected_subtitle_on_screen}          css=[class='hide css-1okjqaq']
${expected_volume_bar}                  xpath=//*[@id="vpcc-volume" and @value="0.49"]
${expected_fullscreen_icon}             css=#vpcc-fullscreen .withTooltip
${expected_pleyer_control_hide}         css=div#video-child > .css-zv9wgj.hide
${expected_player_control_unhide}       css=div#video-child > .css-zv9wgj
${expected_categories_movie_detail}     css=.sub-header > span:nth-of-type(2)

${expected_title_movie_detail}          css=h1
${expected_movie_detail_play_button}    css=.css-zy8jsc
${expected_movie_detail_synopsis}       css=.css-oa5ddb > div:nth-of-type(1)
${expected_movie_detail_cast}           css=.css-oa5ddb > div:nth-of-type(2)
${expected_movie_detail_related_video}  css=#detailBottom

${expected_movie_detail_countdown}      css=._3Qguo
${expected_volume}                      css=.volume

${popup_lanjutkan_nonton_movie_detail}  css=.gJE3n p
${button_mulai_popup_movie_detail}      css=._3QaU2
${button_lanjutkan_popup_movie_detail}  css=._1H-wq
${frame_movie_detail_device_limit}      css=.styles_modal__gNwvD
${frame_movie_detail_adult_content_18}  css=.styles_modal__gNwvD
${button_movie_detail_accept_adult_content}    css=._3UpwF

${button_seek_bar}                      xpath=/html//input[@id='vpcc-seek']
${button_seek_volume}                   css=input#vpcc-volume
${button_next_video_beside_volume}      css=.css-1nkv7aa.upcommingIcon

${expected_title_same_episode}          css=.upc-video-title
${expected_countdown_autoplay}          link=Play next movie in 3
${expected_autoplay_movie}              css=.container

${button_close_login_movie_detail}      css=._3Pjgd

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

Go To Movie Detail
    [Arguments]  ${URL_MOVIE_DETAIL}
    Go To                               ${URL_MOVIE_DETAIL}

Login from movie detail
    Wait Until Element Is Visible       ${movie_detail_login_blocker}
    Click Element                       ${movie_detail_login_blocker}

Verify Direct To Login Page
    Wait Until Element Is Visible       ${frame_login_movie_detail}
    Element Should Be Visible           ${frame_login_movie_detail}

Verify Is Redirected Back To The Same Movie Detail
    [Arguments]  ${URL}
    Wait Until Location Is              ${URL}
    Location Should Be                  ${URL}
    Wait Until Element Is Visible       ${expected_title_movie_detail}
    Element Should Be Visible           ${expected_title_movie_detail}
    Element Should Be Visible           ${expected_movie_detail_synopsis}
    Element Should Be Visible           ${expected_movie_detail_cast}
    Scroll Element Into View            ${expected_movie_detail_related_video}
    Element Should Be Visible           ${expected_movie_detail_related_video}
    Scroll Element Into View            ${expected_title_movie_detail}

Play Content From Movie Detail
    Wait Until Element Is Visible       ${expected_title_movie_detail}
    Wait Until Element Is Visible       ${movie_detail_play_button}
    Click Element                       ${movie_detail_play_button}

Play Content 'Mulai Dari Awal'
    Wait Until Element Is Visible       ${popup_lanjutkan_nonton_movie_detail}
    Click Element                       ${button_mulai_popup_movie_detail}
    Sleep                               3

Play Content Video Or Play Video From Begining
    ${CHECK_ADULT_BLOCKER}      Run Keyword And Return Status   Wait Until Element Is Visible       ${frame_movie_detail_adult_content_18}    5
    Run Keyword If      '${CHECK_ADULT_BLOCKER}'=='True'        Accept Adult Content

    ${play}             Run Keyword And Return Status           Wait Until Element Is Visible       ${button_mulai_popup_movie_detail}
    Run Keyword If      '${play}' == 'True'         Play Content 'Mulai Dari Awal'
    ...     ELSE                                    Play Content From Movie Detail


    ${CHECK_LIMIT}      Run Keyword And Return Status           Wait Until Element Is Visible       ${frame_movie_detail_device_limit}       10
    Run Keyword If      '${CHECK_LIMIT}'=='True'                Play Content Again

Play Content Again
    Sleep    10
    Reload Page
    Play Content Video Or Play Video From Begining

Accept Adult Content
    Wait Until Element Is Visible       ${button_movie_detail_accept_adult_content}
    Click Element                       ${button_movie_detail_accept_adult_content}

Forward Progress Bar
    Click Element                       ${button_forward_movie_detail}
    Click Element                       ${button_forward_movie_detail}
    Click Element                       ${button_forward_movie_detail}

Verify Loading Indicator
    Mouse Over                          ${movie_mouse_over}
    Element Should Be Visible           ${expected_buffering}
    sleep                               3

Mouse Hover To Movie
    Mouse Over                          ${movie_mouse_over}

Verify The progress bar and elapsed time are updating when playing a content
    Mouse Over                          ${movie_mouse_over}
    Page Should Contain Element         ${movie_pause_button}
    Page Should Contain Element         ${movie_detail_duration}
    Page Should Contain Element         ${movie_progress_bar}

Auto Play Next Episode
    Seek To Last 10s
    Wait Until Element Is Visible       ${autoplay_next_movie}              120

Verify Auto Play Next Episode
    Page Should Contain Element         ${autoplay_next_movie}
    Page Should Contain Element         ${autoplay_button_Play_next}
    Capture Element Screenshot          ${autoplay_button_Play_next}
    Page Should Contain Element         ${autoplay_button_skip}
    Capture Element Screenshot          ${autoplay_button_skip}

Verify Auto Play Not Displayed
    Seek To Last 10s
    Page Should Not Contain Element         ${autoplay_next_movie}
    Page Should Not Contain Element         ${autoplay_button_Play_next}
    Page Should Not Contain Element         ${autoplay_button_skip}

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

Verify Change Quality
    [Arguments]  ${EXPECTED_CHANGE_QUALITY_576}     ${EXPECTED_CHANGE_QUALITY_270}      ${EXPECTED_CHANGE_QUALITY_360}      ${EXPECTED_CHANGE_QUALITY_720}
    Page Should Contain Element         ${movie_change_quality}            ${EXPECTED_CHANGE_QUALITY_576}
    Page Should Contain Element         ${movie_change_quality}            ${EXPECTED_CHANGE_QUALITY_270}
    Page Should Contain Element         ${movie_change_quality}            ${EXPECTED_CHANGE_QUALITY_360}
    Page Should Contain Element         ${movie_change_quality}            ${EXPECTED_CHANGE_QUALITY_720}
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

Verify Subtitle On Screen
    Wait Until Element Is Visible       ${expected_subtitle_on_screen}
    Element Should Be Visible           ${expected_subtitle_on_screen}
    Capture Element Screenshot          ${expected_subtitle_on_screen}

Choose Closed Caption off
    Mouse Over                          ${movie_mouse_over}
    Mouse Over                          ${movie_mouse_over}
    Click Element                       ${close_caption}
    Wait Until Element Is Visible       ${subtitle_list_off}
    Click Element                       ${subtitle_list_off}
    Sleep                               5

Verify Closed Caption is Not Shown
    Page Should Not Contain Element     ${expected_subtitle_on_screen}

Verify Change volume during video playback
    Mouse Over                          ${movie_mouse_over}
    Sleep                               2
    Element Should Be Visible           ${expected_volume}
    Capture Element Screenshot          ${expected_volume}
    Click Element                       ${volume_button}
    Sleep                               2
    Element Should Be Visible           ${volume_button}
    Capture Element Screenshot          ${expected_volume}

Play a content in fullscreen mode
    Mouse Over                          ${movie_mouse_over}
    Mouse Over                          ${movie_mouse_over}
    Click Element                       ${button_fullscreen}
    Mouse Over                          ${button_fullscreen}
    Sleep                               3

Verify fullscreen icon
    Page Should Contain Element         ${expected_fullscreen_icon}
    Capture Element Screenshot          ${expected_fullscreen_icon}

Verify Video Metadata
    Sleep                               10
    Element Should Not Be Visible       ${expected_player_control_unhide}
    Mouse Over                          ${movie_mouse_over}
    Element Should Be Visible           ${expected_player_control_unhide}

Verify Movie Details Page Is Shown
    [Arguments]     ${EXPECTED_TITLE_CONTENT}
    Wait Until Element Is Visible       ${text_movie_detail_title_vod}
    Element Should Contain              ${text_movie_detail_title_vod}               ${EXPECTED_TITLE_CONTENT}

Verify Pause And Resume Live Matches
    Click Element                       ${movie_pause_button}
    Wait Until Element Is Visible       ${button_play_player_control}
    Page Should Contain Element         ${button_play_player_control}
    Sleep                               2
    Click Element                       ${button_play_player_control}
    Wait Until Element Is Visible       ${movie_pause_button}
    Page Should Contain Element         ${movie_pause_button}

Verify Upcoming Live Matches
    Wait Until Element Is Visible       ${expected_movie_detail_countdown}
    Page Should Contain Element         ${expected_movie_detail_countdown}
    Page Should Contain Element         ${expected_title_movie_detail}
    Element Should Not Be Visible       ${movie2_play_button}
    Page Should Contain Element         ${expected_movie_detail_synopsis}
    Page Should Contain Element         ${expected_movie_detail_cast}
    Scroll Element Into View            ${expected_movie_detail_related_video}
    Page Should Contain Element         ${expected_movie_detail_related_video}

Go To Another Live Match
    [Arguments]  ${URL_MOVIE_DETAIL}
    Go To                               ${URL_MOVIE_DETAIL}

Verify Default Control
    Mouse Over                          ${movie_mouse_over}
    Wait Until Element Is Visible       ${movie_pause_button}
    Element Should Be Visible           ${movie_pause_button}
    Click Element                       ${movie_pause_button}
    Mouse Over                          ${movie_mouse_over}
    Wait Until Element Is Visible       ${button_play_player_control}
    Element Should Be Visible           ${button_play_player_control}
    Mouse Over                          ${movie_mouse_over}
    Element Should Be Visible           ${expected_volume}
    Element Should Be Visible           ${movie_detail_duration}
    Element Should Be Visible           ${button_fullscreen}
    Element Should Be Visible           ${movie_quality_control}

Verify Video Quality 720
    Mouse Over                          ${movie_mouse_over}
    Wait Until Element Is Visible       ${movie_quality_control}
    Click Element                       ${movie_quality_control}
    Wait Until Element Is Visible       ${movie_change_quality}
    Element Should Contain              ${movie_quality_selected}           720
    Sleep                               3

Click button Forward/backward movie
    Click Element                       ${button_forward_movie_detail}
    Click Element                       ${button_forward_movie_detail}
    Sleep                               3
    Mouse Over                          ${movie_mouse_over}
    Click Element                       ${button_backward_movie_detail}
    Click Element                       ${button_backward_movie_detail}

Seek To Last 10s
    # Mouse Over To Movie
    Mouse Over                          ${movie_mouse_over}
    Sleep                               2

    # Get VIDEOID
    ${VIDEOID}                      Get Location
    ${VIDEOID}                      Remove String Using Regexp      ${VIDEOID}           ^.*?(?=vd)

    # Get VOD length
    ${COMMAND_GET_DURATION}         catenate                        return window.player${VIDEOID}.getMediaElement().seekable.end(0)
    ${DURATION}                     Execute Javascript              ${COMMAND_GET_DURATION}

    # Calculate last 10s
    ${DESIRED_POSITION}             Evaluate                        ${DURATION}-10
    ${COMMAND_SEEK_TO}              catenate                        return window.player${VIDEOID}.getMediaElement().currentTime=${DESIRED_POSITION}

    # Seek to position
    ${CURRENT_POSITION}             Execute Javascript              ${COMMAND_SEEK_TO}

Click Button Play Next Auto Play
    Sleep                               2
    Click Element                       ${autoplay_button_Play_next}

Click Button Skip Auto Play
    Wait Until Element Is Visible       ${autoplay_button_skip}
    Sleep                               5
    Click Element                       ${autoplay_button_skip}

Verify Categories Movie
    Wait Until Element Is Visible       ${expected_categories_movie_detail}
    Element Text Should Be              ${expected_categories_movie_detail}     Action

Seek bar Volume
    # Mouse Over To Movie
    Mouse Over                          ${movie_mouse_over}
    Sleep                               2

    # Get Element Size Seek Volume Down
    ${width}	${height} =   Get Element Size            ${button_seek_volume}
    ${result} =   Evaluate                    (${width}/2) - 15
    Drag And Drop By Offset     ${button_seek_volume}       ${result}         0

    # Capture To Verify
    Mouse Over                          ${movie_mouse_over}
    Capture Element Screenshot          ${expected_volume}
    sleep                               2

    # Get Element Size Seek Volume Up
    ${width}	${height} =   Get Element Size            ${button_seek_volume}
    ${result} =   Evaluate                    (${width}/2)
    Drag And Drop By Offset     ${button_seek_volume}       ${result}         0

    # Capture To Verify
    Mouse Over                          ${movie_mouse_over}
    Capture Element Screenshot          ${expected_volume}

Verify Next Episode Same Category As VOD
    [Arguments]     ${EXPECTED_TITLE_SAME_EPISODES}
    Wait Until Element Is Visible       ${expected_title_same_episode}
    Element Text Should Be              ${expected_title_same_episode}      ${EXPECTED_TITLE_SAME_EPISODES}

Verify Countdown Auto Play
    [Arguments]     ${EXPECTED_LOCATION_NEXT_EPISODE}
    Wait Until Element Is Visible       ${expected_countdown_autoplay}
    Element Should Be Visible           ${expected_countdown_autoplay}
    Wait Until Location Is              ${EXPECTED_LOCATION_NEXT_EPISODE}
    Wait Until Element Is Visible       ${expected_title_movie_detail}
    Element Should Be Visible           ${expected_title_movie_detail}

Verify Button Replay Auto Play
    Sleep                               6
    Mouse Over                          ${movie_mouse_over}
    Wait Until Element Is Visible       ${button_play_player_control}
    Element Should Be Visible           ${button_play_player_control}

Click Button Play Default Control
     Wait Until Element Is Visible       ${button_play_player_control}
     Click Element                       ${button_play_player_control}

Verify No Autoplay Vanished
    Element Should Not Be Visible        ${expected_autoplay_movie}

Click Button Next Video Beside Volume
    Mouse Over                           ${movie_mouse_over}
    Wait Until Element Is Visible        ${button_next_video_beside_volume}
    Click Element                        ${button_next_video_beside_volume}

Verify Message Prompt To Sign In
    [Arguments]     ${URL}
    Wait Until Element Is Visible       ${movie_detail_login_blocker}
    Element Should Be Visible           ${movie_detail_login_blocker}
    Click Element                       ${movie_detail_login_blocker}
    Click Element                       ${button_close_login_movie_detail}
    Verify Is Redirected Back To The Same Movie Detail      ${URL}