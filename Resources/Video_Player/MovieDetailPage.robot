*** Settings ***
Resource            ../../Frameworks/Routers.robot

*** Variables ***
# Right Side
${text_movie_detail_title}                      css=h1
${button_movie_detail_favorit}                  css=.favorite-wrapper
${button_movie_detail_favorit_non_active}       css=.md-favorite-icon
${button_movie_detail_favorit_active}           css=.md-favorite-icon-active
${text_duration_movie_detail_page}              css=.sub-header > span:nth-of-type(1)
${text_categories_movie_detail_page}            css=.sub-header > span:nth-of-type(2)

${button_videos_player_login_to_watch_after_trailer}          css=._33Xwm
${text_login_login_page}                        css=._2WE07 > ._3CiJF
${frame_login_movie_detail}                     css=._1r9_k
${field_login_email}                            id=email
${field_login_password}                         id=password
${movie_detail_play_button}                     css=.playIcon
${button_movie_detail_play_alternative}         xpath=//div[contains(@class, 'playIcon')] | //button[text()='Play from beginning'] | //span[text()='Watch Now']
${mola_movie_detail_play_button}                css=._2zwq4
${movie_detail_image_logo}                      css=img[alt='Bug-logo Player']
${button_forward_movie_detail}                  css=.forwardIcon
${button_backward_movie_detail}                 css=.backwardIcon
${movie_detail_duration}                        css=.duration
${movie_progress_bar}                           css=.progressbar_progress
${movie_pause_button}                           css=.pauseIcon
${button_login_to_watch_movie_detail_page}      xpath=//button[contains(text(),'Login to Watch')] | //span[contains(text(),'Login to Watch')]
${button_watch_now_movie_detail_page}           css=._3J12S span
${button_sound_on_trailer_movie_detail_page}    css=._20cSF
${text_play_trailer_movie_detail_page}          css=._2Wg44
${frame_play_trailer_movie_detail_page}         css=._2mt2k .css-1kiiaat
${card_trailer_movie_detail_page}               css=.card div:nth-of-type(1)
${button_play_card_trailer_movie_detail_page}   css=.overlay > .css-1k9fjl5.play

${movie_mouse_over}                             css=#video-player-root
${movie_quality_control}                        css=div#vpcc-quality
${movie_quality_popup}                          css=.quality_popup
${movie_quality_list_270}                       xpath=//div[@class='quality_list ' and .='270']
${movie_quality_list_360}                       xpath=//div[@class='quality_list ' and .='360']
${movie_quality_list_576}                       xpath=//div[@class='quality_list ' and .='576']
${movie_quality_list_720}                       xpath=//div[@class='quality_list ' and .='720']
${movie_quality_list_auto}                      xpath=//div[@class='quality_list ' and .='Auto']
${movie_quality_selected}                       css=.quality_list.active
${movie_quality_title}                          css=.quality_title
${movie_quality_checklist_active}               css=.quality_popup .css-gysqbn.tickIcon

# Autoplay
${text_autoplay_next_movie_title}               css=.upc-video-title
${autoplay_next_movie}                          css=.content
${autoplay_button_Play_next}                    css=.play
${text_autoplay_counter_next}                   css=.container span
${autoplay_button_skip}                         css=.close
${frame_autoplay}                               css=.container

${close_caption}                                css=#vpcc-subtitle
${subtitle_title}                               css=.subtitle_title
${subtitle_list_Indonesia}                      css=div#vpcc-subtitle  .css-6p59hx > div:nth-of-type(1)
${subtitle_list_english}                        css=div#vpcc-subtitle  .css-6p59hx > div:nth-of-type(2)
${subtitle_list_off}                            xpath=//div[@id='vpcc-subtitle']//div[.='Off']

${movie2_play_button}                           css=.css-18dkaks.playIcon
${movie_volume_bar}                             css=input#vpcc-volume
${volume_button}                                css=div#volume-button
${button_fullscreen}                            css=#vpcc-fullscreen
${button_exit_fullscreen_movie_detail_page}     css=#vpcc-fullscreen
${button_fill_on_screen_movie_detail_page}      css=#vpcc-zoomtofill
${button_play_player_control}                   css=.playIcon

# Video Player Fullscreen Mode
${button_video_player_exit_fullscreen}          css=.exitFullscreenIcon
${text_video_player_exit_fullscreen_tooltip}    css=#vpcc-fullscreen .withTooltip

${expected_buffering}                           css=code
${expected_close_caption_icon}                  css=div#vpcc-subtitle
${expected_subtitle_on_screen}                  css=div#video-child > .css-1kv67r7.hide
${expected_volume_bar}                          xpath=//*[@id="vpcc-volume" and @value="0.49"]
${expected_fullscreen_icon}                     css=#vpcc-fullscreen .withTooltip
${expected_pleyer_control_hide}                 css=.css-19b47nz.hide
${expected_player_control_unhide}               css=.css-19b47nz
${expected_categories_movie_detail}             css=.sub-header span:nth-of-type(2)

${expected_title_movie_detail}                  css=h1
${expected_movie_detail_play_button}            css=.css-zy8jsc
${expected_movie_detail_synopsis}               css=.css-oa5ddb > div:nth-of-type(1)
${expected_movie_detail_cast}                   css=.css-oa5ddb > div:nth-of-type(2)
${expected_movie_detail_related_video}          css=#detailBottom
${expected_movie_detail_trailer}                css=.css-oa5ddb > div:nth-of-type(2)
${expected_rating_movie_detail}                 css=.border

${expected_movie_detail_countdown}              css=._3Qguo
${expected_volume}                              css=.volume

${popup_lanjutkan_nonton_movie_detail}          css=.gJE3n p
${button_mulai_popup_movie_detail}              css=._3QaU2
${button_lanjutkan_popup_movie_detail}          css=._1H-wq
${frame_movie_detail_device_limit}              css=.styles_modal__gNwvD
${frame_movie_detail_adult_content_18}          css=.styles_modal__gNwvD
${button_movie_detail_accept_adult_content}     css=._3UpwF

