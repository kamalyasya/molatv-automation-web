*** Settings ***
Library         	    SeleniumLibrary
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${frame_inbox_filter_perkategori_onboarding}        css=.__floater__body
${text_inbox_title_filter_perkategori_onboarding}   css=._2u2aj
${text_inbox_content_filter_perkategori_onboarding}  css=._1fO2X
${button_inbox_skip_filter_perkategori_onboarding}  id=skip
${button_inbox_next_filter_perkategori_onboarding}  id=next
${frame_inbox_sort_by_onboarding}                   css=.__floater__body
${text_inbox_title_sort_by_onboarding}              css=._2u2aj
${text_inbox_content_sort_by_onboarding}            css=._1fO2X
${button_inbox_skip_sort_by_onboarding}             id=skip
${button_inbox_back_sort_by_onboarding}             id=back
${button_inbox_next_sort_by_onboarding}             id=next
${frame_inbox_daftar_pesan_onboarding}              css=.__floater__body
${text_inbox_title_daftar_pesan_onboarding}         css=._2u2aj
${text_inbox_content_daftar_pesan_onboarding}       css=._1fO2X
${button_inbox_skip_daftar_pesan_onboarding}        id=skip
${button_inbox_back_daftar_pesan_onboarding}        id=back
${button_inbox_finish_daftar_pesan_onboarding}      id=next
${frame_inbox_onboarding}                           css=.__floater__body
${button_inbox_back_onboarding}                     id=back

${text_inbox_count_number}                          css=.hhKCp .count-number
${button_inbox_filter_all}                          css=.categoryTour > button:nth-of-type(1)
${button_inbox_filter_promotion}                    xpath=//button[contains(text(),'Promotions')]
${button_inbox_filter_messages}                     xpath=//button[contains(text(),'Messages')]
${button_inbox_filter_selected}                     xpath=//html//div[@id='app']/div[@class='_3e0P_']/div[@class='_2_fH- children__container']//div[@class='_3OoG5']/div[@class='_1KqoD']//div[@class='categoryTour']/button[@class="active"]
${dropdown_inbox_sort}                              css=.css-1t0aoax
${dropdown_inbox_sort_latest}                       xpath=//button[contains(text(),'Latest')]
${dropdown_inbox_sort_oldest}                       xpath=//button[contains(text(),'Oldest')]
${dropdown_inbox_sort_active}                       xpath=//button[@class="active" and (text()='Oldest' or text()='Latest')]
${frame_inbox_list_shimmering_loading}              css=.placeholderContainer
${text_inbox_list_date_time_inbox}                  css=.cardTour > a  small
${text_inbox_list_title_inbox}                      css=.cardTour > a  h3
${text_inbox_list_content_inbox}                    css=.cardTour > a  p
${image_inbox_image_empty_message}                  css=.emptyImage
${text_inbox_title_empty_message}                   css=.title
${text_inbox_text_empty_message}                    css=.text
${button_inbox_muat_lebih}                          css=.button_load_more
${text_inbox_date_last_message}                     css=div:nth-of-type(12) > a  small
${button_inbox_detail_back}                         css=.inbox__back_button
${text_inbox_detail_title_message}                  css=.inbox__title
${text_inbox_detail_content_message}                css=.inbox__description

${EXPECTED_TEXT_TITLE_FILTER_KATEGORI_ONBOARDING}   Filter per Kategori
${EXPECTED_TEXT_TITLE_SORT_BY_ONBOARDING}           Sort By
${EXPECTED_TEXT_TITLE_DAFTAR_PESAN_ONBOARDING}      Daftar Pesan

*** Keywords ***
Click Next Button On Inbox Filter Per Kategori Onboarding
    Sleep                                           1
    Wait Until Element Contains                     ${text_inbox_title_filter_perkategori_onboarding}           ${EXPECTED_TEXT_TITLE_FILTER_KATEGORI_ONBOARDING}
    Wait Until Element Is Visible                   ${frame_inbox_filter_perkategori_onboarding}
    Element Should Be Visible                       ${frame_inbox_filter_perkategori_onboarding}
    Element Should Be Visible                       ${button_inbox_skip_filter_perkategori_onboarding}
    Element Should Be Visible                       ${button_inbox_next_filter_perkategori_onboarding}
    Click Element                                   ${button_inbox_next_filter_perkategori_onboarding}

