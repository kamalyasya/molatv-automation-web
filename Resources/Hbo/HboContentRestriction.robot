#Note :
#This testcase Postpone Because don't have account to automated it

*** Settings ***
Library             SeleniumLibrary
Resource            ../../Frameworks/Routers.robot

*** Variables ***
${hbo_movie_detail_title}                   css=h1
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
    Wait Until Element Is Visible       ${hbo_movie_button_play}
    Click Element                       ${hbo_movie_button_play}
    Sleep                               10

Play Hbo Content Non 21+
    Select Frame                        ${hbo_select_frame_movie_detail_Non21+}
    Wait Until Element Is Visible       ${hbo_movie_button_play}
    Click Element                       ${hbo_movie_button_play}
    Sleep                               10

Play Hbo Content
    Wait Until Element Is Visible       ${hbo_movie_detail_title}
    Sleep                               10
    # Get VIDEOID
    ${VIDEO_ID}                         Get Location
    ${VIDEO_ID}                         Remove String Using Regexp      ${VIDEO_ID}           ^.*?(?=HBO)
    ${VIDEO_ID}                         Remove String                   ${VIDEO_ID}           HBO
    ${FRAME_ID}                         Catenate    ${VIDEO_ID}_iframe
    Select Frame                        ${FRAME_ID}
    Wait Until Element Is Visible       ${hbo_movie_button_play}
    Click Element                       ${hbo_movie_button_play}
    Sleep                               10
    ${CHECK_LIMIT}                      Run Keyword And Return Status               Wait Until Element Is Visible       ${frame_movie_detail_device_limit}        10
    Run Keyword If                      '${CHECK_LIMIT}'=='True'        Play Again Hbo Content
    Sleep                               5

Play Again Hbo Content
    Sleep                               10
    Reload Page
    Play Hbo Content