${button_seek_bar}                              xpath=/html//input[@id='vpcc-seek']
${button_seek_volume}                           css=input#vpcc-volume
${button_next_video_beside_volume}              css=.upcommingIcon

${expected_title_same_episode}                  css=.upc-video-title
${expected_countdown_autoplay}                  css=.css-oht1a4 span
${expected_autoplay_movie}                      css=.container

${button_close_login_movie_detail}              css=._3Pjgd

# Package Blocker
${text_movie_detail_blocker_package}            css=._2Wg44 p
${button_movie_detail_blocker_beli_akses}       css=._33Xwm
${button_movie_detail_blocker_tukar_voucher}    css=.rgSjS

# Notification
${text_movie_detail_favorit_message}            css=.snackbar-content-left
${button_movie_detail_lihat_daftar_favorit}     css=.snackbar-content-right

# Banned User Player
${links_movie_detail_terms_conditions}          css=.css-usqan1 a

#Related Video
${title_related_video_movie_detail_page}        css=.slide-current.slide-visible.slider-slide .title

#Age Blocker
${frame_ageblocker}                             css=.styles_modal__gNwvD
${contents_ageblocker}                          css=._27W52
${button_agree_ageblocker}                      css=._3UpwF

#popup purchase
${popup_purchase_package}                       css=._60ugo
${text_purchase_package}                        css=._2Wg44
${button_subscribe_now}                         css=._33Xwm
${button_redeem_voucher}                        css=.rgSjS
${button_login_to_watch}                        css=._33Xwm

*** Keywords ***
Select an asset for video playback (Live/Reply/Movie)
    [Arguments]  ${URL_MOVIE_DETAIL}
    Go To                               ${URL_MOVIE_DETAIL}
    Wait Until Element Is Visible       ${movie_detail_login_blocker}

Verify login blocker if not sign in before
    Sleep                               3
    Page Should Contain Element         ${button_login_to_watch_movie_detail_page}
    Capture Element Screenshot          ${text_movie_detail_title}
    Capture Element Screenshot          ${button_login_to_watch_movie_detail_page}

Go To Movie Detail
    [Arguments]  ${URL_MOVIE_DETAIL}
    Sleep    1
    Go To                               ${URL_MOVIE_DETAIL}

Login from movie detail
    Wait Until Element Is Visible       ${movie_mouse_over}
    Mouse Over                          ${movie_mouse_over}
    Wait Until Element Is Visible       ${button_login_to_watch_movie_detail_page}
    Click Element                       ${button_login_to_watch_movie_detail_page}
    #    ${CHECK_BUTTON_LOGIN_TRAILER}                   Run Keyword And Return Status               Wait Until Element Is Visible       ${button_login_to_watch_movie_detail_page}           10
    #    ${CHECK_BUTTON_LOGIN_AFTER_TRAILER}             Run Keyword And Return Status               Wait Until Element Is Visible       ${button_videos_player_login_to_watch_after_trailer}           5
    #    Run Keyword If                      '${CHECK_BUTTON_LOGIN_TRAILER}'=='True'         Click Element                       ${button_login_to_watch_movie_detail_page}
    #    run keyword if                      '${CHECK_BUTTON_LOGIN_AFTER_TRAILER}'=='True'    Click Element                      ${button_videos_player_login_to_watch_after_trailer}

Verify Direct To Login Page
    Wait Until Element Is Visible       ${field_login_email}
    Element Should Be Visible           ${field_login_email}
    Wait Until Element Is Visible       ${field_login_password}
    Element Should Be Visible           ${field_login_password}

Verify Is Redirected Back To The Same Movie Detail
    [Arguments]  ${URL}
    ${CHECK_TEXT_CATEGORY}               Run Keyword And Return Status       Wait Until Element Is Visible       ${text_categories_movie_detail_page}
    ${CHECK_EXPECTED_RATING}               Run Keyword And Return Status       Wait Until Element Is Visible       ${expected_rating_movie_detail}
    Wait Until Location Is              ${URL}
    Location Should Be                  ${URL}
    Wait Until Element Is Visible       ${expected_title_movie_detail}
    Element Should Be Visible           ${expected_title_movie_detail}
    Element Should Be Visible           ${expected_movie_detail_synopsis}
    Element Should Be Visible           ${expected_movie_detail_cast}
    Element Should Be Visible           ${text_duration_movie_detail_page}
    IF    '${CHECK_TEXT_CATEGORY}' == 'True'
        Element Should Be Visible           ${text_categories_movie_detail_page}
    END

    Scroll Element Into View            ${expected_movie_detail_related_video}
    Element Should Be Visible           ${expected_movie_detail_related_video}
    Scroll Element Into View            ${expected_title_movie_detail}
    IF    '${CHECK_EXPECTED_RATING}' == 'True'
        Element Should Be Visible           ${expected_rating_movie_detail}
    END

Play Content From Movie Detail
    sleep                               5
    Wait Until Element Is Visible       ${expected_title_movie_detail}
    Wait Until Element Is Visible       ${movie_detail_play_button}
    Click Element                       ${movie_detail_play_button}

Play Content Mola From Movie Detail
    sleep                               5
    Wait Until Element Is Visible       ${expected_title_movie_detail}
    Wait Until Element Is Visible       ${mola_movie_detail_play_button}
    Click Element                       ${mola_movie_detail_play_button}

Play Content 'Mulai Dari Awal'
    sleep                               5
    Wait Until Element Is Visible       ${popup_lanjutkan_nonton_movie_detail}
    Click Element                       ${button_mulai_popup_movie_detail}
    Sleep                               5

Play Content 'Watch Now'
    sleep                               5
    Wait Until Element Is Visible       ${button_watch_now_movie_detail_page}
    Click Element                       ${button_watch_now_movie_detail_page}
    sleep                               5

