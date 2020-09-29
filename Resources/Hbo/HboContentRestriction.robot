#Note :
#This testcase Postpone Because don't have account to automated it

*** Settings ***
Library             SeleniumLibrary
Resource            ../../Frameworks/Routers.robot

*** Variables ***
${hbo_movie_detail_title}                   css=.css-1xusmkr
${hbo_movie_detail}                         css=video
${hbo_select_frame_movie_detail_21+}        id=017814X0_iframe
${hbo_select_frame_movie_detail_Non21+}     id=023075X0_iframe
${mouse_hover_movie}                        css=video
${hbo_movie_button_play}                    css=.control_buttons_play

*** Keywords ***
Verify Title Movie
    Wait Until Element Is Visible       ${hbo_movie_detail_title}
    Page Should Contain Element         ${hbo_movie_detail_title}
    Capture Element Screenshot          ${hbo_movie_detail_title}

Play Hbo Content 21+
    Select Frame                        ${hbo_select_frame_movie_detail_21+}
    Sleep                               10
    Click Element                       ${hbo_movie_button_play}
    Sleep                               5
    Sleep                               3

Play Hbo Content Non 21+
    Select Frame                        ${hbo_select_frame_movie_detail_Non21+}
    Sleep                               10
    Click Element                       ${hbo_movie_button_play}
    Sleep                               5
    Sleep                               3