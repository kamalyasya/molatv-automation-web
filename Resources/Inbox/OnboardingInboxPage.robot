*** Settings ***
Library         	    SeleniumLibrary
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${frame_inbox_filter_perkategori_onboarding}        css=.__floater__body
${button_inbox_skip_filter_perkategori_onboarding}  css=div:nth-of-type(2) > div > button[role='button']
${button_inbox_next_filter_perkategori_onboarding}  css=button[role='button'] > span
${frame_inbox_sort_by_onboarding}                   css=.__floater__body
${button_inbox_skip_sort_by_onboarding}             css=div:nth-of-type(2) > div > button[role='button']
${button_inbox_back_sort_by_onboarding}             css=div:nth-of-type(2) > button:nth-of-type(1)
${button_inbox_next_sort_by_onboarding}             css=button[role='button'] > span
${frame_inbox_daftar_pesan_onboarding}              css=.__floater__body
${button_inbox_back_daftar_pesan_onboarding}        css=div:nth-of-type(2) > button:nth-of-type(1)
${button_inbox_next_daftar_pesan_onboarding}        css=button:nth-of-type(2) > span


*** Keywords ***
Click Next Button On Inbox Filter Per Kategori Onboarding
    Wait Until Element Is Visible                   ${frame_inbox_filter_perkategori_onboarding}
    Element Should Be Visible                       ${frame_inbox_filter_perkategori_onboarding}
    Element Should Be Visible                       ${button_inbox_skip_filter_perkategori_onboarding}
    Element Should Be Visible                       ${button_inbox_next_filter_perkategori_onboarding}
    Click Element                                   ${button_inbox_next_filter_perkategori_onboarding}

Click Next Button On Inbox Sort By Onboarding
    Wait Until Element Is Visible                   ${frame_inbox_sort_by_onboarding}
    Element Should Be Visible                       ${frame_inbox_sort_by_onboarding}
    Element Should Be Visible                       ${button_inbox_skip_sort_by_onboarding}
    Element Should Be Visible                       ${button_inbox_back_sort_by_onboarding}
    Element Should Be Visible                       ${button_inbox_next_sort_by_onboarding}
    Click Element                                   ${button_inbox_next_sort_by_onboarding}

Click Next Button On Inbox Daftar Pesan Onboarding
    Wait Until Element Is Visible                   ${frame_inbox_daftar_pesan_onboarding}
    Element Should Be Visible                       ${frame_inbox_daftar_pesan_onboarding}
    Element Should Be Visible                       ${button_inbox_back_daftar_pesan_onboarding}
    Element Should Be Visible                       ${button_inbox_next_daftar_pesan_onboarding}
    Click Element                                   ${button_inbox_next_daftar_pesan_onboarding}

Verify There Is No Onboarding Left
    Element Should Not Be Visible                   ${frame_inbox_filter_perkategori_onboarding}
    Element Should Not Be Visible                   ${frame_inbox_sort_by_onboarding}
    Element Should Not Be Visible                   ${frame_inbox_daftar_pesan_onboarding}