Click Button Watch Now On Video Player
    sleep                               2
    Mouse Over                          ${movie_mouse_over}
    Wait Until Element Is Visible       ${button_watch_now_movie_detail_page}
    Mouse Over                          ${movie_mouse_over}
    Wait Until Element Is Visible       ${button_watch_now_movie_detail_page}
    Mouse Over                          ${movie_mouse_over}
    Sleep                               3
    Mouse Over                          ${movie_mouse_over}
    ${CHECK_WATCH_NOW_BUTTON}           Run Keyword And Return Status               Wait Until Element Is Visible       ${button_watch_now_movie_detail_page}           10
    Run Keyword If                      '${CHECK_WATCH_NOW_BUTTON}'=='True'         Click Element                       ${button_watch_now_movie_detail_page}
    ...     ELSE                        Play Content Video Or Play Video From Begining

Play Content Video Or Play Video From Begining
    ${CHECK_ADULT_BLOCKER}      Run Keyword And Return Status   Wait Until Element Is Visible       ${frame_movie_detail_adult_content_18}    5
    Run Keyword If      '${CHECK_ADULT_BLOCKER}'=='True'        Accept Adult Content

    Wait Until Element Is Visible               ${movie_mouse_over}
    Mouse Over                                  ${movie_mouse_over}
    Wait Until Element Is Visible               ${button_movie_detail_play_alternative}
    Click Element                               ${button_movie_detail_play_alternative}

    # Temporary changed to new logic
    #    ${PLAY_BUTTON}             Run Keyword And Return Status          Wait Until Element Is Visible       ${button_mulai_popup_movie_detail}   5
    #    Run Keyword If                '${PLAY_BUTTON}' == 'True'          Play Content 'Mulai Dari Awal'
    #    ...     ELSE                                                      Play Content From Movie Detail

    ${CHECK_LIMIT}      Run Keyword And Return Status           Wait Until Element Is Visible       ${frame_movie_detail_device_limit}       10
    Run Keyword If      '${CHECK_LIMIT}'=='True'                Play Content Again

Play Content Again
    Sleep    20
    Reload Page
#    Play Content Video Or Play Video From Begining
    ${CHECK_ADULT_BLOCKER}      Run Keyword And Return Status           Wait Until Element Is Visible       ${frame_movie_detail_adult_content_18}    5
    Run Keyword If              '${CHECK_ADULT_BLOCKER}'=='True'        Accept Adult Content

    ${play}                     Run Keyword And Return Status           Wait Until Element Is Visible       ${button_mulai_popup_movie_detail}
    Run Keyword If              '${play}' == 'True'                     Play Content 'Mulai Dari Awal'
    ...     ELSE                                                        Play Content From Movie Detail

Accept Adult Content
    Wait Until Element Is Visible       ${button_movie_detail_accept_adult_content}
    Click Element                       ${button_movie_detail_accept_adult_content}

Forward Progress Bar
    Mouse Over                          ${button_forward_movie_detail}
    Mouse Over                          ${button_forward_movie_detail}
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
    sleep                               2
    Mouse Over                          ${movie_mouse_over}
    Page Should Contain Element         ${movie_pause_button}
    Page Should Contain Element         ${movie_detail_duration}
    Page Should Contain Element         ${movie_progress_bar}

Auto Play Next Episode
    Seek To Last 10s
    Wait Until Element Is Visible       ${autoplay_next_movie}              120

Verify Autoplay Next Video Is Visible
    Wait Until Element Is Visible       ${text_autoplay_next_movie_title}
    ${TEXT_TITLE_NEXT_VIDEO} =          Get Text                            ${text_autoplay_next_movie_title}
    Set Test Variable                   ${TEXT_TITLE_NEXT_VIDEO}
    ${URL_CURRENT} =                    Get Location
    Set Test Variable                   ${URL_CURRENT}
    Page Should Contain Element         ${autoplay_next_movie}
    Page Should Contain Element         ${autoplay_button_Play_next}
    Capture Element Screenshot          ${autoplay_button_Play_next}
    Page Should Contain Element         ${autoplay_button_skip}
    Capture Element Screenshot          ${autoplay_button_skip}

Verify Auto Play Not Displayed
    Seek To Last 10s
    Page Should Not Contain Element     ${autoplay_next_movie}
    Page Should Not Contain Element     ${autoplay_button_Play_next}
    Page Should Not Contain Element     ${autoplay_button_skip}

Verify Auto Play Is Not Displayed
    Page Should Not Contain Element     ${autoplay_next_movie}
    Element Should Not Be Visible       ${autoplay_next_movie}
    Page Should Not Contain Element     ${autoplay_button_Play_next}
    Element Should Not Be Visible       ${autoplay_button_Play_next}
    Page Should Not Contain Element     ${autoplay_button_skip}
    Element Should Not Be Visible       ${autoplay_button_skip}

Change Video Quality
    Wait Until Element Is Visible       ${movie_mouse_over}
    Mouse Over                          ${movie_mouse_over}
    Wait Until Element Is Visible       ${movie_quality_control}
    Click Element                       ${movie_quality_control}
    Wait Until Element Is Visible       ${movie_quality_popup}
    Click Element                       ${movie_quality_list_270}
    Element Should Be Visible           ${movie_quality_checklist_active}
    sleep                               5
    Mouse Over                          ${movie_mouse_over}
    Wait Until Element Is Visible       ${movie_quality_popup}
    Click Element                       ${movie_quality_list_360}
    Element Should Be Visible           ${movie_quality_checklist_active}
    sleep                               5
    Mouse Over                          ${movie_mouse_over}
    Wait Until Element Is Visible       ${movie_quality_popup}
    Click Element                       ${movie_quality_list_576}
    Element Should Be Visible           ${movie_quality_checklist_active}
    sleep                               5
    Mouse Over                          ${movie_mouse_over}
    Wait Until Element Is Visible       ${movie_quality_popup}
    Click Element                       ${movie_quality_list_720}
    Element Should Be Visible           ${movie_quality_checklist_active}
    sleep                               5

