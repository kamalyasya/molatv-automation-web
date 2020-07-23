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
${links_homepage_keluar}                css=._2hHhe
${links_homepage_beli_paket}            xpath=//html//div[@id='app']/div[2]//a[@href='/accounts/profile?tab=subscriptionPackage']

*** Keywords ***
Verify Logged In Using Correct Account
    [Arguments]     ${EXPECTED_ACCOUNT_EMAIL}
    Wait Until Element Is Not Visible   ${field_login_email}
    Wait Until Element Is Visible       ${button_homepage_account}
    Click Element                       ${button_homepage_account}
    Sleep   1
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
    Wait Until Element Is Visible       ${links_homepage_keluar}
    Click Element                       ${links_homepage_keluar}

Verify Sign Out
    Wait Until Element Is Visible       ${button_homepage_account}
    Click Element                       ${button_homepage_account}
    Wait Until Element Is Visible       ${button_homepage_login}
    Element Should Be Visible           ${button_homepage_login}

Open Beli Paket Menu
    Wait Until Element Is Visible       ${button_homepage_account}
    Click Element                       ${button_homepage_account}
    Wait Until Element Is Visible       ${links_homepage_beli_paket}
    Click Element                       ${links_homepage_beli_paket}
