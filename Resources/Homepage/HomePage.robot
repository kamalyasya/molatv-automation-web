*** Settings ***
Library         	    SeleniumLibrary
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${logo_homepage_molatv}                 css=._3v45A .fadeIn
${menu_homepage_featured}               css=a[title='Featured'] > div[title='Featured']
${menu_homepage_movies}                 css=a[title='Movies'] > div[title='Movies']
${menu_homepage_living}                 css=a[title='Living'] > div[title='Living']
${menu_homepage_sports}                 css=a[title='Sports'] > div[title='Sports']
${menu_homepage_kids}                   css=a[title='Kids'] > div[title='Kids']
${menu_homepage_games}                  css=a[title='Games'] > div[title='Games']
${menu_homepage_live_schedule}          css=a[title='Live Schedule'] > div[title='Live Schedule']
${menu_homepage_beli_paket}             css=a[title='Beli Paket Berlangganan'] > div[title='Beli Paket Berlangganan']
${button_homepage_account}              css=.ncb37
${button_homepage_login}                css=._2ov9c
${text_homepage_account_email}          css=.lQ9ux
${links_homepage_menu_ubah_profile}     link=Ubah Profil
${links_homepage_menu_inbox}            link=Inbox
${links_homepage_menu_subscription}     link=Subscription
${links_homepage_menu_order_history}    css=._17k4N ._3qTet:nth-child(6)
${links_homepage_menu_beli_paket}       xpath=//html//div[@id='app']/div[2]//a[@href='/accounts/profile?tab=subscriptionPackage']
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
Verify Logged In Using Correct Account
    [Arguments]     ${EXPECTED_ACCOUNT_EMAIL}
    Wait Until Element Is Not Visible   ${field_login_email}
    Wait Until Element Is Visible       ${button_homepage_account}
    Click Element                       ${button_homepage_account}
    Sleep                               1
    Wait Until Element Is Visible       ${text_homepage_account_email}
    Element Text Should Be              ${text_homepage_account_email}           ${EXPECTED_ACCOUNT_EMAIL}
    Click Element                       ${button_homepage_account}

Verify The App Navigates To Featured Page
    [Arguments]     ${FEATURED}
    Wait Until Element Is Visible       ${menu_homepage_featured}
    Element Text Should Be              ${menu_homepage_featured}         ${FEATURED}

Sign Out
    Wait Until Element Is Visible       ${button_homepage_account}
    Click Element                       ${button_homepage_account}
    Wait Until Element Is Visible       ${links_homepage_menu_keluar}
    Click Element                       ${links_homepage_menu_keluar}

Verify Sign Out
    Wait Until Element Is Visible       ${button_homepage_account}
    Click Element                       ${button_homepage_account}
    Wait Until Element Is Visible       ${button_homepage_login}
    Element Should Be Visible           ${button_homepage_login}

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
    Sleep                               2
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