Verify Popup Quality Disappear After Click Button Quality
    Mouse Over                          ${movie_mouse_over}
    Click Element                       ${movie_quality_control}
    Element Should Not Be Visible       ${movie_quality_popup}

Verify Content not Supporting Closed Caption
    Mouse Over                          ${movie_mouse_over}
    Wait Until Element Is Visible       ${movie_button_pause}
    Element Should Not Be Visible       ${close_caption}

Play a content which is not supporting closed caption
    [Arguments]  ${URL_MOVIE_DETAIL2}
    Go To                               ${URL_MOVIE_DETAIL2}
    Wait Until Element Is Visible       ${movie2_play_button}
    Click Element                       ${movie2_play_button}
    Wait Until Element Is Visible       ${close_caption}

Verify Close Caption Icon
    Page Should Contain Element         ${expected_close_caption_icon}

Play a content which is supporting closed caption
    Choose Closed Caption off
    Mouse Over                          ${movie_mouse_over}
    Mouse Over                          ${close_caption}
    Click Element                       ${subtitle_list_english}
    sleep                               5
    Mouse Over                          ${movie_mouse_over}
    Mouse Over                          ${close_caption}
    Click Element                       ${subtitle_list_Indonesia}
    Sleep                               5

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
    Element Should Not Be Visible       ${expected_subtitle_on_screen}

Verify Change volume during video playback
    Wait Until Element Is Visible       ${movie_mouse_over}
    Mouse Over                          ${movie_mouse_over}
    Wait Until Element Is Visible       ${expected_volume}
    Mouse Over                          ${expected_volume}
    Wait Until Element Is Visible       ${expected_volume}
    Element Should Be Visible           ${expected_volume}
    Capture Element Screenshot          ${expected_volume}
    Sleep                               1
    Mouse Over                          ${movie_mouse_over}
    Wait Until Element Is Visible       ${volume_button}
    Mouse Over                          ${movie_mouse_over}
    Click Element                       ${volume_button}
    Element Should Be Visible           ${volume_button}
    Capture Element Screenshot          ${expected_volume}

Play a content in fullscreen mode
    Mouse Over                          ${movie_mouse_over}
    Wait Until Element Is Visible       ${movie_pause_button}
    Mouse Over                          ${movie_mouse_over}
    Mouse Over                          ${movie_mouse_over}
    Click Element                       ${button_fullscreen}
    Mouse Over                          ${button_fullscreen}
    Sleep                               3

Verify Content Is Playing In Default Mode
    Wait Until Element Is Visible       ${movie_mouse_over}
    Mouse Over                          ${movie_mouse_over}
    Mouse Over                          ${button_fullscreen}
    Wait Until Element Is Visible       ${button_fullscreen}
    Page Should Contain Element         ${button_fullscreen}
    Mouse Over                          ${button_fullscreen}
    Wait Until Element Is Visible       ${button_fullscreen}
    Element Should Contain              ${expected_fullscreen_icon}                             Enter Fullscreen

Verify Content Is Playing In Fullscreen Mode
    Wait Until Element Is Visible       ${movie_mouse_over}
    Mouse Over                          ${movie_mouse_over}
    Mouse Over                          ${button_video_player_exit_fullscreen}
    Wait Until Element Is Visible       ${button_video_player_exit_fullscreen}
    Page Should Contain Element         ${button_video_player_exit_fullscreen}
    Mouse Over                          ${button_video_player_exit_fullscreen}
    Wait Until Element Is Visible       ${button_video_player_exit_fullscreen}
    Element Should Contain              ${text_video_player_exit_fullscreen_tooltip}            Exit Fullscreen

Verify fullscreen icon
    Page Should Contain Element         ${expected_fullscreen_icon}
    Capture Element Screenshot          ${expected_fullscreen_icon}
    Mouse Over                          ${movie_mouse_over}
    Element Should Be Visible           ${button_exit_fullscreen_movie_detail_page}
    Element Should Be Visible           ${button_fill_on_screen_movie_detail_page}
    Click Element                       ${button_fullscreen}

Verify Video Metadata
    Sleep                               10
    Wait Until Element Is Not Visible   ${expected_player_control_unhide}
    Element Should Not Be Visible       ${expected_player_control_unhide}
    Mouse Over                          ${movie_mouse_over}
    Mouse Over                          ${movie_mouse_over}
    Wait Until Element Is Visible       ${expected_player_control_unhide}
    Element Should Be Visible           ${expected_player_control_unhide}
    Element Should Be Visible           ${button_exit_fullscreen_movie_detail_page}
    Element Should Be Visible           ${button_fill_on_screen_movie_detail_page}

Verify Movie Details Page Is Shown
    [Arguments]     ${EXPECTED_TITLE_CONTENT}
    Wait Until Element Is Visible       ${text_movie_detail_title}
    Element Should Contain              ${text_movie_detail_title}               ${EXPECTED_TITLE_CONTENT}

Verify Pause And Resume Live Matches
    Wait Until Element Is Visible       ${movie_mouse_over}
    Mouse Over                          ${movie_pause_button}
    sleep                               2
    Mouse Over                          ${movie_pause_button}
    Click Element                       ${movie_pause_button}
    Mouse Over                          ${movie_mouse_over}
    Mouse Over                          ${movie_mouse_over}
    Wait Until Element Is Visible       ${button_play_player_control}
    Page Should Contain Element         ${button_play_player_control}
    Sleep                               2
    Mouse Over                          ${movie_mouse_over}
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

Verify Upcoming In Matches Page
    [Arguments]  ${URL_MOVIE_DETAIL}
    ${status} =        Run Keyword And Continue On Failure    Get Text  ${matches_status_match}
    Run Keyword If	   '${status}' == 'LIVE NOW'                Check Upcoming Matches
    ...                ELSE IF	'${status}' != 'LIVE NOW'       Go To Another Live Match     ${URL_MOVIE_DETAIL}
    ...                ELSE                                     Link Text View All Is Not Visible

