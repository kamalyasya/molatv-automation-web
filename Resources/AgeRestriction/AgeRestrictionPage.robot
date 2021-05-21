*** Settings ***
Resource            ../../Frameworks/Routers.robot

*** Variables ***
${text_login_movie}                                         css=.css-1atyaon a
${frame_konten_dewasa_agerestriction}                       css=._21BQA.styles_modal__gNwvD
${frame_kalimat_konten_dewasa_agerestriction}               css=._27W52 > p
${button_setuju_tutup_konten_dewasa}                        css=._1aJ2n
${button_agree_close_adult_content}                         css=._1aJ2n
${button_agree_adult_content}                               css=._2Rh6- [type]
${button_close_x_adult_content}                             css=._2MwRG
${button_watch_now_movie_18+}                               css=.css-usqan1 > div:nth-of-type(1) ._33Xwm
${text_lanjutkan_menonton_agerestriction}                   css=.gJE3n p
${button_mulai_dari_awal_agerestriction}                    css=._3QaU2
${button_play_cannot_action}                                css=._2zwq4
${text_verifikasi_umur_agerestriction}                      css=.zVnMA h1
${text_kalimat_verifikasi_umur}                             css=.zVnMA  p
${label_tanggal_lahir_agerestriction}                       css=label[label='date of birth']
${field_placeholder_tanggal_lahir_agerestriction}           css=._2vBjh
${button_tutup_agerestriction}                              css=._1aJ2n
${button_subscribe_now_agerestriction}                      css=._33Xwm
${text_adult_content_18+_agerestriction}                    css=._21BQA.styles_modal__gNwvD h1
${EXPECTED_TEXT_ADULT_CONTENT_18+_AGERESTRICTION}           Adult Content (18+)
${sub1_text_adult_content_18+_agerestriction}               css=._21BQA.styles_modal__gNwvD p
${EXPECTED_SUB1_TEXT_ADULT_CONTENT_18+_AGERESTRICTION}      This content is only provided for adult.
${sub2_text_adult_content_18+_agerestriction}               css=._21BQA.styles_modal__gNwvD p
${EXPECTED_SUB2_TEXT_ADULT_CONTENT_18+_AGERESTRICTION}      By clicking "Agree", you make sure that you are:

*** Keywords ***
Select 18+ Movie Content
    [Arguments]                                     ${URL_MOVIE_DETAIL_18+_MOLA}
    Sleep                                           1
    Go To                                           ${URL_MOVIE_DETAIL_18+_MOLA}
    Wait Until Element Is Visible                   ${button_login_to_watch_movie_detail_page}
    Mouse Over                                      ${movie_mouse_over}
    Page Should Contain Element                     ${button_login_to_watch_movie_detail_page}
    Capture Element Screenshot                      ${button_login_to_watch_movie_detail_page}
    Sleep                                           1
    Wait Until Element Is Visible                   ${button_login_to_watch_movie_detail_page}
    Click Element                                   ${button_login_to_watch_movie_detail_page}

Select 18+ Movie Content HBO
    [Arguments]                                     ${URL_MOVIE_DETAIL_18+_HBO}
    Sleep                                           1
    Go To                                           ${URL_MOVIE_DETAIL_18+_HBO}
    Wait Until Element Is Visible                   ${button_videos_player_login_to_watch_after_trailer}
#    Mouse Over                                      ${movie_mouse_over}
    Page Should Contain Element                     ${button_videos_player_login_to_watch_after_trailer}
    Capture Element Screenshot                      ${button_videos_player_login_to_watch_after_trailer}
    Sleep                                           1
    Wait Until Element Is Visible                   ${button_videos_player_login_to_watch_after_trailer}
    Click Element                                   ${button_videos_player_login_to_watch_after_trailer}

Verify Show Age Blocker 1 Hbo
    Wait Until Page Contains Element                ${frame_konten_dewasa_agerestriction}
    Element Should Be Visible                       ${frame_konten_dewasa_agerestriction}
    Wait Until Page Contains Element                ${frame_kalimat_konten_dewasa_agerestriction}
    Element Should Be Visible                       ${frame_kalimat_konten_dewasa_agerestriction}
#    >> tambah text yang ada di dalam Frame Ini = This content is only provided for adult. By clicking "Agree", you make sure that you are:  18 years old or older     Being legally responsible with all risk that might emerge from watching this programme.
    Wait Until Element Is Visible                   ${button_setuju_tutup_konten_dewasa}
    Click Element                                   ${button_setuju_tutup_konten_dewasa}

