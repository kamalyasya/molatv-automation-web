*** Settings ***
Library         	    SeleniumLibrary
Library                 String
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${logo_homepage_molatv}                 css=._1qzw_ > img[alt='logo Mola']
${text_homepage_selected_menu}          css=.Trssw._2yKxK
${menu_homepage_selected_menu}          css=._3lT3U
${menu_homepage_search}                 css=div:nth-of-type(1) > .SwWJf
${menu_homepage_home}                   css=._1GfoO > div:nth-of-type(2)
${menu_homepage_home_hover}             css=div:nth-of-type(2) > ._2yKxK
${menu_homepage_browse}                 css=._1GfoO > div:nth-of-type(3)
${menu_homepage_matches}                css=._1GfoO > div:nth-of-type(4)
${menu_homepage_beli_akses}             css=._1GfoO > div:nth-of-type(5)
${menu_homepage_redeem_voucher}         css=._1GfoO > div:nth-of-type(6)
${menu_homepage_accounts}               css=._2YhM7
${text_homepage_langganan_count_number}    css=.count-number
${menu_homepage_movies}                 css=.FYgXF > div:nth-of-type(1)
${menu_homepage_living}                 css=.FYgXF > div:nth-of-type(2)
${menu_homepage_sports}                 css=.FYgXF > div:nth-of-type(3)
${menu_homepage_kids}                   css=.FYgXF > div:nth-of-type(4)

${links_homepage_menu_profil}           xpath=//div[text()='Profil']
${links_homepage_menu_inbox}            xpath=//div[text()='Pesan Masuk']
${links_homepage_menu_tontonan_saya}    xpath=//div[text()='Tontonan Saya']
${links_homepage_menu_pengaturan}       xpath=//div[text()='Pengaturan']
${links_homepage_menu_langganan}        xpath=//div[text()='Langganan']
${links_homepage_menu_order_history}    xpath=//div[text()='Riwayat Pembelian']
${links_homepage_menu_beli_akses}       xpath=//div[text()='Beli Akses' and not(@class='_2yKxK')]

${links_homepage_privasi}               css=[href='\/privacy']
${links_homepage_syarat_dan_ketentuan}  css=[href='\/terms-conditions']

${frame_homepage_inbox_onboarding}      css=.__floater__body
${text_homepage_title_onboarding}       css=._2u2aj
${text_homepage_content_onboarding}     css=._1fO2X

${button_homepage_skip_inbox_onboarding}        id=skip
${button_homepage_finish_inbox_onboarding}      id=next

${rail_banner_matches_page}                     css=.css-11xe1ut.css-nch242.slider  .slider-list
${matches_date_filter_toggle}                   css=._2CCM2
${match_card}                                   css=div#match-wrapper > div:nth-of-type(3) > div
${view_all_match_card}                          link=View All
${page_match_view_all}                          css=._2dFXJ

${matches_all_competition}                      css=div#allCompetition
${matches_footer}                               css=._32NSr
${matches_status_match}                         css=p[class$='k1LdU']
${matches_slider_frame}                         css=div:nth-of-type(3) > div > .DgfMr
${matches_page_hover}                           css=#match-wrapper
${matches_calendar}                             css=ul > div:nth-of-type(14)
${list_calendar}                                css=div#list__date
${list_next_calendar}                           css=div:nth-of-type(13) > ._13AG-.calendar_item
${expected_title_movie_detail}                  css=h1

${dropdown_all_competition}                     css=._30NbM
${toggle_on_of_all_competition}                 css=._33UoQ ._1VH-8._334Zm
${button_apply_all_competition}                 css=._3NXCX
${page_all_competition}                         css=div#match-wrapper > div:nth-of-type(2)
${checkbox_1}                                   css=.checkbox0
${uncheckbox_1}                                 css=div:nth-of-type(2) > ._1GnU3.checkbox0

${currently_playing_matches}                    css=div:nth-of-type(3) > div > .DgfMr > ._3mEMU

*** Keywords ***
Verify The App Navigates To Home Page
    [Arguments]     ${HOME}
    Wait Until Element Is Not Visible   ${field_login_email}
    Wait Until Element Is Visible       ${menu_homepage_home}
    Mouse Over                          ${menu_homepage_home}
    Wait Until Element Is Visible       ${menu_homepage_home_hover}
    Element Text Should Be              ${menu_homepage_home_hover}         ${HOME}

Open Beli Akses Menu
    Wait Until Element Is Visible       ${menu_homepage_beli_akses}
    Click Element                       ${menu_homepage_beli_akses}
    Wait Until Element Is Visible       ${links_homepage_menu_beli_akses}
    Click Element                       ${links_homepage_menu_beli_akses}

Open Privasi Page
    Wait Until Element Is Visible       ${links_homepage_privasi}
    Click Element                       ${links_homepage_privasi}

Open Syarat Dan Ketentuan Page
    Wait Until Element Is Visible       ${links_homepage_syarat_dan_ketentuan}
    Click Element                       ${links_homepage_syarat_dan_ketentuan}

Click Next Button And Skip Inbox Onboarding
    Wait Until Page Contains Element    ${frame_homepage_inbox_onboarding}
    Wait Until Element Is Visible       ${frame_homepage_inbox_onboarding}
    Wait Until Element Is Visible       ${button_homepage_finish_inbox_onboarding}
    Click Element                       ${button_homepage_finish_inbox_onboarding}
    Click Element                       ${menu_homepage_accounts}

Open Login Page
    Wait Until Element Is Visible       ${menu_homepage_accounts}
    Mouse Over                          ${menu_homepage_accounts}
    Wait Until Element Is Visible       ${menu_homepage_accounts}
    Click Element                       ${menu_homepage_accounts}
    Wait Until Element Is Visible       ${links_homepage_menu_profil}
    Mouse Over                          ${links_homepage_menu_profil}

