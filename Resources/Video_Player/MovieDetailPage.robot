*** Settings ***
Library             SeleniumLibrary
Resource            ../../Frameworks/Routers.robot

*** Variables ***
${menu_movies}                          css=a[title='Movies'] > div[title='Movies']
${button_movies_categories}             css=a:nth-of-type(1) > ._w0BR > ._1Ch51.css-tqv6h2.imageWrapper.loaded
${button_garsel}                        css=.css-1rwwe5j > div:nth-of-type(2) > div:nth-of-type(1) .css-11xe1ut.css-dzdbuq.slider > .slider-frame > .slider-list > .slide-current.slide-visible.slider-slide .css-tqv6h2.imageWrapper.loaded > .imageBorder
${title_garselep1}                      css=div:nth-of-type(1) > .css-g2tceo > .title
${button_select_movies_garselep1}       css=[class] .css-jraxs5:nth-of-type(1) .imageBorder
${login_blocker_garselep1}              link=login

${movie_detail_login_blocker}           ${login_blocker_garselep1}
${text_login_login_page}                css=._2WE07 > ._3CiJF
${field_login_email}                    id=email
${field_login_password}                 id=password
${button_login_login}                   css=.undefined
${title_movie_detail}                   css=h1
${movie_detail_play_button}             css=.css-zy8jsc
${movie_detail_image_logo}              css=img[alt='Bug-logo Player']
${notif_badge_inbox}                    css=div:nth-of-type(2) > button[role='button']
${forward_movie_detail}                 css=.css-2v9r2y.forwardIcon

${movie_detail_duration}                css=.duration
${movie_progress_bar}                   css=[class='css-1xc2rfo hide'] > .progress:nth-of-type(2)
${movie_pause_button}                   css=.css-2v9r2y.pauseIcon
${mouse_over}                           css=div#video-child > .css-q60n54

*** Keywords ***
Select an asset for video playback (Live/Reply/Movie)
    Wait Until Element Is Visible       ${menu_movies}
    Click Element                       ${menu_movies}

    Wait Until element Is Visible       ${button_movies_categories}
    Click Element                       ${button_movies_categories}

    Wait Until Element Is Visible       ${button_garsel}
    Click Element                       ${button_garsel}

    Wait Until Element Is Visible       ${title_garselep1}
    Click Element                       ${button_select_movies_garselep1}

Verify login blocker if not sign in before
    Sleep                               3
    Page Should Contain Element         ${login_blocker_garselep1}
    Capture Element Screenshot          ${title_movie_detail}

Login from movie detail
    [Arguments]  ${URL_MOVIE_DETAIL}
    Go To                               ${URL_MOVIE_DETAIL}
    Wait Until Element Is Visible       ${movie_detail_login_blocker}
    Click Element                       ${movie_detail_login_blocker}

Verify Direct To Login Page
    Wait Until Element Is Visible       ${field_login_email}
    Element Should Be Visible           ${text_login_login_page}

Login Using Credintials
    [Arguments]  ${EMAIL_PUTRA}     ${PASSWORD_PUTRA}
    Wait Until Element Is Visible       ${field_login_email}
    Input Text                          ${field_login_email}            ${EMAIL_PUTRA}
    Input Text                          ${field_login_password}         ${PASSWORD_PUTRA}
    Click Element                       ${button_login_login}

Verify Is Redirected Back To The Same Movie Detail
    [Arguments]  ${URL}
    Sleep                               2
    Click Element                       ${notif_badge_inbox}
    Location Should Be                  ${URL}


Play Content From Movie Detail
    Wait Until Element Is Visible       ${title_movie_detail}
    sleep                               2
    Click Element                       ${movie_detail_play_button}
    sleep                               2
    Mouse Over                          ${mouse_over}
    Mouse Over                          ${mouse_over}
    Mouse Over                          ${mouse_over}
    Click Element                       ${forward_movie_detail}
    Click Element                       ${forward_movie_detail}
    Click Element                       ${forward_movie_detail}

Verify Loading Indicator
    [Arguments]  ${EXPECTED_BUFFERING}
    Page Should Contain Element         ${EXPECTED_BUFFERING}
    sleep                               3
    Capture Element Screenshot          ${movie_detail_image_logo}

Verify The progress bar and elapsed time are updating when playing a content
    Wait Until Element Is Visible       ${movie_pause_button}
    Capture Element Screenshot          ${movie_pause_button}
    Wait Until Element Is Visible       ${movie_detail_duration}
    Capture Element Screenshot          ${movie_detail_duration}
    Wait Until Element Is Visible       ${movie_progress_bar}
    Capture Element Screenshot          ${movie_progress_bar}