Click Next Button On Inbox Sort By Onboarding
    Sleep                                           1
    Wait Until Element Contains                     ${text_inbox_title_sort_by_onboarding}                      ${EXPECTED_TEXT_TITLE_SORT_BY_ONBOARDING}
    Wait Until Element Is Visible                   ${frame_inbox_sort_by_onboarding}
    Element Should Be Visible                       ${frame_inbox_sort_by_onboarding}
    Element Should Be Visible                       ${button_inbox_skip_sort_by_onboarding}
    Element Should Be Visible                       ${button_inbox_back_sort_by_onboarding}
    Element Should Be Visible                       ${button_inbox_next_sort_by_onboarding}
    Click Element                                   ${button_inbox_next_sort_by_onboarding}

Click Next Button On Inbox Daftar Pesan Onboarding
    Sleep                                           1
    Wait Until Element Contains                     ${text_inbox_title_daftar_pesan_onboarding}                 ${EXPECTED_TEXT_TITLE_DAFTAR_PESAN_ONBOARDING}
    Wait Until Element Is Visible                   ${frame_inbox_daftar_pesan_onboarding}
    Element Should Be Visible                       ${frame_inbox_daftar_pesan_onboarding}
    Element Should Be Visible                       ${button_inbox_back_daftar_pesan_onboarding}
    Element Should Be Visible                       ${button_inbox_finish_daftar_pesan_onboarding}
    Click Element                                   ${button_inbox_finish_daftar_pesan_onboarding}

Verify There Is No Onboarding Left
    Element Should Not Be Visible                   ${frame_inbox_filter_perkategori_onboarding}
    Element Should Not Be Visible                   ${frame_inbox_sort_by_onboarding}
    Element Should Not Be Visible                   ${frame_inbox_daftar_pesan_onboarding}

Click Back Button On Onboarding
    Wait Until Element Is Visible                   ${frame_inbox_onboarding}
    Wait Until Element Is Visible                   ${button_inbox_back_onboarding}
    Click Element                                   ${button_inbox_back_onboarding}

Verify Inbox Daftar Pesan Onboarding Is Displayed
    [Arguments]  ${EXPECTED_TEXT_TITLE_DAFTAR_PESAN_ONBOARDING}     ${EXPECTED_TEXT_CONTENT_DAFTAR_PESAN_ONBOARDING}
    Wait Until Element Contains                     ${text_inbox_title_daftar_pesan_onboarding}         ${EXPECTED_TEXT_TITLE_DAFTAR_PESAN_ONBOARDING}
    Wait Until Element Is Visible                   ${frame_inbox_daftar_pesan_onboarding}
    Element Should Be Visible                       ${frame_inbox_daftar_pesan_onboarding}
    Element Text Should Be                          ${text_inbox_title_daftar_pesan_onboarding}         ${EXPECTED_TEXT_TITLE_DAFTAR_PESAN_ONBOARDING}
    Element Text Should Be                          ${text_inbox_content_daftar_pesan_onboarding}       ${EXPECTED_TEXT_CONTENT_DAFTAR_PESAN_ONBOARDING}
    Element Should Be Visible                       ${button_inbox_back_daftar_pesan_onboarding}
    Element Should Be Visible                       ${button_inbox_finish_daftar_pesan_onboarding}

Verify Inbox Sort By Onboarding Is Displayed
    [Arguments]  ${EXPECTED_TEXT_TITLE_SORT_BY_ONBOARDING}     ${EXPECTED_TEXT_CONTENT_SORT_BY_ONBOARDING}
    Wait Until Element Contains                     ${text_inbox_title_sort_by_onboarding}              ${EXPECTED_TEXT_TITLE_SORT_BY_ONBOARDING}
    Wait Until Element Is Visible                   ${frame_inbox_sort_by_onboarding}
    Element Should Be Visible                       ${frame_inbox_sort_by_onboarding}
    Element Text Should Be                          ${text_inbox_title_sort_by_onboarding}              ${EXPECTED_TEXT_TITLE_SORT_BY_ONBOARDING}
    Element Text Should Be                          ${text_inbox_content_sort_by_onboarding}            ${EXPECTED_TEXT_CONTENT_SORT_BY_ONBOARDING}
    Element Should Be Visible                       ${button_inbox_skip_sort_by_onboarding}
    Element Should Be Visible                       ${button_inbox_back_sort_by_onboarding}
    Element Should Be Visible                       ${button_inbox_next_sort_by_onboarding}