Verify Default Control
    Mouse Over                          ${movie_mouse_over}
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
    Element Should Be Visible           ${movie_quality_control}
    Element Should Be Visible           ${button_fullscreen}
    Mouse Over                          ${movie_mouse_over}
    Click Element                       ${button_fullscreen}
    Mouse Over                          ${movie_mouse_over}
    Element Should Be Visible           ${button_exit_fullscreen_movie_detail_page}
    Mouse Over                          ${movie_mouse_over}
    Element Should Be Visible           ${button_fill_on_screen_movie_detail_page}

Verify Default Control Trailer
    Mouse Over                          ${movie_mouse_over}
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
    Element Should Be Visible           ${movie_quality_control}
    Element Should Be Visible           ${button_fullscreen}
    Mouse Over                          ${movie_mouse_over}
    Click Element                       ${button_fullscreen}
    Mouse Over                          ${movie_mouse_over}
    Element Should Be Visible           ${button_exit_fullscreen_movie_detail_page}
    Mouse Over                          ${movie_mouse_over}

Verify Video Quality 720
    Mouse Over                          ${movie_mouse_over}
    Wait Until Element Is Visible       ${movie_quality_control}
#    Click Element                       ${movie_quality_control}
    # Wait Until Element Is Visible       ${movie_change_quality}
    Element Should Contain              ${movie_quality_selected}           720
    Sleep                               3

Click button Forward/backward movie
    Wait Until Element Is Visible       ${button_forward_movie_detail}
    Mouse Over                          ${button_forward_movie_detail}
    Wait Until Element Is Visible       ${button_forward_movie_detail}
    ${VIDEOID}                          Get Element Attribute           css=video            id
    ${VIDEOID}                          Remove String                   ${VIDEOID}           video-main-

    # Get First Position
    ${COMMAND_GET_FIRST_POSITION}       catenate                        return window.player${VIDEOID}.getMediaElement().currentTime
    ${FIRST_POSITION}                   Execute Javascript              ${COMMAND_GET_FIRST_POSITION}
    Capture Element Screenshot          ${movie_detail_duration}
    Click Element                       ${button_forward_movie_detail}
    Wait Until Element Is Visible       ${button_forward_movie_detail}
    ${COMMAND_GET_CURRENT_POSITION}     catenate                        return window.player${VIDEOID}.getMediaElement().currentTime
    ${CURRENT_POSITION}                 Execute Javascript              ${COMMAND_GET_CURRENT_POSITION}
    Capture Element Screenshot          ${movie_detail_duration}
    Should Be True                      ${FIRST_POSITION} < ${CURRENT_POSITION}
    Sleep                               2
    Mouse Over                          ${movie_mouse_over}
    Wait Until Element Is Visible       ${button_backward_movie_detail}
    ${VIDEOID}                          Get Element Attribute           css=video            id
    ${VIDEOID}                          Remove String                   ${VIDEOID}           video-main-

    # Get First Position
    ${COMMAND_GET_FIRST_POSITION}       catenate                        return window.player${VIDEOID}.getMediaElement().currentTime
    ${FIRST_POSITION}                   Execute Javascript              ${COMMAND_GET_FIRST_POSITION}
    Capture Element Screenshot          ${movie_detail_duration}
    Click Element                       ${button_backward_movie_detail}
    Wait Until Element Is Visible       ${button_backward_movie_detail}
    ${COMMAND_GET_CURRENT_POSITION}     catenate                        return window.player${VIDEOID}.getMediaElement().currentTime
    ${CURRENT_POSITION}                 Execute Javascript              ${COMMAND_GET_CURRENT_POSITION}
    Capture Element Screenshot          ${movie_detail_duration}
    Should Be True                      ${FIRST_POSITION} > ${CURRENT_POSITION}

Seek To Last 10s
    Sleep                               2
    Mouse Over                          ${movie_mouse_over}
    Sleep                               2

    # Get VIDEOID
#    ${VIDEOID}                         Get Location
#    ${VIDEOID}                         Remove String Using Regexp      ${VIDEOID}           ^.*?(?=vd)
    ${VIDEOID}                          Get Element Attribute           css=video            id
    ${VIDEOID}                          Remove String                   ${VIDEOID}           video-main-

    # Get VOD length
    ${COMMAND_GET_DURATION}             catenate                        return window.player${VIDEOID}.getMediaElement().seekable.end(0)
    ${DURATION}                         Execute Javascript              ${COMMAND_GET_DURATION}

    # Calculate last 10s
    ${DESIRED_POSITION}                 Evaluate                        ${DURATION}-10
    ${COMMAND_SEEK_TO}                  catenate                        return window.player${VIDEOID}.getMediaElement().currentTime=${DESIRED_POSITION}

    # Seek to position
    ${CURRENT_POSITION}                 Execute Javascript              ${COMMAND_SEEK_TO}

Verify Categories Movie
    #CATEGORIES CURRENT MOVIE
    Wait Until Element Is Visible       ${expected_categories_movie_detail}
    ${CATEGORIES_CURRENT_VIDEO}         Get Text                    ${text_categories_movie_detail_page}

    Wait Until Element Is Visible       ${autoplay_button_Play_next}
    Click Element                       ${autoplay_button_Play_next}
    Accept Adult Content

    #CATEGORIES NEXT MOVIE
    Wait Until Element Is Visible       ${expected_categories_movie_detail}
    ${CATEGORIES_NEXT_VIDEO}            Get Text                    ${text_categories_movie_detail_page}

    Should Be True                      '${CATEGORIES_CURRENT_VIDEO}' == '${CATEGORIES_NEXT_VIDEO}'

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
    ${result} =   Evaluate                    (${width}/2) - 30
    Drag And Drop By Offset     ${button_seek_volume}       ${result}         0

    # Capture To Verify
    Mouse Over                          ${movie_mouse_over}
    Capture Element Screenshot          ${expected_volume}