Verify The UI Of The User Icon Without Login
    Wait Until Element Is Visible       ${menu_homepage_accounts}
    Click Element                       ${menu_homepage_accounts}
    Wait Until Element Is Visible       ${links_homepage_menu_profil}
    Element Should Be Visible           ${links_homepage_menu_profil}
    Element Should Be Visible           ${links_homepage_menu_pengaturan}
    Element Should Be Visible           ${links_homepage_menu_beli_akses}
    Element Should Be Visible           ${field_login_email}
    Element Should Be Visible           ${field_login_password}


Verify Menu After Logged In
    Wait Until Element Is Not Visible   ${field_login_email}
    Wait Until Element Is Visible       ${menu_homepage_accounts}
    Click Element                       ${menu_homepage_accounts}
    Wait Until Element Is Visible       ${links_homepage_menu_profil}
    Element Should Be Visible           ${links_homepage_menu_profil}
    Element Should Be Visible           ${links_homepage_menu_inbox}
    Element Should Be Visible           ${links_homepage_menu_pengaturan}
    Element Should Be Visible           ${links_homepage_menu_langganan}
    Element Should Be Visible           ${links_homepage_menu_order_history}
    Element Should Be Visible           ${links_homepage_menu_beli_akses}

Verify Inbox Onboarding On Homepage
    [Arguments]  ${EXPECTED_TEXT_TITLE_ONBOARDING}  ${EXPECTED_TEXT_CONTENT_ONBOARDING}
    Wait Until Element Is Visible       ${frame_homepage_inbox_onboarding}
    Wait Until Element Is Visible       ${button_homepage_finish_inbox_onboarding}
    Element Should Be Visible           ${text_homepage_title_onboarding}
    Element Text Should Be              ${text_homepage_title_onboarding}                   ${EXPECTED_TEXT_TITLE_ONBOARDING}
    Element Should Be Visible           ${text_homepage_content_onboarding}
    Element Text Should Be              ${text_homepage_content_onboarding}                 ${EXPECTED_TEXT_CONTENT_ONBOARDING}
    Element Should Be Visible           ${button_homepage_finish_inbox_onboarding}

Open Inbox Page
    Wait Until Element Is Not Visible   ${field_login_email}
    Wait Until Element Is Visible       ${menu_homepage_accounts}
    Click Element                       ${menu_homepage_accounts}
    Wait Until Element Is Visible       ${links_homepage_menu_inbox}
    Click Element                       ${links_homepage_menu_inbox}

Open Search Page
    Wait Until Element Is Visible       ${menu_homepage_search}
    Click Element                       ${menu_homepage_search}
    Mouse Over                          ${menu_homepage_movies}

Open Matches Page
    Wait Until Element Is Visible       ${menu_homepage_matches}
    Click Element                       ${menu_homepage_matches}

Verify UI Layout of Matches page
    Wait Until Element Is Visible       ${menu_homepage_home_hover}
    Element Should Be Visible           ${menu_homepage_search}
    Element Should Be Visible           ${menu_homepage_home}
    Element Should Be Visible           ${menu_homepage_browse}
    Element Should Be Visible           ${menu_homepage_matches}
    Element Should Be Visible           ${menu_homepage_beli_akses}
    Element Should Be Visible           ${menu_homepage_accounts}
    Wait Until Element Is Visible       ${rail_banner_matches_page}     30
    Element Should Be Visible           ${rail_banner_matches_page}
    Element Should Be Visible           ${matches_date_filter_toggle}
    Element Should Be Visible           ${match_card}

Click view all button
    Scroll Element Into View            ${view_all_match_card}
    Click Element                       ${view_all_match_card}
    Wait Until Element Is Visible       ${page_match_view_all}

Verify all the matches of categories will shown up from the beginning time
    Element Should Be Visible           ${page_match_view_all}

Choose any upcoming match
    Wait Until Element Is Visible       ${matches_calendar}    30
    Mouse Over                          ${matches_page_hover}
    Sleep                               2
    Scroll Element Into View            ${matches_status_match}
    Sleep                               3

Check Upcoming Matches
    Element Should Be Visible           ${matches_status_match}
    Click Element                       ${matches_status_match}
    Wait Until Element Is Visible       ${expected_title_movie_detail}

Click Next Day
    Scroll Element Into View            ${list_calendar}
    Click Element                       ${list_next_calendar}
    Sleep                               3
    Check Upcoming Matches

Tap Drop Down Filter Competition
    Click Element                       ${dropdown_all_competition}

Change Filter Competition
    Click Element                       ${toggle_on_of_all_competition}
    Click Element                       ${toggle_on_of_all_competition}
    Sleep                               2

Click Button Apply
    Scroll Element Into View            ${button_apply_all_competition}
    Click Element                       ${button_apply_all_competition}

Dont't Click Button Apply
    Click Element                       ${dropdown_all_competition}
    Click Element                       ${dropdown_all_competition}

Verify displayed the live match schedule according to the filter
    Page Should Contain Element         ${page_all_competition}

Verify Filter Not Saved
    Page Should Contain Element         ${page_all_competition}
    Scroll Element Into View            ${checkbox_1}
    Element Should Be Visible           ${checkbox_1}
    Element Should Not Be Visible       ${uncheckbox_1}

Choose any live match
    Wait Until Element Is Visible       ${matches_calendar}    30
    Mouse Over                          ${matches_page_hover}
    Sleep                               2
    Scroll Element Into View            ${view_all_match_card}