*** Settings ***
Resource            ../../Frameworks/Routers.robot

*** Variables ***
${text_subscription_beli_paket}                         css=._2mt2k p
${button_subscription_beli_akses}                       css=._33Xwm
${text_subscription_choose_plan_to_watch}               css=.EIEEW
${button_subscription_check_other_plan}                 css=._19k1D

*** Keywords ***
Verify Choose content that need a package
    Wait Until Element Is Visible                       ${text_subscription_beli_paket}
    Element Should Be Visible                           ${text_subscription_beli_paket}
    Wait Until Element Is Visible                       ${button_subscription_beli_akses}
    Element Should Be Visible                           ${button_subscription_beli_akses}
    Click Element                                       ${button_subscription_beli_akses}
    Wait Until Element Is Visible                       ${text_subscription_choose_plan_to_watch}
    Element Should Be Visible                           ${text_subscription_choose_plan_to_watch}
    Wait Until Element Is Visible                       ${button_subscription_check_other_plan}
    Element Should Be Visible                           ${button_subscription_check_other_plan}
    Click Element                                       ${button_subscription_check_other_plan}