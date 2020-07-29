*** Settings ***
Library             SeleniumLibrary
Resource            ../../Frameworks/Routers.robot

*** Variables ***
${menu_movies}                          css=a[title='Movies'] > div[title='Movies']
${button_movies_categories}             css=a:nth-of-type(1) > ._w0BR > ._1Ch51.css-tqv6h2.imageWrapper.loaded
${button_garsel}                        css=.css-1rguokb > div:nth-of-type(2) > div:nth-of-type(1) .css-11xe1ut.css-dzdbuq.slider > .slider-frame > .slider-list > .slide-current.slide-visible.slider-slide .css-tqv6h2.imageWrapper.loaded > .imageBorder
#${title_garselep1}                      css=div:nth-of-type(1) > .css-gu2yrd > .title
#${button_select_movies_garselep1}       css=div:nth-of-type(1) > .css-gu2yrd > .css-rh1xgi > .css-tqv6h2.imageWrapper.loaded > .imageBorder    29-07-20 Edited by Putra karena element berganti
${button_garsel}                        css=.css-1rwwe5j > div:nth-of-type(2) > div:nth-of-type(1) .css-11xe1ut.css-dzdbuq.slider > .slider-frame > .slider-list > .slide-current.slide-visible.slider-slide .css-tqv6h2.imageWrapper.loaded > .imageBorder
${title_garselep1}                      css=div:nth-of-type(1) > .css-g2tceo > .title
${button_select_movies_garselep1}       css=[class] .css-jraxs5:nth-of-type(1) .imageBorder
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
${notif_badge_inbox}                    id=next
${forward_movie_detail}                 css=.css-2v9r2y.forwardIcon

${movie_detail_duration}                css=.duration
${movie_progress_bar}                   css=div#video-child  .progress > .progress_wrapper
${movie_pause_button}                   css=.css-2v9r2y.pauseIcon
${movie_mouse_over}                     css=div#video-child > .css-q60n54
${movie_quality_control}                css=div#vpcc-quality
${movie_change_quality}                 css=.quality_popup
${movie_quality_list_576}               css=div#vpcc-quality > div > div:nth-of-type(3)
${movie_quality_list_270}               css=div#vpcc-quality > div > div:nth-of-type(5)
${movie_quality_list_360}               css=div#vpcc-quality > div > div:nth-of-type(4)
${movie_quality_list_720}               css=div#vpcc-quality > div > div:nth-of-type(2)
${movie_quality_list_auto}              css=div > div:nth-of-type(6)
${movie_quality_title}                  css=.quality_title
${button_login_login}                   css=.undefined
${title_movie_detail}                   css=h1
${movie_detail_play_button}             css=.css-zy8jsc
${movie_detail_image_logo}              css=img[alt='Bug-logo Player']
${notif_badge_inbox}                    id=next
${forward_movie_detail}                 css=.css-2v9r2y.forwardIcon

${movie_detail_duration}                css=.duration
${movie_progress_bar}                   css=div#video-child  .progress > .progress_wrapper
${movie_pause_button}                   css=.css-2v9r2y.pauseIcon
${movie_mouse_over}                     css=div#video-child > .css-q60n54
${movie_quality_control}                css=div#vpcc-quality
${movie_change_quality}                 css=.quality_popup
${movie_quality_list_576}               css=div#vpcc-quality > div > div:nth-of-type(3)
${movie_quality_list_270}               css=div#vpcc-quality > div > div:nth-of-type(5)
${movie_quality_list_360}               css=div#vpcc-quality > div > div:nth-of-type(4)
${movie_quality_list_720}               css=div#vpcc-quality > div > div:nth-of-type(2)
${movie_quality_list_auto}              css=div > div:nth-of-type(6)
${movie_quality_title}                  css=.quality_title

*** Keywords ***
Select an asset for video playback (Live/Reply/Movie)
    Wait Until Element Is Visible       ${menu_movies}
    Click Element                       ${menu_movies}

    Wait Until element Is Visible       ${button_movies_categories}
    Click Element                       ${button_movies_categories}

    Wait Until Element Is Visible       ${button_garsel}
    Click Element                       ${button_garsel}

#    Wait Until Element Is Visible       ${title_garselep1}
#    Click Element                       ${button_select_movies_garselep1}  29-07-20 Edited by Putra karena element berganti
    Wait Until Element Is Visible       ${title_garselep1}
    Click Element                       ${button_select_movies_garselep1}

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
    Sleep                               2
    Click Element                       ${notif_badge_inbox}
    Location Should Be                  ${URL}

Play Content From Movie Detail And Forward Progress Bar
    Wait Until Element Is Visible       ${title_movie_detail}
    sleep                               2
    Click Element                       ${movie_detail_play_button}

Play Content From Movie Detail
    Wait Until Element Is Visible       ${title_movie_detail}
    sleep                               2
    Click Element                       ${movie_detail_play_button}
    sleep                               5
    Click Element                       ${forward_movie_detail}