Verify Show Age Blocker 2 18+
    Wait Until Page Contains Element                ${frame_konten_dewasa_agerestriction}
    Element Should Be Visible                       ${frame_konten_dewasa_agerestriction}
    Wait Until Page Contains Element                ${frame_kalimat_konten_dewasa_agerestriction}
    Element Should Be Visible                       ${frame_kalimat_konten_dewasa_agerestriction}
    Wait Until Element Is Visible                   ${button_agree_close_adult_content}
    Click Element                                   ${button_agree_close_adult_content}

Verify Show Age Blocker 3 18+
    [Arguments]                                     ${URL_MOVIE_DETAIL_18+_MOLA}
    Sleep                                           1
    Go To                                           ${URL_MOVIE_DETAIL_18+_MOLA}
    Wait Until Page Contains Element                ${frame_konten_dewasa_agerestriction}
    Element Should Be Visible                       ${frame_konten_dewasa_agerestriction}
    Wait Until Page Contains Element                ${frame_kalimat_konten_dewasa_agerestriction}
    Element Should Be Visible                       ${frame_kalimat_konten_dewasa_agerestriction}
    Wait Until Element Is Visible                   ${text_adult_content_18+_agerestriction}
    Element Should Contain                          ${text_adult_content_18+_agerestriction}             ${EXPECTED_TEXT_ADULT_CONTENT_18+_AGERESTRICTION}
    Wait Until Element Is Visible                   ${sub1_text_adult_content_18+_agerestriction}
    Element Should Contain                          ${sub1_text_adult_content_18+_agerestriction}             ${EXPECTED_SUB1_TEXT_ADULT_CONTENT_18+_AGERESTRICTION}
    Wait Until Element Is Visible                   ${sub2_text_adult_content_18+_agerestriction}
    Element Should Contain                          ${sub2_text_adult_content_18+_agerestriction}             ${EXPECTED_SUB2_TEXT_ADULT_CONTENT_18+_AGERESTRICTION}
    Wait Until Element Is Visible                   ${button_agree_adult_content}
    Click Element                                   ${button_agree_adult_content}

Verify Show Age Blocker 3 18+ Button "X"
    [Arguments]                                     ${URL_MOVIE_DETAIL_18+_MOLA}
    Sleep                                           1
    Go To                                           ${URL_MOVIE_DETAIL_18+_MOLA}
    Wait Until Page Contains Element                ${frame_konten_dewasa_agerestriction}
    Element Should Be Visible                       ${frame_konten_dewasa_agerestriction}
    Wait Until Page Contains Element                ${frame_kalimat_konten_dewasa_agerestriction}
    Element Should Be Visible                       ${frame_kalimat_konten_dewasa_agerestriction}
    Wait Until Element Is Visible                   ${text_adult_content_18+_agerestriction}
    Element Should Contain                          ${text_adult_content_18+_agerestriction}             ${EXPECTED_TEXT_ADULT_CONTENT_18+_AGERESTRICTION}
    Wait Until Element Is Visible                   ${sub1_text_adult_content_18+_agerestriction}
    Element Should Contain                          ${sub1_text_adult_content_18+_agerestriction}             ${EXPECTED_SUB1_TEXT_ADULT_CONTENT_18+_AGERESTRICTION}
    Wait Until Element Is Visible                   ${sub2_text_adult_content_18+_agerestriction}
    Element Should Contain                          ${sub2_text_adult_content_18+_agerestriction}             ${EXPECTED_SUB2_TEXT_ADULT_CONTENT_18+_AGERESTRICTION}
    Wait Until Element Is Visible                   ${button_close_x_adult_content}
    Click Element                                   ${button_close_x_adult_content}

Verify Show Age Blocker 4 18+ Button "X"
    Wait Until Page Contains Element                ${frame_konten_dewasa_agerestriction}
    Element Should Be Visible                       ${frame_konten_dewasa_agerestriction}
    Wait Until Page Contains Element                ${frame_kalimat_konten_dewasa_agerestriction}
    Element Should Be Visible                       ${frame_kalimat_konten_dewasa_agerestriction}
    Wait Until Element Is Visible                   ${text_adult_content_18+_agerestriction}
    Element Should Contain                          ${text_adult_content_18+_agerestriction}             ${EXPECTED_TEXT_ADULT_CONTENT_18+_AGERESTRICTION}
    Wait Until Element Is Visible                   ${sub1_text_adult_content_18+_agerestriction}
    Element Should Contain                          ${sub1_text_adult_content_18+_agerestriction}             ${EXPECTED_SUB1_TEXT_ADULT_CONTENT_18+_AGERESTRICTION}
    Wait Until Element Is Visible                   ${sub2_text_adult_content_18+_agerestriction}
    Element Should Contain                          ${sub2_text_adult_content_18+_agerestriction}             ${EXPECTED_SUB2_TEXT_ADULT_CONTENT_18+_AGERESTRICTION}
    Element Should Be Visible                       ${button_close_x_adult_content}
    Element Should Be Visible                       ${button_agree_adult_content}