Verify Next Episode Same Category As VOD
    ${TITLE_NEXT_VIDEO_S1}              Get Text                                ${text_movie_detail_title}
    ${TITLE_NEXT_VIDEO_S1}=             remove string                           S1E08: DAYS TO JAN'S DEATH 2, 1 ...               DAYS TO JAN'S DEATH 2, 1 ...     ${SPACE}
    Click Element                       ${autoplay_button_Play_next}
    Wait Until Element Is Visible       ${text_movie_detail_title}
    Element Should Be Visible           ${text_movie_detail_title}
    ${TITLE_NEXT_VIDEO_S2}              Get Text                                ${text_movie_detail_title}
    ${TITLE_NEXT_VIDEO_S2}=             remove string                           TRAILER 35 DAYS S2              TRAILER 35 DAYS     ${SPACE}
    Should Be True                      '${TITLE_NEXT_VIDEO_S1}' != '${TITLE_NEXT_VIDEO_S2}'

Verify Countdown Auto Play
    Wait Until Element Is Visible       ${text_autoplay_counter_next}
    Element Should Be Visible           ${text_autoplay_counter_next}
    Capture Element Screenshot          ${text_autoplay_counter_next}

Verify Button Replay Auto Play
    Sleep                               12
    Mouse Over                          ${movie_mouse_over}
    Element Should not Be Visible       ${frame_autoplay}
    Wait Until Element Is Visible       ${button_play_player_control}
    Mouse Over                          ${movie_mouse_over}
    Element Should Be Visible           ${button_play_player_control}
    Click Element                       ${button_play_player_control}

Click Button Play Default Control
     Wait Until Element Is Visible      ${button_play_player_control}
     Click Element                      ${button_play_player_control}

Verify No Autoplay Vanished
    Wait Until Element Is Not Visible   ${expected_autoplay_movie}
    Element Should Not Be Visible       ${expected_autoplay_movie}

Click Button Next Video Beside Volume And Verify Movie In Related Video Is Same With Next Movie
    #Get Title Related Video
    Scroll Element Into View            ${expected_movie_detail_related_video}
    ${TITLE_RELATED_VIDEO}              Get Text                                ${title_related_video_movie_detail_page}
    Scroll Element Into View            ${expected_title_movie_detail}

    Mouse Over                          ${movie_mouse_over}
    Mouse Over                          ${button_next_video_beside_volume}
    Wait Until Element Is Visible       ${button_next_video_beside_volume}
    Click Element                       ${button_next_video_beside_volume}

    #Get Title Movie After Click Button Next Video
    Wait Until Element Is Visible       ${text_movie_detail_title}
    ${TITLE_NEXT_MOVIE}                 Get Text                                ${text_movie_detail_title}
    Should Be True                      '${TITLE_RELATED_VIDEO}' == '${TITLE_NEXT_MOVIE}'

Verify Message Prompt To Sign In
    [Arguments]     ${URL}
    Wait Until Element Is Visible       ${button_videos_player_login_to_watch_after_trailer}
    Element Should Be Visible           ${button_videos_player_login_to_watch_after_trailer}
    Click Element                       ${button_videos_player_login_to_watch_after_trailer}
    Click Element                       ${button_close_login_movie_detail}
    Verify Is Redirected Back To The Same Movie Detail      ${URL}

Verify Subscription Blocker Is Shown
    Wait Until Element Is Visible       ${button_movie_detail_blocker_beli_akses}
    Element Should Be Visible           ${button_movie_detail_blocker_beli_akses}
    Element Should Contain              ${button_movie_detail_blocker_beli_akses}       Beli Akses
    Element Should Be Visible           ${button_movie_detail_blocker_tukar_voucher}
    Element Should Contain              ${button_movie_detail_blocker_tukar_voucher}    Tukar Voucher

Click Button Favorit
    Wait Until Element Is Visible       ${button_movie_detail_favorit}
    Click Element                       ${button_movie_detail_favorit}

Verify Favorit Button Is Non Active
    Wait Until Element Is Visible       ${button_movie_detail_favorit_non_active}
    Element Should Be Visible           ${button_movie_detail_favorit_non_active}
    Element Should Contain              ${button_movie_detail_favorit}                      Favorit

Verify Favorit Button Is Active
    Wait Until Element Is Visible       ${text_movie_detail_favorit_message}
    Element Should Be Visible           ${text_movie_detail_favorit_message}
    Element Text Should Be              ${text_movie_detail_favorit_message}                Favorited
    Wait Until Element Is Visible       ${button_movie_detail_lihat_daftar_favorit}
    Element Should Be Visible           ${button_movie_detail_lihat_daftar_favorit}
    Element Text Should Be              ${button_movie_detail_lihat_daftar_favorit}         Favorite List
    Wait Until Element Is Not Visible   ${text_movie_detail_favorit_message}                5
    Wait Until Element Is Visible       ${button_movie_detail_favorit}
    Element Should Be Visible           ${button_movie_detail_favorit}
    Element Should Contain              ${button_movie_detail_favorit}                      Favorited

Verify Video Added To My Favorite In Daftar Tontonan Page
    [Arguments]    ${TEXT_EXPECTED_MOVIE_TITLE}
    HomePage.Open Tontonan Saya Page
    Wait Until Element Is Visible       //p[contains(text(),'${TEXT_EXPECTED_MOVIE_TITLE}')]
    Click Element                       //p[contains(text(),'${TEXT_EXPECTED_MOVIE_TITLE}')]

Verify Video Is Appeared At Favorite Video Section In Homepage
    [Arguments]    ${TEXT_EXPECTED_MOVIE_TITLE}
    HomePage.Go To Homepage
    HomePage.Mouse Over To Live Chat
    Wait Until Element Is Visible       //p[contains(text(),'${TEXT_EXPECTED_MOVIE_TITLE}')]
    Scroll Element Into View            //p[contains(text(),'${TEXT_EXPECTED_MOVIE_TITLE}')]