Verify Inbox Filter Per Kategori Onboarding Is Displayed
    [Arguments]  ${EXPECTED_TEXT_TITLE_FILTER_KATEGORI_ONBOARDING}     ${EXPECTED_TEXT_CONTENT_FILTER_KATEGORI_ONBOARDING}
    Wait Until Element Contains                     ${text_inbox_title_filter_perkategori_onboarding}         ${EXPECTED_TEXT_TITLE_FILTER_KATEGORI_ONBOARDING}
    Wait Until Element Is Visible                   ${frame_inbox_filter_perkategori_onboarding}
    Element Should Be Visible                       ${frame_inbox_filter_perkategori_onboarding}
    Element Text Should Be                          ${text_inbox_title_filter_perkategori_onboarding}         ${EXPECTED_TEXT_TITLE_FILTER_KATEGORI_ONBOARDING}
    Element Text Should Be                          ${text_inbox_content_filter_perkategori_onboarding}       ${EXPECTED_TEXT_CONTENT_FILTER_KATEGORI_ONBOARDING}
    Element Should Be Visible                       ${button_inbox_skip_filter_perkategori_onboarding}
    Element Should Be Visible                       ${button_inbox_next_filter_perkategori_onboarding}

Click Finish Button On Daftar Pesan Onboarding
    Wait Until Element Is Visible                   ${button_inbox_finish_daftar_pesan_onboarding}
    Click Element                                   ${button_inbox_finish_daftar_pesan_onboarding}

Verify Show button login displayed to access inbox
    Wait Until Element Is Visible                   ${button_login_login}
    Element Should Be Visible                       ${button_login_login}
    Element Should Not Be Visible                   ${links_homepage_menu_inbox}

Verify Direct To Inbox Page
    Wait Until Element Is Visible                   ${links_homepage_menu_inbox}
    Element Should Be Visible                       ${links_homepage_menu_inbox}
    Element Should Be Visible                       ${button_inbox_filter_all}
    Element Should Be Visible                       ${button_inbox_filter_selected}
    Element Should Be Visible                       ${dropdown_inbox_sort}
    Location Should Contain                         /accounts/profile?tab=inbox

Click Skip Button On Onboarding
    Wait Until Element Is Visible                   ${text_inbox_title_daftar_pesan_onboarding}
    Wait Until Element Is Visible                   ${frame_inbox_daftar_pesan_onboarding}
    Click Element                                   ${button_inbox_skip_daftar_pesan_onboarding}

Verify Inbox List
    Wait Until Element Is Visible                   ${button_inbox_filter_messages}
    Element Should Be Visible                       ${button_inbox_filter_messages}
    Element Should Be Visible                       ${button_inbox_filter_selected}
    Element Should Be Visible                       ${dropdown_inbox_sort}
    Wait Until Element Is Visible                   ${text_inbox_list_date_time_inbox}
    Element Should Be Visible                       ${text_inbox_list_date_time_inbox}
    Element Should Be Visible                       ${text_inbox_list_title_inbox}
    Element Should Be Visible                       ${text_inbox_list_content_inbox}

Click Filter Promotions
    Wait Until Element Is Visible                   ${button_inbox_filter_promotion}
    Click Element                                   ${button_inbox_filter_promotion}

Verify Filter Promotions
    Wait Until Element Is Visible                   ${button_inbox_filter_selected}
    Element Text Should Be                          ${button_inbox_filter_selected}             Promotions
    Wait Until Element Is Visible                   ${text_inbox_list_title_inbox}
    Element Should Contain                          ${text_inbox_list_title_inbox}              promotions
    Wait Until Element Is Visible                   ${text_inbox_list_content_inbox}
    Element Should Contain                          ${text_inbox_list_content_inbox}            promotions

Click Filter Messages
    Wait Until Element Is Visible                   ${button_inbox_filter_messages}
    Click Element                                   ${button_inbox_filter_messages}

