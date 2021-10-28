*** Settings ***
Resource            ../../Frameworks/Routers.robot

*** Variables ***
${text_subscription_beli_paket}                         css=._2mt2k p
${button_subscription_beli_akses}                       css=._33Xwm
${text_subscription_choose_plan_to_watch}               css=.css-sp1r2z
${button_subscription_check_other_plan}                 css=.css-j62kuw
${reguler_ads_banner}                                   xpath=//img[starts-with(@data-testid,'player-banner-')]
${reguler_ads_preroll}                                  xpath=//video[starts-with(@data-testid,'player-preroll-')]
${text_purchase_subscription_plan}                      xpath=/html//div[@id='video-player-root']//div[@class='_2mt2k']//p[.='Purchase subscription plan to watch this programme']
${EXPECTED_TEXT_PURCHASE_SUBCRIPTION_PLAN}              Purchase subscription plan to watch this programme
${text_button_subscribe_now}                            xpath=/html//div[@id='video-player-root']//div[@class='_2mt2k']//button[@class='_33Xwm']
${EXPECTED_TEXT_BUTTON_SUBSCRIBE_NOW}                   Subscribe Now
${text_subscribe_to_watch_h2}                           xpath=//h2[contains(text(),'Subscribe to watch this programme')]
${EXPECTED_TEXT_SUBSCRIBE_TO_WATCH_H2}                  Subscribe to watch this programme
${text_subscribe_to_watch_h3_mola}                      xpath=//h3[contains(text(),'Frank Lampard - Youth Revolution')]
${EXPECTED_TEXT_SUBSCRIBE_TO_WATCH_H3_MOLA}             Frank Lampard - Youth Revolution
${text_subscribe_to_watch_h3_hbo}                       xpath=//h3[normalize-space()='THE POLAR EXPRESS']
${EXPECTED_TEXT_SUBSCRIBE_TO_WATCH_H3_HBO}              THE POLAR EXPRESS
${text_button_check_other_plan}                         xpath=//div[@class='css-j62kuw']
${EXPECTED_TEXT_BUTTON_CHECK_OTHER_PLAN}                Check other plan


*** Keywords ***
Verify Choose content that need a package Mola
    ${CHECK_TEXT_CATEGORY}               Run Keyword And Return Status       Wait Until Element Is Visible       ${text_categories_movie_detail_page}
    Wait Until Element Is Visible                       ${text_subscription_beli_paket}
    Element Should Be Visible                           ${text_subscription_beli_paket}
    Wait Until Element Is Visible                       ${text_purchase_subscription_plan}
    Element Should Contain                              ${text_purchase_subscription_plan}             ${EXPECTED_TEXT_PURCHASE_SUBCRIPTION_PLAN}
    Wait Until Element Is Visible                       ${text_button_subscribe_now}
    Element Should Contain                              ${text_button_subscribe_now}                    ${EXPECTED_TEXT_BUTTON_SUBSCRIBE_NOW}
    Wait Until Element Is Visible                       ${button_subscription_beli_akses}
    Element Should Be Visible                           ${button_subscription_beli_akses}
    Click Element                                       ${button_subscription_beli_akses}
#    Wait Until Element Is Visible                       ${text_subscription_choose_plan_to_watch}
#    Element Should Be Visible                           ${text_subscription_choose_plan_to_watch}
    Wait Until Element Is Visible                       ${text_subscribe_to_watch_h2}
    Element Should Contain                              ${text_subscribe_to_watch_h2}                    ${EXPECTED_TEXT_SUBSCRIBE_TO_WATCH_H2}
    Wait Until Element Is Visible                       ${text_subscribe_to_watch_h3_mola}
    Element Should Contain                              ${text_subscribe_to_watch_h3_mola}                    ${EXPECTED_TEXT_SUBSCRIBE_TO_WATCH_H3_MOLA}
    Wait Until Element Is Visible                       ${text_button_check_other_plan}
    Element Should Contain                              ${text_button_check_other_plan}                    ${EXPECTED_TEXT_BUTTON_CHECK_OTHER_PLAN}
    Wait Until Element Is Visible                       ${button_subscription_check_other_plan}
    Element Should Be Visible                           ${button_subscription_check_other_plan}
    Click Element                                       ${button_subscription_check_other_plan}

Verify Choose content that need a package HBO
    ${CHECK_TEXT_SUBSCRIPTION_CHOOSE_PLAN_TO_WATCH}               Run Keyword And Return Status       Wait Until Element Is Visible       ${text_subscription_choose_plan_to_watch}
    Wait Until Element Is Visible                       ${text_subscription_beli_paket}
    Element Should Be Visible                           ${text_subscription_beli_paket}
    Wait Until Element Is Visible                       ${text_purchase_subscription_plan}
    Element Should Contain                              ${text_purchase_subscription_plan}             ${EXPECTED_TEXT_PURCHASE_SUBCRIPTION_PLAN}
    Wait Until Element Is Visible                       ${text_button_subscribe_now}
    Element Should Contain                              ${text_button_subscribe_now}                    ${EXPECTED_TEXT_BUTTON_SUBSCRIBE_NOW}
    Wait Until Element Is Visible                       ${button_subscription_beli_akses}
    Element Should Be Visible                           ${button_subscription_beli_akses}
    Click Element                                       ${button_subscription_beli_akses}
    IF    '${CHECK_TEXT_SUBSCRIPTION_CHOOSE_PLAN_TO_WATCH}' == 'True'
        # Wait Until Element Is Visible                       ${text_subscription_choose_plan_to_watch}
        Element Should Be Visible                           ${text_subscription_choose_plan_to_watch}
    END
    Wait Until Element Is Visible                       ${text_subscribe_to_watch_h2}
    Element Should Contain                              ${text_subscribe_to_watch_h2}                    ${EXPECTED_TEXT_SUBSCRIBE_TO_WATCH_H2}
    Wait Until Element Is Visible                       ${text_subscribe_to_watch_h3_hbo}
    Element Should Contain                              ${text_subscribe_to_watch_h3_hbo}                    ${EXPECTED_TEXT_SUBSCRIBE_TO_WATCH_H3_HBO}
    Wait Until Element Is Visible                       ${text_button_check_other_plan}
    Element Should Contain                              ${text_button_check_other_plan}                    ${EXPECTED_TEXT_BUTTON_CHECK_OTHER_PLAN}
    Wait Until Element Is Visible                       ${button_subscription_check_other_plan}
    Element Should Be Visible                           ${button_subscription_check_other_plan}
    Click Element                                       ${button_subscription_check_other_plan}

Verify Benner Do Not Appear
    Wait Until Element Is Not Visible                   ${reguler_ads_banner}
    Element should not be visible                       ${reguler_ads_banner}

Verify Preroll Do Not Appear
    Wait Until Element Is Not Visible                   ${reguler_ads_preroll}
    Element should not be visible                       ${reguler_ads_preroll}