Select NON18+ Movie Content
    [Arguments]                                     ${URL_MOVIE_DETAIL_NON18+}
    Sleep                                           2
    Go To                                           ${URL_MOVIE_DETAIL_NON18+}
    Reload Page
    Sleep                                           2

Verify Movie Detail
    [Arguments]  ${EXPECTED_URL_MOVIE_DETAIL_NON18+}
    Sleep                                           5
    Location Should Be                              ${EXPECTED_URL_MOVIE_DETAIL_NON18+}
    Sleep                                           5
    Wait Until Element Is Visible                   ${button_watch_now_movie_18+}
    Click Element                                   ${button_watch_now_movie_18+}
    Wait Until Element Is Visible                   ${text_lanjutkan_menonton_agerestriction}
    Page Should Contain Element                     ${text_lanjutkan_menonton_agerestriction}
    wait until element is visible                   ${button_mulai_dari_awal_agerestriction}
    Click Element                                   ${button_mulai_dari_awal_agerestriction}
    Sleep                                           10

Play Content Movie
    Page Should Contain Element                     ${movie_button_play}
    Wait Until Element Is Visible                   ${movie_button_play}
    Element Should Be Focused                       ${movie_button_play}
    Click Element                                   ${movie_button_play}
    Sleep                                           5

Verify Using Under 18+ Account
    Wait Until Element Is Visible                   ${button_subscribe_now_agerestriction}
    Element Should Be Visible                       ${button_subscribe_now_agerestriction}
    Click Element                                   ${button_subscribe_now_agerestriction}

Verify Show Age blocker "CLOSE or TUTUP" button
    [Arguments]                                     ${URL_MOVIE_DETAIL_18+_MOLA}
    Sleep                                           1
    Go To                                           ${URL_MOVIE_DETAIL_18+_MOLA}
    Sleep                                           10
    Wait Until Page Contains Element                ${frame_konten_dewasa_agerestriction}
    Element Should Be Visible                       ${frame_konten_dewasa_agerestriction}
    Sleep                                           1
    Click Element                                   ${button_agree_adult_content}

Can't Play Button
    Page Should Contain Element                     ${button_play_cannot_action}
    Wait Until Element Is Visible                   ${button_play_cannot_action}
    Click Element                                   ${button_play_cannot_action}
    Verify Show Age blocker "CLOSE or TUTUP" button

using account didn't have DOB
    [Arguments]                                     ${URL_MOVIE_DETAIL_18+}
    Go To                                           ${URL_MOVIE_DETAIL_18+}
    Wait Until Element Is Visible                   ${text_verifikasi_umur_agerestriction}
    Page Should Contain Element                     ${text_verifikasi_umur_agerestriction}
    Capture Element Screenshot                      ${text_verifikasi_umur_agerestriction}
    Wait Until Element Is Visible                   ${text_kalimat_verifikasi_umur}
    Page Should Contain Element                     ${text_kalimat_verifikasi_umur}
    Capture Element Screenshot                      ${text_kalimat_verifikasi_umur}

Verify Show Age blocker DOB
    Wait Until Element Is Visible                   ${label_tanggal_lahir_agerestriction}
    Page Should Contain Element                     ${label_tanggal_lahir_agerestriction}
    Wait Until Element Is Visible                   ${field_placeholder_tanggal_lahir_agerestriction}
    Click Element                                   ${field_placeholder_tanggal_lahir_agerestriction}

Click Button Tutup
    Wait Until Element Is Visible                   ${button_tutup_agerestriction}
    Page Should Contain Element                     ${button_tutup_agerestriction}
    Click Element                                   ${button_tutup_agerestriction}

Verify Age Blocker 18+ With Click Element
    Wait Until Element Is Visible       ${frame_ageblocker}
    Element Should Be Visible           ${contents_ageblocker}
    Element Should Be Visible           ${button_agree_ageblocker}
    Click Element                       ${button_agree_ageblocker}