Verify Loading Indicator
    [Arguments]  ${EXPECTED_BUFFERING}
    Page Should Contain Element         ${EXPECTED_BUFFERING}
    sleep                               3
    Capture Element Screenshot          ${movie_detail_image_logo}

Play Content From Movie Detail And Mouse Hover To Movie
    [Arguments]     ${MOUSE_OVER_MOVIE_DETAIL}
    Wait Until Element Is Visible       ${title_movie_detail}
    sleep                               2
    Click Element                       ${movie_detail_play_button}
    sleep                               5   ${MOUSE_OVER_MOVIE_DETAIL}

Verify The progress bar and elapsed time are updating when playing a content
    Page Should Contain Element         ${movie_pause_button}
    Page Should Contain Element         ${movie_detail_duration}
    Page Should Contain Element         ${movie_progress_bar}


Play Content From Movie Detail To Change Video Quality
    Wait Until Element Is Visible       ${title_movie_detail}
    sleep                               2
    Click Element                       ${movie_detail_play_button}
    sleep                               5
    Wait Until Element Is Visible       ${movie_quality_control}
    Click Element                       ${movie_quality_control}
    Wait Until Element Is Visible       ${movie_change_quality}
    Click Element                       ${movie_quality_list_576}
    sleep                               5
    Capture Element ScreenShot          ${movie_quality_list_576}
    Wait Until Element Is Visible       ${movie_change_quality}
    Click Element                       ${movie_quality_list_270}
    Mouse Over                          ${movie_mouse_over}
    sleep                               5
    Capture Element ScreenShot          ${movie_quality_list_270}
    Wait Until Element Is Visible       ${movie_change_quality}
    Click Element                       ${movie_quality_list_360}
    Mouse Over                          ${movie_mouse_over}
    sleep                               5
    Capture Element ScreenShot          ${movie_quality_list_360}
    Wait Until Element Is Visible       ${movie_change_quality}
    Click Element                       ${movie_quality_list_720}
    Mouse Over                          ${movie_mouse_over}
    sleep                               5
    Capture Element ScreenShot          ${movie_quality_list_720}
    Wait Until Element Is Visible       ${movie_change_quality}
    Click Element                       ${movie_quality_list_auto}
    Mouse Over                          ${movie_mouse_over}
    sleep                               5
    Capture Element ScreenShot          ${movie_quality_list_auto}

Verify Change Quality
    [Arguments]  ${EXPECTED_CHANGE_QUALITY_576}     ${EXPECTED_CHANGE_QUALITY_270}      ${EXPECTED_CHANGE_QUALITY_360}      ${EXPECTED_CHANGE_QUALITY_720}      ${EXPECTED_CHANGE_QUALITY_AUTO}
    Page Should Contain Element         ${movie_change_quality}            ${EXPECTED_CHANGE_QUALITY_576}
    Page Should Contain Element         ${movie_change_quality}            ${EXPECTED_CHANGE_QUALITY_270}
    Page Should Contain Element         ${movie_change_quality}            ${EXPECTED_CHANGE_QUALITY_360}
    Page Should Contain Element         ${movie_change_quality}            ${EXPECTED_CHANGE_QUALITY_720}
    Page Should Contain Element         ${movie_change_quality}            ${EXPECTED_CHANGE_QUALITY_AUTO}
    Page Should Contain Element         ${movie_quality_title}

Verify The progress bar and elapsed time are updating when playing a content
    Wait Until Element Is Visible       ${movie_pause_button}
    Capture Element Screenshot          ${movie_pause_button}
    Wait Until Element Is Visible       ${movie_detail_duration}
    Capture Element Screenshot          ${movie_detail_duration}
    Wait Until Element Is Visible       ${movie_progress_bar}
    Capture Element Screenshot          ${movie_progress_bar}

Verify The progress bar and elapsed time are updating when playing a content
    Page Should Contain Element         ${movie_pause_button}
    Page Should Contain Element         ${movie_detail_duration}
    Page Should Contain Element         ${movie_progress_bar}


Play Content From Movie Detail To Change Video Quality
    Wait Until Element Is Visible       ${title_movie_detail}
    sleep                               2
    Click Element                       ${movie_detail_play_button}
    sleep                               5
    Wait Until Element Is Visible       ${movie_quality_control}
    Click Element                       ${movie_quality_control}
    Wait Until Element Is Visible       ${movie_change_quality}
    Click Element                       ${movie_quality_list_576}
    sleep                               5
    Wait Until Element Is Visible       ${movie_change_quality}
    Click Element                       ${movie_quality_list_270}
    sleep                               5
    Wait Until Element Is Visible       ${movie_change_quality}
    Click Element                       ${movie_quality_list_360}
    sleep                               5
    Wait Until Element Is Visible       ${movie_change_quality}
    Click Element                       ${movie_quality_list_720}
    sleep                               5
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