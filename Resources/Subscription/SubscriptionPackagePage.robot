*** Settings ***
Library             SeleniumLibrary
Resource            ../../Frameworks/Routers.robot

*** Variables ***
${text_subscription_package_title_beli_paket}           css=._1NGTJ
${button_subscription_package_beli_paket_1}             css=div:nth-of-type(1) > ._1in7Q  ._1xaKp


*** Keywords ***
Choose A Package
    Wait Until Element Is Visible                       ${text_subscription_package_title_beli_paket}
    Wait Until Element Is Visible                       ${button_subscription_package_beli_paket_1}
    Click Element                                       ${button_subscription_package_beli_paket_1}

Verify On Beli Package Page
    Wait Until Element Is Visible                       ${text_subscription_package_title_beli_paket}
    Wait Until Element Is Visible                       ${button_subscription_package_beli_paket_1}
    Element Should Be Visible                           ${text_subscription_package_title_beli_paket}
    Element Should Be Visible                           ${button_subscription_package_beli_paket_1}
