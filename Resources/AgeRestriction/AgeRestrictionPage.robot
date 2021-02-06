*** Settings ***
Library             SeleniumLibrary
Resource            ../../Frameworks/Routers.robot

*** Variables ***
${text_login_movie}                                 css=.css-1atyaon a
${frame_konten_dewasa_agerestriction}               css=._1dvQ5.undefined > ._21BQA.styles_modal__gNwvD
${frame_kalimat_konten_dewasa_agerestriction}       css=._27W52 > p
${button_setuju_tutup_konten_dewasa}                css=._3UpwF
${button_watch_now_movie_18+}                       css=.css-usqan1 > div:nth-of-type(1) ._33Xwm
${text_lanjutkan_menonton_agerestriction}           css=.gJE3n p
${button_mulai_dari_awal_agerestriction}            css=._3QaU2
${button_play_cannot_action}                        css=._2zwq4
${text_verifikasi_umur_agerestriction}              css=.zVnMA h1
${text_kalimat_verifikasi_umur}                     css=.zVnMA  p
${label_tanggal_lahir_agerestriction}               css=label[label='Tanggal Lahir']
${field_placeholder_tanggal_lahir_agerestriction}   css=._2vBjh
${button_tutup_agerestriction}                      css=._1aJ2n

${button_subscribe_now_agerestriction}              css=._33Xwm

*** Keywords ***
Select 18+ Movie Content
    [Arguments]                             ${URL_MOVIE_DETAIL_18+}
    Sleep                                   1
    Go To                                   ${URL_MOVIE_DETAIL_18+}
    Wait Until Element Is Visible           ${login_blocker_garselep1}
    Page Should Contain Element             ${login_blocker_garselep1}
    Capture Element Screenshot              ${login_blocker_garselep1}
    Sleep                                   1
    Wait Until Element Is Visible           ${login_blocker_garselep1}
    Click Element                           ${login_blocker_garselep1}

Verify Show Age blocker
    Wait Until Page Contains Element        ${frame_konten_dewasa_agerestriction}
    Element Should Be Visible               ${frame_konten_dewasa_agerestriction}
    Wait Until Page Contains Element        ${frame_kalimat_konten_dewasa_agerestriction}
    Element Should Be Visible               ${frame_kalimat_konten_dewasa_agerestriction}
    Click Element                           ${button_setuju_tutup_konten_dewasa}

Select NON18+ Movie Content
    [Arguments]                             ${URL_MOVIE_DETAIL_NON18+}
    Sleep                                   2
    Go To                                   ${URL_MOVIE_DETAIL_NON18+}
    Sleep                                   2

Verify Movie Detail
    [Arguments]  ${EXPECTED_URL_MOVIE_DETAIL_NON18+}
    Sleep                               5
    Location Should Be                  ${EXPECTED_URL_MOVIE_DETAIL_NON18+}
    Sleep                               5
    Wait Until Element Is Visible       ${button_watch_now_movie_18+}
    Click Element                       ${button_watch_now_movie_18+}
    Wait Until Element Is Visible       ${text_lanjutkan_menonton_agerestriction}
    Page Should Contain Element         ${text_lanjutkan_menonton_agerestriction}
    wait until element is visible       ${button_mulai_dari_awal_agerestriction}
    Click Element                       ${button_mulai_dari_awal_agerestriction}
    Sleep                               10

Play Content Movie
    Page Should Contain Element             ${movie_button_play}
    Wait Until Element Is Visible           ${movie_button_play}
    Element Should Be Focused               ${movie_button_play}
    Click Element                           ${movie_button_play}
    Sleep                                   5

Verify Using Under 18+ Account
    Wait Until Element Is Visible           ${button_subscribe_now_agerestriction}
    Element Should Be Visible               ${button_subscribe_now_agerestriction}
    Click Element                           ${button_subscribe_now_agerestriction}

#Verify Show Age blocker "CLOSE or TUTUP" button
#    Sleep                                   10
#    Wait Until Page Contains Element        ${frame_konten_dewasa_agerestriction}
#    Element Should Be Visible               ${frame_konten_dewasa_agerestriction}
#    Sleep                                   1
#    Click Element                           ${button_setuju_tutup_konten_dewasa}
#
#Can't Play Button
#    Page Should Contain Element             ${button_play_cannot_action}
#    Wait Until Element Is Visible           ${button_play_cannot_action}
#    Click Element                           ${button_play_cannot_action}
#    Verify Show Age blocker "CLOSE or TUTUP" button

using account didn't have DOB
    [Arguments]                             ${URL_MOVIE_DETAIL_18+}
    Go To                                   ${URL_MOVIE_DETAIL_18+}
    Wait Until Element Is Visible           ${text_verifikasi_umur_agerestriction}
    Page Should Contain Element             ${text_verifikasi_umur_agerestriction}
    Capture Element Screenshot              ${text_verifikasi_umur_agerestriction}
    Wait Until Element Is Visible           ${text_kalimat_verifikasi_umur}
    Page Should Contain Element             ${text_kalimat_verifikasi_umur}
    Capture Element Screenshot              ${text_kalimat_verifikasi_umur}

Verify Show Age blocker DOB
    Wait Until Element Is Visible           ${label_tanggal_lahir_agerestriction}
    Page Should Contain Element             ${label_tanggal_lahir_agerestriction}
    Wait Until Element Is Visible           ${field_placeholder_tanggal_lahir_agerestriction}
    Click Element                           ${field_placeholder_tanggal_lahir_agerestriction}

Click Button Tutup
    Wait Until Element Is Visible           ${button_tutup_agerestriction}
    Page Should Contain Element             ${button_tutup_agerestriction}
    Click Element                           ${button_tutup_agerestriction}
