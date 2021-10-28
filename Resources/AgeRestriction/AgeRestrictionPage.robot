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
${EXPECTED_TEXT_TITLE_AGE_VERIFICATION_AGERESTRICTION}      Age Verification
${text_kalimat_verifikasi_umur}                             css=.zVnMA  p
${EXPECTED_TEXT_CONTENT_PROVIDED_FOR_ADULT}                 This content is only provided for adult.
${EXPECTED_TEXT_CONTENT_PROVIDED_FOR_ADULT1}                By clicking "Agree", you make sure that you are:
${text_kalimat_verifikasi_umur1}                            css=ol > li:nth-of-type(1)
${EXPECTED_TEXT_CONTENT_PROVIDED_FOR_ADULT2}                18 years old or older
${text_kalimat_verifikasi_umur2}                            css=ol > li:nth-of-type(2)
${EXPECTED_TEXT_CONTENT_PROVIDED_FOR_ADULT3}                Being legally responsible with all risk that might emerge from watching this programme.
${label_tanggal_lahir_agerestriction}                       css=label[label='date of birth']
${EXPECTED_TEXT_DOB_AGERESTRICTION}                         Please fill in your date of birth
${field_placeholder_tanggal_lahir_agerestriction}           css=._2vBjh
${label_dropdown_list_scroll_year_agerestriction}           css=.react-datepicker__year-dropdown-container.react-datepicker__year-dropdown-container--scroll
${fill_dropdown_list_scroll_year_agerestriction}            css=.react-datepicker__year-dropdown.react-datepicker__year-dropdown--scrollable > div:nth-of-type(2)
${label_dropdown_list_scroll_month_agerestriction}          css=.react-datepicker__month-dropdown-container.react-datepicker__month-dropdown-container--scroll
${fill_dropdown_list_scroll_month_agerestriction}           css=.react-datepicker__month-dropdown > div:nth-of-type(1)
${fill_dropdown_list_scroll_day_agerestriction}             css=div:nth-of-type(1) > div:nth-of-type(6)
${fill_dropdown_list_scroll_day1_agerestriction}            css=.react-datepicker__month > div:nth-of-type(1) > div:nth-of-type(4)
${fill_18+_dropdown_list_scroll_year_agerestriction}        css=.react-datepicker__year-dropdown.react-datepicker__year-dropdown--scrollable > div:nth-of-type(32)
${fill_18+_dropdown_list_scroll_month_agerestriction}       css=.react-datepicker__month-dropdown > div:nth-of-type(2)
${fill_18+_dropdown_list_scroll_day_agerestriction}         css=div:nth-of-type(5) > div:nth-of-type(4)
${button_yes_i_agree_agerestriction}                        css=._2Rh6- > .DnifC
${text_profile_successfully_update_agerestriction}          css=.XpNyZ._18lRo
${button_tutup_agerestriction}                              css=._1aJ2n
${text_purchase_subscription_agerestriction}                css=._2mt2k p
${EXPECTED_TEXT_PURCHASE_SUBSCRIPTION_AGERESTRICTION}       Purchase subscription plan to watch this programme
${button_subscribe_now_agerestriction}                      css=._33Xwm
${text_adult_content_18+_agerestriction}                    css=._21BQA.styles_modal__gNwvD h1
${EXPECTED_TEXT_ADULT_CONTENT_18+_AGERESTRICTION}           Adult Content (18+)
${sub1_text_adult_content_18+_agerestriction}               css=._21BQA.styles_modal__gNwvD p
${EXPECTED_SUB1_TEXT_ADULT_CONTENT_18+_AGERESTRICTION}      This content is only provided for adult.
${sub2_text_adult_content_18+_agerestriction}               css=._21BQA.styles_modal__gNwvD p
${EXPECTED_SUB2_TEXT_ADULT_CONTENT_18+_AGERESTRICTION}      By clicking "Agree", you make sure that you are:
${sub3_text_adult_content_18+_agerestriction}               css=._2E0sH
${EXPECTED_SUB3_TEXT_ADULT_CONTENT_18+_AGERESTRICTION}      You are not allowed to watch this age-restricted video. Let's find another content that suitable with your age.
${text_change_dob_under_18+_agerestriction}                 css=[for='birthdate']
${field_change_dob_under_18+_agerestriction}                css=.react-datepicker__input-container
${fill_change_dob_under_18+_agerestriction}                 css=.css-kba4ly.react-datepicker-popper
${text_continue_watching_agerestriction}                    css=div:nth-of-type(1) > .css-5jjjwv.css-ikrxqq > div > h3
${view_all_continue_watching}                               css=div:nth-of-type(1) > .css-5jjjwv.css-ikrxqq > a
${text_title_view_all_continue_watching}                    xpath=//p[contains(text(),'BIG WEDDING')]
${movie_button_play_hbo}                                    xpath=/html//div[@id='video-player-root']//div[@class='_2zwq4']
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
    Mouse Over                                      ${movie_mouse_over}
    Wait Until Element Is Visible                   ${button_login_to_watch_movie_detail_page}
    Click Element                                   ${button_login_to_watch_movie_detail_page}