Verify Filter Messages
    Wait Until Element Is Visible                   ${button_inbox_filter_selected}
    Element Should Contain                          ${button_inbox_filter_selected}             Messages
    Wait Until Element Is Visible                   ${text_inbox_list_title_inbox}
    Element Should Contain                          ${text_inbox_list_title_inbox}              messages
    Wait Until Element Is Visible                   ${text_inbox_list_content_inbox}
    Element Should Contain                          ${text_inbox_list_content_inbox}            messages

Sorting By Latest
    Wait Until Element Is Visible                   ${dropdown_inbox_sort}
    Click Element                                   ${dropdown_inbox_sort}
    Click Element                                   ${dropdown_inbox_sort_latest}

Sorting By Oldest
    Wait Until Element Is Visible                   ${dropdown_inbox_sort}
    Click Element                                   ${dropdown_inbox_sort}
    Click Element                                   ${dropdown_inbox_sort_oldest}

Verify Sorting By Latest
    Wait Until Element Is Visible                   ${dropdown_inbox_sort}
    Click Element                                   ${dropdown_inbox_sort}
    Wait Until Element Is Visible                   ${dropdown_inbox_sort_active}
    Element Text Should Be                          ${dropdown_inbox_sort_active}               Latest

Verify Sorting By Oldest
    Wait Until Element Is Visible                   ${dropdown_inbox_sort}
    Click Element                                   ${dropdown_inbox_sort}
    Wait Until Element Is Visible                   ${dropdown_inbox_sort_active}
    Element Text Should Be                          ${dropdown_inbox_sort_active}               Oldest

Verify Empty State Is Shown
    Wait Until Element Is Visible                   ${image_inbox_image_empty_message}
    Element Should Be Visible                       ${image_inbox_image_empty_message}
    Element Should Be Visible                       ${text_inbox_title_empty_message}
    Element Text Should Be                          ${text_inbox_title_empty_message}           Tidak ada pesan
    Element Should Be Visible                       ${text_inbox_text_empty_message}
    Element Text Should Be                          ${text_inbox_text_empty_message}            Anda tidak memiliki riwayat pesan.

Open Message
    Wait Until Element Is Visible                   ${text_inbox_list_title_inbox}
    Click Element                                   ${text_inbox_list_title_inbox}

Verify User Can Open Message
    [Arguments]    ${TEXT_TITLE_MESSAGE}        ${TEXT_CONTENT_MESSAGE}
    Wait Until Element Is Visible                   ${text_inbox_detail_title_message}
    Element Should Be Visible                       ${text_inbox_detail_title_message}
    Element Should Contain                          ${text_inbox_detail_title_message}          ${TEXT_TITLE_MESSAGE}
    Wait Until Element Is Visible                   ${text_inbox_detail_content_message}
    Element Should Be Visible                       ${text_inbox_detail_content_message}
    Element Should Contain                          ${text_inbox_detail_content_message}        ${TEXT_CONTENT_MESSAGE}

Back From Inbox Detail
    Wait Until Element Is Visible                   ${button_inbox_detail_back}
    Click Element                                   ${button_inbox_detail_back}

Verify Loading State Is Shown
    Wait Until Element Is Visible                   ${frame_inbox_list_shimmering_loading}
    Element Should Be Visible                       ${frame_inbox_list_shimmering_loading}
    Element Should Not Be Visible                   ${frame_inbox_list_shimmering_loading}

Verify Count Number Is Shown
    Open Beli Akses Menu
    Wait Until Element Is Visible                   ${text_homepage_langganan_count_number}
    Element Should Be Visible                       ${text_homepage_langganan_count_number}
    Element Should Contain                          ${text_homepage_langganan_count_number}             1
    Wait Until Element Is Visible                   ${text_inbox_count_number}
    Element Should Be Visible                       ${text_inbox_count_number}
    Element Should Contain                          ${text_inbox_count_number}                          1

Click Load More Button
    Wait Until Element Is Visible                   ${button_inbox_muat_lebih}
    Element Should Be Visible                       ${button_inbox_muat_lebih}
    Scroll Element Into View                        ${button_inbox_muat_lebih}
    Click Element                                   ${button_inbox_muat_lebih}

Verify User Can Load More Message
    Wait Until Element Is Visible                   ${text_inbox_date_last_message}
    Scroll Element Into View                        ${text_inbox_date_last_message}
    Element Should Be Visible                       ${text_inbox_date_last_message}
    Element Text Should Be                          ${text_inbox_date_last_message}                     01 August 2020