Remove Favorit Video
    Wait Until Element Is Visible       ${button_movie_detail_favorit_active}
    Click Element                       ${button_movie_detail_favorit_active}
    Wait Until Element Is Not Visible   ${button_movie_detail_favorit_active}

Check Favorit Video
    Wait Until Element Is Visible       ${button_movie_detail_favorit}
    ${STATUS}           Run Keyword And Return Status       Element Should Be Visible       ${button_movie_detail_favorit_active}
    Run Keyword If      '${STATUS}'=='True'                 Remove Favorit Video


Verify VOD Is Playing
    Wait Until Element Is Visible       ${movie_mouse_over}
    Mouse Over                          ${movie_mouse_over}
    Sleep                               2

    # Get VIDEOID
#    ${VIDEOID}                          Get Location
#    ${VIDEOID}                          Remove String Using Regexp      ${VIDEOID}           ^.*?(?=vd)

    ${VIDEOID}                          Get Element Attribute           css=video            id
    ${VIDEOID}                          Remove String                   ${VIDEOID}           video-main-

    # Get First Position
    ${COMMAND_GET_FIRST_POSITION}       catenate                        return window.player${VIDEOID}.getMediaElement().currentTime
    ${FIRST_POSITION}                   Execute Javascript              ${COMMAND_GET_FIRST_POSITION}
    Sleep                               5
    # Get Current Position
    ${COMMAND_GET_CURRENT_POSITION}     catenate                        return window.player${VIDEOID}.getMediaElement().currentTime
    ${CURRENT_POSITION}                 Execute Javascript              ${COMMAND_GET_CURRENT_POSITION}
    Should Be True                      ${FIRST_POSITION} < ${CURRENT_POSITION}

    # Verify Pause Button Is Visible
    Mouse Over                          ${movie_mouse_over}
    Sleep                               1
    Mouse Over                          ${movie_pause_button}
    Wait Until Element Is Visible       ${movie_pause_button}
    Element Should Be Visible           ${movie_pause_button}
    Element Should Not Be Visible       ${button_play_player_control}

Verify VOD Is Playing And Time Is Elapsed
    Wait Until Element Is Visible       ${movie_mouse_over}
    Mouse Over                          ${movie_mouse_over}
    Sleep                               1
    Wait Until Element Is Visible       ${movie_detail_duration}
    Mouse Over                          ${movie_detail_duration}

    # Get First Position
    ${TIME}                             Get Text                ${movie_detail_duration}
    ${FIRST_POSITION}                   Get Time To Seconds     ${TIME}
    Sleep                               1

    Wait Until Element Is Visible       ${movie_mouse_over}
    Mouse Over                          ${movie_mouse_over}
    Sleep                               1
    Wait Until Element Is Visible       ${movie_detail_duration}
    Mouse Over                          ${movie_detail_duration}

    # Get Current Position
    ${TIME2}                            Get Text                ${movie_detail_duration}
    ${CURRENT_POSITION}                 Get Time To Seconds     ${TIME2}
    Should Be True                      ${FIRST_POSITION} > ${CURRENT_POSITION}

    # Compare Time
    ${STATUS}   ${TIME_DIFF}            Compare Time            ${TIME}         ${TIME2}
    Should Be Equal                     ${STATUS}               time_decreased
    Log                                 ${TIME_DIFF}

    # Verify Pause Button Is Visible
    Mouse Over                          ${movie_mouse_over}
    Sleep                               1
    Mouse Over                          ${movie_pause_button}
    Wait Until Element Is Visible       ${movie_pause_button}
    Element Should Be Visible           ${movie_pause_button}
    # Verify Play Button Is Visible
    Element Should Not Be Visible       ${button_play_player_control}

Click Terms And Condition On Blocked Player
    Wait Until Element Is Visible       ${links_movie_detail_terms_conditions}
    Click Element                       ${links_movie_detail_terms_conditions}

Click Button Play Next Auto Play
    Wait Until Element Is Visible       ${autoplay_button_Play_next}
    Click Element                       ${autoplay_button_Play_next}

Click Button Skip Auto Play
    Wait Until Element Is Visible       ${autoplay_button_skip}
    Click Element                       ${autoplay_button_skip}

Verify After Autoplay Stay At Current Video
    ${URL} =      Get Location
    Wait Until Element Is Visible       ${movie_mouse_over}
    Mouse Over                          ${movie_mouse_over}
    Sleep                               1
    Wait Until Element Is Visible       ${movie_detail_duration}
    Mouse Over                          ${movie_detail_duration}
    Sleep                               1
    Mouse Over                          ${movie_detail_duration}
    Sleep                               8
    Mouse Over                          ${movie_detail_duration}
    Wait Until Element Contains         ${movie_detail_duration}            00:00
    Element Text Should Be              ${movie_detail_duration}            00:00
    Capture Element Screenshot          ${movie_detail_duration}
    Location Should Be                  ${URL}

Verify After Autoplay Play Next Video
    Wait Until Element Is Visible       ${movie_detail_title}
    Element Should Contain              ${movie_detail_title}               ${TEXT_TITLE_NEXT_VIDEO}
    Wait Until Location Does Not Contain    ${URL_CURRENT}
    Wait Until Location Is Not              ${URL_CURRENT}
    ${URL_NOW} =                        Get Location
    Should Not Contain                  ${URL_NOW}                          ${URL_CURRENT}

Verify Autoplay Countdown Is Appear
    Wait Until Element Is Visible       ${text_autoplay_counter_next}
    Wait Until Element Contains         ${text_autoplay_counter_next}       Play next movie in 9
#    Element Should Contain              ${text_autoplay_counter_next}       Play next movie in 10