Select 18+ Movie Content HBO
    [Arguments]                                     ${URL_MOVIE_DETAIL_18+_HBO}
    Sleep                                           1
    Go To                                           ${URL_MOVIE_DETAIL_18+_HBO}
    Wait Until Element Is Visible                   ${button_videos_player_login_to_watch_after_trailer}
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

Verify Show Age Blocker 3 18+ Button "X" HBO
    [Arguments]                                     ${URL_MOVIE_DETAIL_18+_HBO}
    Sleep                                           1
    Go To                                           ${URL_MOVIE_DETAIL_18+_HBO}
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
    [Arguments]                                     ${URL_MOVIE_DETAIL_18+_HBO}
    Sleep                                           5
    Wait Until Element Is Visible                   ${text_purchase_subscription_agerestriction}
    Element Should Be Visible                       ${text_purchase_subscription_agerestriction}
    Element Should Contain                          ${text_purchase_subscription_agerestriction}             ${EXPECTED_TEXT_PURCHASE_SUBSCRIPTION_AGERESTRICTION}
    Wait Until Element Is Visible                   ${button_subscribe_now_agerestriction}
    Element Should Be Visible                       ${button_subscribe_now_agerestriction}
    Click Element                                   ${button_subscribe_now_agerestriction}

Verify Show Age blocker "CLOSE or TUTUP" button
    [Arguments]                                     ${URL_MOVIE_DETAIL_18+_MOLA}
    Sleep                                           1
    Go To                                           ${URL_MOVIE_DETAIL_18+_MOLA}
    Sleep                                           5
    Wait Until Page Contains Element                ${frame_konten_dewasa_agerestriction}
    Element Should Be Visible                       ${frame_konten_dewasa_agerestriction}
    Wait Until Element Is Visible                   ${text_adult_content_18+_agerestriction}
    Element Should Contain                          ${text_adult_content_18+_agerestriction}             ${EXPECTED_TEXT_ADULT_CONTENT_18+_AGERESTRICTION}
    Wait Until Element Is Visible                   ${sub3_text_adult_content_18+_agerestriction}
    Element Should Contain                          ${sub3_text_adult_content_18+_agerestriction}             ${EXPECTED_SUB3_TEXT_ADULT_CONTENT_18+_AGERESTRICTION}
    Element Should Be Visible                       ${button_agree_adult_content}
    Click Element                                   ${button_agree_adult_content}
    Reload Page
    Wait Until Element Is Visible                   ${button_play_cannot_action}
    Element Should Be Visible                       ${button_close_x_adult_content}
    Click Element                                   ${button_close_x_adult_content}

