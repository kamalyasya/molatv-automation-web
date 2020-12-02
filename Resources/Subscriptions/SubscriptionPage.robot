*** Settings ***
Library             SeleniumLibrary
Resource            ../../Frameworks/Routers.robot

*** Variables ***
${text_subscription_beli_paket}                         css=._2mt2k p
${button_subscription_beli_akses}                       css=._33Xwm
${text_subscription_pilih_paket}                        css=._2PAjj
${button_subscription_lihat_paket_lain}                 css=._12uNH

*** Keywords ***
Verify Choose content that need a package
    Wait Until Element Is Visible                       ${text_subscription_beli_paket}
    Element Should Be Visible                           ${text_subscription_beli_paket}
    Wait Until Element Is Visible                       ${button_subscription_beli_akses}
    Element Should Be Visible                           ${button_subscription_beli_akses}
    Click Element                                       ${button_subscription_beli_akses}
    Wait Until Element Is Visible                       ${text_subscription_pilih_paket}
    Element Should Be Visible                           ${text_subscription_pilih_paket}
    Wait Until Element Is Visible                       ${button_subscription_lihat_paket_lain}
    Element Should Be Visible                           ${button_subscription_lihat_paket_lain}
    Click Element                                       ${button_subscription_lihat_paket_lain}