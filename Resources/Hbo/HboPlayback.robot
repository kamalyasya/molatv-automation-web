*** Settings ***
Library             SeleniumLibrary
Library             String
Resource            ../../Frameworks/Routers.robot

*** Variables ***
${mouse_hover_sidebar}                  css=._1GfoO
${mouse_hover_movie}                    css=video
${sidebar_accounts_menu}                css=._2YhM7 > ._2yKxK
${menu_movies}                          css=.FYgXF ._11ipt:nth-of-type(1)
${mola_hub_hbo}                         css=.css-ch8pw7 > .css-1mmkue0 > a:nth-of-type(3) > .css-1wegyzv > .css-3joiye.css-tqv6h2.imageWrapper.loaded > img
${movie_detail_title}                   css=h1
${movie_button_play}                    css=.control_buttons_play
${movie_button_pause}                   css=.control_buttons_play_pause
${Movie_hbo_logo}                       css=.splash-img-container
${select_frame}                         css=.css-uz10iv > iframe[title='HBO GO Asia']

${movie_button_close_caption}           css=.control_buttons_cc
${movie_button_cc_audio}                css=.cc-audio
${movie_button_cc_subtitle}             css=.cc-subtitles
${movie_button_fullscreen}              css=.control_buttons_fullscreen_off
${movie_button_minimize}                css=.control_buttons_fullscreen_on
${movie_control_button_time}            css=.control_buttons_time
${movie_control_button_forward}         css=.control_buttons_ffw
${movie_control_button_backward}        css=.control_buttons_rwd
${movie_button_cc_subtitle_key_off}     css=[key='off']
${movie_button_cc_subtitle_key_id}      css=[key='id']
${movie_rating}                         xpath=/html//div[@id='video-player-root']//span[@class='border']

${movie_button_volume_mute}             css=.control_button.control_buttons_volume.mute
${movie_button_volume}                  css=.control_button.control_buttons_volume
${movie_button_volume_bar}              css=.volume_bar
${movie_button_volume_dot}              xpath=/html//div[@id='root']/div/div/div[2]/div/div/div/div[5]/div[@class='volume_bar']/div[@class='volume_bar_current volume_bar_current_dot']
${volume_before}                        css=.volume_bar > .volume_bar_current.volume_bar_current_dot::before
${expected_volume_hbo}                  css=.embed.shaka-video-container > .volume_bar_container

*** Keywords ***
Go To Login Page
    Wait Until Element Is Visible   ${mouse_hover_sidebar}
    Mouse Over                      ${mouse_hover_sidebar}
    Click Element                   ${sidebar_accounts_menu}

User able to play HBO Go movies
    [Arguments]     ${URL_HBO_MOVIE}
    Wait Until Element Is Visible   ${menu_movies}
    Click Element                   ${menu_movies}
    Wait Until Element Is Visible   ${mola_hub_hbo}
    Click Element                   ${mola_hub_hbo}
    Go To                           ${URL_HBO_MOVIE}

Play HBO Movies
    Sleep                           10
    Select Frame                    ${select_frame}
    Wait Until Element Is Visible   ${movie_button_play}
    Mouse Over                      ${mouse_hover_movie}
    Click Element                   ${movie_button_play}
    Sleep                           5
    Sleep                           3

Verify User able to play HBO Go movies
    Page Should Contain Element     ${movie_button_pause}
    Page Should Contain Element     ${Movie_hbo_logo}

Verify default control
    Mouse Over                      ${mouse_hover_movie}
    Page Should Contain Element     ${movie_button_volume}
    Page Should Contain Element     ${movie_button_close_caption}
    Click Element                   ${movie_button_close_caption}
    Page Should Contain Element     ${movie_button_cc_audio}
    Sleep                           2

