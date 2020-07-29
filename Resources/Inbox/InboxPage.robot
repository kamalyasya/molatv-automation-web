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

${EXPECTED_TEXT_TITLE_FILTER_KATEGORI_ONBOARDING}   Filter per Kategori
${EXPECTED_TEXT_TITLE_SORT_BY_ONBOARDING}           Sort By
${EXPECTED_TEXT_TITLE_DAFTAR_PESAN_ONBOARDING}      Daftar Pesan

*** Keywords ***
Click Next Button On Inbox Filter Per Kategori Onboarding
    Wait Until Element Contains                     ${text_inbox_title_filter_perkategori_onboarding}           ${EXPECTED_TEXT_TITLE_FILTER_KATEGORI_ONBOARDING}
    Wait Until Element Is Visible                   ${frame_inbox_filter_perkategori_onboarding}
    Element Should Be Visible                       ${frame_inbox_filter_perkategori_onboarding}
    Element Should Be Visible                       ${button_inbox_skip_filter_perkategori_onboarding}
    Element Should Be Visible                       ${button_inbox_next_filter_perkategori_onboarding}
    Click Element                                   ${button_inbox_next_filter_perkategori_onboarding}

Click Next Button On Inbox Sort By Onboarding
    Wait Until Element Contains                     ${text_inbox_title_sort_by_onboarding}                      ${EXPECTED_TEXT_TITLE_SORT_BY_ONBOARDING}
    Wait Until Element Is Visible                   ${frame_inbox_sort_by_onboarding}
    Element Should Be Visible                       ${frame_inbox_sort_by_onboarding}
    Element Should Be Visible                       ${button_inbox_skip_sort_by_onboarding}
    Element Should Be Visible                       ${button_inbox_back_sort_by_onboarding}
    Element Should Be Visible                       ${button_inbox_next_sort_by_onboarding}
    Click Element                                   ${button_inbox_next_sort_by_onboarding}

Click Next Button On Inbox Daftar Pesan Onboarding
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