Verify Button Login To Watch Appear After Trailer Finished
    Wait Until Element Is Visible       ${movie_mouse_over}
    Mouse Over                          ${movie_mouse_over}
    Click Element                       ${button_sound_on_trailer_movie_detail_page}
    Wait Until Element Is Visible       ${frame_play_trailer_movie_detail_page}  140
    Element Should Be Visible           ${text_play_trailer_movie_detail_page}
    Element Should Be Visible           ${frame_play_trailer_movie_detail_page}
    Element Should Be Visible           ${button_videos_player_login_to_watch_after_trailer}

Verify Trailer Can Play In Movie Detail Tab "Trailer"
    Wait Until Element Is Visible       ${expected_title_movie_detail}
    Element Should Be Visible           ${expected_title_movie_detail}
    Element Should Be Visible           ${expected_movie_detail_trailer}
    Click Element                       ${expected_movie_detail_trailer}
    Mouse Over                          ${card_trailer_movie_detail_page}
    Element Should Be Visible           ${card_trailer_movie_detail_page}
    Click Element                       ${button_play_card_trailer_movie_detail_page}
    Wait Until Element Is Visible       ${movie2_play_button}
    Click Element                       ${movie2_play_button}

Verify Related Video Based On Single Film Title
    Scroll Element Into View            ${expected_movie_detail_related_video}
    Element Should Be Visible           ${expected_movie_detail_related_video}
    Element Should Be Visible           ${title_related_video_movie_detail_page}
    Get Text                            ${title_related_video_movie_detail_page}

Verify Related Video Based On Series Film Title
    Scroll Element Into View            ${expected_movie_detail_related_video}
    Element Should Be Visible           ${expected_movie_detail_related_video}
    Element Should Be Visible           ${title_related_video_movie_detail_page}
    ${TITLE_RELATED_VIDEO}              Get Text                                ${title_related_video_movie_detail_page}

Verify Title Related Video
    Scroll Element Into View            ${expected_movie_detail_related_video}
    ${TITLE_RELATED_VIDEO}              Get Text                                ${title_related_video_movie_detail_page}
    ${TITLE_RELATED_VIDEO}=             remove string                           S1E02: BRIDGE AND TUNNELVISION              BRIDGE AND TUNNELVISION     ${SPACE}
    Should Be Equal                     ${TITLE_RELATED_VIDEO}                  S1E02:

    Run Keyword If                      '${TITLE_RELATED_VIDEO}' == 'S1E02:'    Verify Related Video Based On Series Film Title
    ...     ELSE IF                     '${TITLE_RELATED_VIDEO}' != 'S1E02:'    Verify Related Video Based On Single Film Title
    ...                                 ELSE                                    Fail    Title Change

Verify Movie In Related Video Is Same With Movie In Autoplay
    Sleep                               2
    Scroll Element Into View            ${expected_movie_detail_related_video}
    ${TITLE_RELATED_VIDEO}              Get Text                                ${title_related_video_movie_detail_page}
    Scroll Element Into View            ${expected_title_movie_detail}
    Mouse Over                          ${movie_mouse_over}
    Wait Until Element Is Visible       ${movie_button_pause}
    Seek To Last 10s
    Sleep                               2

    ${TITLE_MOVIE_AUTOPLAY}             Get Text                                ${text_autoplay_next_movie_title}
    Should Be True                      '${TITLE_RELATED_VIDEO}' == '${TITLE_MOVIE_AUTOPLAY}'

Seek Progress Bar
    Wait Until Element Is Visible       ${frame_autoplay}
    Sleep                               2
    Element Should Be Visible           ${frame_autoplay}
# Mouse Over To Movie
    Mouse Over                          ${movie_mouse_over}
    Sleep                               2

    # Get VIDEOID
#    ${VIDEOID}                         Get Location
#    ${VIDEOID}                         Remove String Using Regexp      ${VIDEOID}           ^.*?(?=vd)
    ${VIDEOID}                          Get Element Attribute           css=video            id
    ${VIDEOID}                          Remove String                   ${VIDEOID}           video-main-

    # Get VOD length
    ${COMMAND_GET_DURATION}             catenate                        return window.player${VIDEOID}.getMediaElement().seekable.end(0)
    ${DURATION}                         Execute Javascript              ${COMMAND_GET_DURATION}

    # Calculate last 10s
    ${DESIRED_POSITION_1}               Evaluate                        ${DURATION}-3500
    ${COMMAND_SEEK_TO}                  catenate                        return window.player${VIDEOID}.getMediaElement().currentTime=${DESIRED_POSITION_1}

    # Seek to position
    ${CURRENT_POSITION}                 Execute Javascript              ${COMMAND_SEEK_TO}

Verify Video Player Continue Playing
    Mouse Over                          ${movie_mouse_over}
    Wait Until Element Is Visible       ${movie_pause_button}
    Element Should Not Be Visible       ${frame_autoplay}
    Mouse Over                          ${movie_mouse_over}
    Element Should Be Visible           ${movie_pause_button}
    Sleep                               3

Verify Play Movie With User Without Package
    Wait Until Element Is Visible       ${popup_purchase_package}
    Element Should Be Visible           ${popup_purchase_package}
    Element Should Be Visible           ${text_purchase_package}
    Element Should Be Visible           ${button_subscribe_now}
    Element Should Be Visible           ${button_redeem_voucher}
    Element Should Not Be Visible       Verify Default Control

Verify Button Fill On Screen And Fit On Screen Works Fine
    Mouse Over                          ${movie_mouse_over}
    Wait Until Element Is Visible       ${button_fill_on_screen_movie_detail_page}
    Mouse Over                          ${movie_mouse_over}
    Element Should Be Visible           ${button_fill_on_screen_movie_detail_page}
    Capture Element Screenshot          ${button_fill_on_screen_movie_detail_page}
    Click Element                       ${button_fill_on_screen_movie_detail_page}
    Mouse Over                          ${movie_mouse_over}
    Element Should Be Visible           ${button_fill_on_screen_movie_detail_page}
    Capture Element Screenshot          ${button_fill_on_screen_movie_detail_page}