Can't Play Button
    Page Should Contain Element                     ${button_play_cannot_action}
    Wait Until Element Is Visible                   ${button_play_cannot_action}
    Click Element                                   ${button_play_cannot_action}
    Wait Until Page Contains Element                ${frame_konten_dewasa_agerestriction}
    Element Should Be Visible                       ${frame_konten_dewasa_agerestriction}
    Wait Until Element Is Visible                   ${text_adult_content_18+_agerestriction}
    Element Should Contain                          ${text_adult_content_18+_agerestriction}             ${EXPECTED_TEXT_ADULT_CONTENT_18+_AGERESTRICTION}
    Wait Until Element Is Visible                   ${sub3_text_adult_content_18+_agerestriction}
    Element Should Contain                          ${sub3_text_adult_content_18+_agerestriction}             ${EXPECTED_SUB3_TEXT_ADULT_CONTENT_18+_AGERESTRICTION}
    Element Should Be Visible                       ${button_agree_adult_content}
    Click Element                                   ${button_agree_adult_content}
    Reload Page
    Wait Until Element Is Visible                   ${button_play_cannot_action}
    Element Should Be Visible                       ${button_close_x_adult_content}
    Click Element                                   ${button_close_x_adult_content}

Using Account Didn't Have DOB
    [Arguments]                                     ${URL_MOVIE_DETAIL_18+}
    Go To                                           ${URL_MOVIE_DETAIL_18+}
    Wait Until Page Contains Element                ${frame_konten_dewasa_agerestriction}
    Element Should Be Visible                       ${frame_konten_dewasa_agerestriction}
    Wait Until Element Is Visible                   ${text_verifikasi_umur_agerestriction}
    Page Should Contain Element                     ${text_verifikasi_umur_agerestriction}
#    Capture Element Screenshot                      ${text_verifikasi_umur_agerestriction}
    Element Should Contain                          ${text_verifikasi_umur_agerestriction}      ${EXPECTED_TEXT_TITLE_AGE_VERIFICATION_AGERESTRICTION}
    Wait Until Element Is Visible                   ${text_kalimat_verifikasi_umur}
    Page Should Contain Element                     ${text_kalimat_verifikasi_umur}
    Capture Element Screenshot                      ${text_kalimat_verifikasi_umur}
    Element Should Contain                          ${text_kalimat_verifikasi_umur}     ${EXPECTED_TEXT_CONTENT_PROVIDED_FOR_ADULT}
    Element Should Contain                          ${text_kalimat_verifikasi_umur}     ${EXPECTED_TEXT_CONTENT_PROVIDED_FOR_ADULT1}
    Element Should Contain                          ${text_kalimat_verifikasi_umur1}    ${EXPECTED_TEXT_CONTENT_PROVIDED_FOR_ADULT2}
    Element Should Contain                          ${text_kalimat_verifikasi_umur2}    ${EXPECTED_TEXT_CONTENT_PROVIDED_FOR_ADULT3}

Verify Show Age blocker DOB
    Wait Until Element Is Visible                   ${label_tanggal_lahir_agerestriction}
    Page Should Contain Element                     ${label_tanggal_lahir_agerestriction}
    Element Should Contain                          ${label_tanggal_lahir_agerestriction}       ${EXPECTED_TEXT_DOB_AGERESTRICTION}
    Wait Until Element Is Visible                   ${field_placeholder_tanggal_lahir_agerestriction}


Select Age Under 18 Years
    Wait Until Element Is Visible                   ${field_placeholder_tanggal_lahir_agerestriction}
    Click Element                                   ${field_placeholder_tanggal_lahir_agerestriction}
    Click Element                                   ${label_dropdown_list_scroll_year_agerestriction}
    Click Element                                   ${fill_dropdown_list_scroll_year_agerestriction}
    Click Element                                   ${label_dropdown_list_scroll_month_agerestriction}
    Click Element                                   ${fill_dropdown_list_scroll_month_agerestriction}
    Click Element                                   ${fill_dropdown_list_scroll_day_agerestriction}

Select Age Over 18 Years
    Wait Until Element Is Visible                   ${field_placeholder_tanggal_lahir_agerestriction}
    Click Element                                   ${field_placeholder_tanggal_lahir_agerestriction}
    Click Element                                   ${label_dropdown_list_scroll_year_agerestriction}
    Click Element                                   ${fill_18+_dropdown_list_scroll_year_agerestriction}
    Click Element                                   ${label_dropdown_list_scroll_month_agerestriction}
    Click Element                                   ${fill_18+_dropdown_list_scroll_month_agerestriction}
    Click Element                                   ${fill_18+_dropdown_list_scroll_day_agerestriction}

