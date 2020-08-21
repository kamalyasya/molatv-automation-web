*** Settings ***
Library         	    SeleniumLibrary
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${logo_homepage_molatv}                 css=._1qzw_ > img[alt='logo Mola']
${menu_homepage_search}                 css=div:nth-of-type(1) > .SwWJf
${menu_homepage_home}                   css=._1GfoO > div:nth-of-type(2)
${menu_homepage_home_hover}             css=div:nth-of-type(2) > ._2yKxK
${menu_homepage_browse}                 css=._1GfoO > div:nth-of-type(3)
${menu_homepage_matches}                css=._1GfoO > div:nth-of-type(4)
${menu_homepage_accounts}               css=.ncb37
${menu_homepage_movies}                 css=.FYgXF > div:nth-of-type(1)
${menu_homepage_living}                 css=.FYgXF > div:nth-of-type(2)
${menu_homepage_sports}                 css=.FYgXF > div:nth-of-type(3)
${menu_homepage_kids}                   css=.FYgXF > div:nth-of-type(4)

${button_homepage_account}              css=.ncb37
${button_homepage_login}                css=._2ov9c

${links_homepage_menu_ubah_profile}     link=Ubah Profil
${links_homepage_menu_inbox}            link=Inbox
${links_homepage_menu_subscription}     link=Subscription
${links_homepage_menu_order_history}    css=._17k4N ._3qTet:nth-child(6)
${links_homepage_menu_beli_paket}       css=._16YQ- > div:nth-of-type(3)
${links_homepage_menu_pengaturan}       link=Pengaturan
${links_homepage_menu_keluar}           css=._2hHhe

${links_homepage_privasi}               css=[href='\/privacy']
${links_homepage_syarat_dan_ketentuan}  css=[href='\/terms-conditions']
${frame_homepage_inbox_onboarding}      css=.__floater__body
${text_homepage_title_onboarding}       css=._2u2aj
${text_homepage_content_onboarding}     css=._1fO2X
${button_homepage_skip_inbox_onboarding}        id=skip
${button_homepage_finish_inbox_onboarding}      id=next

*** Keywords ***
Verify The App Navigates To Home Page
    [Arguments]     ${HOME}
    Wait Until Element Is Not Visible   ${field_login_email}
    Wait Until Element Is Visible       ${menu_homepage_home}
    Mouse Over                          ${menu_homepage_home}
    Wait Until Element Is Visible       ${menu_homepage_home_hover}
    Element Text Should Be              ${menu_homepage_home_hover}         ${HOME}

Open Beli Paket Menu
    Wait Until Element Is Visible       ${button_homepage_account}
    Click Element                       ${button_homepage_account}
    Wait Until Element Is Visible       ${links_homepage_menu_beli_paket}
    Click Element                       ${links_homepage_menu_beli_paket}

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
    Click Element                       ${button_homepage_account}

Open Login Page
    Wait Until Element Is Visible       ${button_homepage_account}
    Click Element                       ${button_homepage_account}
    Wait Until Element Is Visible       ${button_homepage_login}
    Click Element                       ${button_homepage_login}

Verify The UI Of The User Icon Without Login
    Wait Until Element Is Visible       ${button_homepage_account}
    Click Element                       ${button_homepage_account}
    Wait Until Element Is Visible       ${button_homepage_login}
    Element Should Be Visible           ${button_homepage_login}
    Element Should Be Visible           ${links_homepage_menu_beli_paket}
    Element Should Be Visible           ${links_homepage_menu_pengaturan}
    Click Element                       ${button_homepage_account}

Verify Menu After Logged In
    Wait Until Element Is Visible       ${button_homepage_account}
    Click Element                       ${button_homepage_account}
    Wait Until Element Is Visible       ${text_homepage_account_email}
    Element Should Be Visible           ${text_homepage_account_email}
    Element Should Be Visible           ${links_homepage_menu_ubah_profile}
    Element Should Be Visible           ${links_homepage_menu_inbox}
    Element Should Be Visible           ${links_homepage_menu_subscription}
    Element Should Be Visible           ${links_homepage_menu_order_history}
    Element Should Be Visible           ${links_homepage_menu_beli_paket}
    Element Should Be Visible           ${links_homepage_menu_pengaturan}
    Element Should Be Visible           ${links_homepage_menu_keluar}

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
    Wait Until Element Is Visible       ${button_homepage_account}
    Click Element                       ${button_homepage_account}
    Wait Until Element Is Visible       ${links_homepage_menu_inbox}
    Click Element                       ${links_homepage_menu_inbox}