Verify user able to played HBO go in fullscreen mode
    Wait Until Element Is Visible   ${movie_button_fullscreen}
    Page Should Contain Element     ${movie_button_fullscreen}
    Click Element                   ${movie_button_fullscreen}
    Click Element                   ${mouse_hover_movie}
    Page Should Contain Element     ${movie_button_minimize}
    Click Element                   ${movie_button_minimize}

Verify the content on HBO Go player resumes after pausing
    Mouse Over                      ${mouse_hover_movie}
    Click Element                   ${movie_button_pause}
    Page Should Contain Element     ${movie_control_button_time}
    Capture Element Screenshot      ${movie_control_button_time}
    Click Element                   ${movie_button_play}
    Page Should Contain Element     ${movie_control_button_time}
    Capture Element Screenshot      ${movie_control_button_time}

Verify the progress bar and elapsed time on HBO Go player are updating when playing a content
    Element Should not Contain      ${movie_control_button_time}    0:00
    Capture Element Screenshot      ${movie_control_button_time}

Verify the content resumes after fast forwarded or rewound
    Mouse Over                      ${mouse_hover_movie}
    Click Element                   ${movie_control_button_forward}
    Page Should Contain Element     ${movie_control_button_time}
    Capture Element Screenshot      ${movie_control_button_time}
    Sleep                           2
    Click Element                   ${movie_control_button_backward}
    Page Should Contain Element     ${movie_control_button_time}
    Capture Element Screenshot      ${movie_control_button_time}

Verify No closed caption/Subtitle is shown when the 'Closed Caption' is off
    Mouse Over                      ${mouse_hover_movie}
    Click Element                   ${movie_button_close_caption}
    Page Should Contain Element     ${movie_button_cc_subtitle}
    Click Element                   ${movie_button_cc_subtitle_key_off}
    Element Text Should Be          ${movie_button_cc_subtitle_key_off}     Off
    Capture Element Screenshot      ${movie_button_cc_subtitle_key_off}

Verify the closed caption/Subtitle is shown based on the selected language
    Mouse Over                      ${mouse_hover_movie}
    Click Element                   ${movie_button_close_caption}
    Page Should Contain Element     ${movie_button_cc_subtitle}
    Click Element                   ${movie_button_cc_subtitle_key_id}
    Element Text Should Be          ${movie_button_cc_subtitle_key_id}      Bahasa Indonesia
    Capture Element Screenshot      ${movie_button_cc_subtitle_key_id}

See HBO movie rating on movie detail
    [Arguments]     ${URL_HBO_MOVIE}
    Wait Until Element Is Visible   ${menu_movies}
    Click Element                   ${menu_movies}
    Wait Until Element Is Visible   ${mola_hub_hbo}
    Click Element                   ${mola_hub_hbo}
    Go To                           ${URL_HBO_MOVIE}

User able to see HBO movie rating on movie detail
    Page Should Contain Element     ${movie_rating}
    Capture Element Screenshot      ${movie_rating}

Verify User able to set volume up/down on HBO Go player

    # Mouse Over To Movie
    Click Element                     ${mouse_hover_movie}
    Sleep                               2
    Click Element                     ${movie_button_volume}

    # Get Element Size Seek Volume Down
    ${width}	${height} =   Get Element Size            ${movie_button_volume_bar}
    ${result} =   Evaluate                    (${height}/2) - 50
    Drag And Drop By Offset     ${movie_button_volume_bar}       0          0

    # Capture To Verify
#    Mouse Over                          ${movie_mouse_over}
    Capture Element Screenshot          ${movie_button_volume_bar}
    sleep                               2

    # Get Element Size Seek Volume Up
    ${width}	${height} =   Get Element Size            ${movie_button_volume_bar}
    ${result} =   Evaluate                    (${height}/2) - 30
    Drag And Drop By Offset     ${movie_button_volume_bar}       0          70

    # Capture To Verify
#    Mouse Over                          ${mouse_hover_movie}
    Capture Element Screenshot          ${movie_button_volume_bar}

Unselect Frame From Video
    Unselect Frame