Click Button Yes, I Agree
    Wait Until Element Is Visible                   ${button_yes_i_agree_agerestriction}
    Page Should Contain Element                     ${button_yes_i_agree_agerestriction}
    Element Should Be Visible                       ${button_yes_i_agree_agerestriction}
    Click Element                                   ${button_yes_i_agree_agerestriction}

Verify Profile Update
    Wait Until Element Is Visible                   ${text_profile_successfully_update_agerestriction}
#    Page Should Contain Element                     ${text_profile_successfully_update_agerestriction}
#    Capture Page Screenshot                         ${text_profile_successfully_update_agerestriction}
    Element Should Contain                          ${text_profile_successfully_update_agerestriction}      Profile successfully update

Click Button Close
    Wait Until Element Is Visible                   ${button_tutup_agerestriction}
    Page Should Contain Element                     ${button_tutup_agerestriction}
    Click Element                                   ${button_tutup_agerestriction}

Click Button Close 'X'
    Wait Until Element Is Visible                   ${button_close_x_adult_content}
    Page Should Contain Element                     ${button_close_x_adult_content}
    Click Element                                   ${button_close_x_adult_content}

Edit Profile DOB Under 18+
    Element Should Be Visible                       ${text_change_dob_under_18+_agerestriction}
    Element Should Contain                          ${text_change_dob_under_18+_agerestriction}     Date of Birth (Opt.)
    Wait Until Element Is Visible                   ${field_change_dob_under_18+_agerestriction}
    Page Should Contain Element                     ${field_change_dob_under_18+_agerestriction}
    Click Element                                   ${field_change_dob_under_18+_agerestriction}

Selection Change DOB Under 18+
    Wait Until Element Is Visible                   ${fill_change_dob_under_18+_agerestriction}
    Click Element                                   ${label_dropdown_list_scroll_year_agerestriction}
    Click Element                                   ${fill_dropdown_list_scroll_year_agerestriction}
    Click Element                                   ${label_dropdown_list_scroll_month_agerestriction}
    Click Element                                   ${fill_dropdown_list_scroll_month_agerestriction}
    Click Element                                   ${fill_dropdown_list_scroll_day1_agerestriction}

Verify View All Continue Watching
    Sleep                                           30
    Wait Until Page Contains Element                ${text_continue_watching_agerestriction}
    Wait Until Element Is Visible                   ${text_continue_watching_agerestriction}
    Element Should Be Visible                       ${text_continue_watching_agerestriction}
    Scroll To Element                               ${text_continue_watching_agerestriction}

Click View All Continue Watching
    Sleep                                           30
    Wait Until Page Contains Element                ${view_all_continue_watching}
    Wait Until Element Is Visible                   ${view_all_continue_watching}
    Element Should Be Visible                       ${view_all_continue_watching}
    Scroll To Element                               ${view_all_continue_watching}
    Click Element                                   ${view_all_continue_watching}

Verify View All Continue Watching List
    Sleep                                           30
    Wait Until Element Is Visible                   ${text_title_view_all_continue_watching}
    Wait Until Page Contains Element                ${text_title_view_all_continue_watching}
    Page Should Contain Element                     ${text_title_view_all_continue_watching}
    Element Should Be Visible                       ${text_title_view_all_continue_watching}
    Click Element                                   ${text_title_view_all_continue_watching}

Play HBO Movies Age Restriction
    Sleep                                           30
    Wait Until Element Is Visible                   ${movie_button_play_hbo}
    Click Element                                   ${movie_button_play_hbo}
    Sleep                                           10
    Sleep                                           10

Verify Age Blocker 18+ With Click Element
    Wait Until Element Is Visible                   ${frame_ageblocker}
    Element Should Be Visible                       ${contents_ageblocker}
    Element Should Be Visible                       ${button_agree_ageblocker}
    Click Element                                   ${button_agree_ageblocker}