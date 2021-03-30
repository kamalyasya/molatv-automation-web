*** Settings ***
Resource            ../../Frameworks/Routers.robot

*** Variables ***
# Choose Package Page
${text_subscription_package_title_beli_paket}           css=._1NGTJ
${button_subscription_package_beli_paket_1}             xpath=//button[text()='Subscribe Now']

# Package
${text_subscription_package_1st_package_title}          css=div:nth-of-type(2) > * > * > h4
${text_subscription_package_1st_package_price}          css=div:nth-of-type(2) > * > * > h5
${button_subscription_package_1st_package_subscribe_now}  css=div:nth-of-type(2) > * > .css-1o01cj2

# Check your order Page
${text_subscription_package_title_order_page}           xpath=//div[text()='Check your order']
${button_subscription_package_selected_package}         css=h1
${text_subscription_order_selected_package_title}       css=h1
${text_subscription_order_selected_package_price}       css=._2wB27
${text_subscription_order_selected_package_title_detail}  css=div:nth-of-type(2) > *._30oX2
${text_subscription_order_selected_package_price_detail}  css=div:nth-of-type(2) > ._3s9L6
${text_subscription_order_selected_package_total}       css=._2DftN._2Hdby._37n17._3s9L6

# Terms Condition and Privacy Policy
${links_subscription_order_term_conditions}             css=p > a:nth-of-type(1)
${links_subscription_order_privacy_policy}              css=p > a:nth-of-type(2)


*** Keywords ***
Choose A Package
    Wait Until Element Is Visible                       ${text_subscription_package_title_beli_paket}
    Wait Until Element Is Visible                       ${text_subscription_package_1st_package_title}
    Wait Until Element Is Visible                       ${text_subscription_package_1st_package_price}
    Wait Until Element Is Visible                       ${button_subscription_package_1st_package_subscribe_now}
    ${TITLE_PACKAGE} =      Catenate                    Premium Entertainment 1 Month
#    ${TITLE_PACKAGE} =      Get Text                    ${text_subscription_package_1st_package_title}
    ${PRICE_PACKAGE} =      Get Text                    ${text_subscription_package_1st_package_price}
    ${PRICE_PACKAGE} =      Remove String Using Regexp  ${PRICE_PACKAGE}    \/(.*)
    Set Test Variable       ${TITLE_PACKAGE}
    Set Test Variable       ${PRICE_PACKAGE}

    Wait Until Element Is Visible                       ${button_subscription_package_1st_package_subscribe_now}
    Click Element                                       ${button_subscription_package_1st_package_subscribe_now}

Verify On Beli Package Page
    Wait Until Element Is Visible                       ${text_subscription_package_title_order_page}
    Wait Until Element Is Visible                       ${button_subscription_package_selected_package}
    Element Should Be Visible                           ${text_subscription_package_title_order_page}
    Element Should Be Visible                           ${button_subscription_package_selected_package}

Verify Subscription Plan Page Is Opened
    Wait Until Element Is Visible                       ${text_subscription_package_title_beli_paket}
    Wait Until Element Is Visible                       ${button_subscription_package_beli_paket_1}
    Element Should Be Visible                           ${text_subscription_package_title_beli_paket}
    Element Should Be Visible                           ${button_subscription_package_beli_paket_1}

Verify Directed To Checkout Page According To The Package Selected
    [Documentation]     Need Keyword "Choose A Package" that contains variable $ {TITLE_PACKAGE}     $ {PRICE_PACKAGE}
    Wait Until Element Is Visible                       ${text_subscription_package_title_order_page}
    Wait Until Element Is Visible                       ${text_subscription_order_selected_package_title}
    Element Should Contain                              ${text_subscription_order_selected_package_title}                   ${TITLE_PACKAGE}
    Wait Until Element Is Visible                       ${text_subscription_order_selected_package_price}
    Element Should Contain                              ${text_subscription_order_selected_package_price}                   ${PRICE_PACKAGE}
    Wait Until Element Is Visible                       ${text_subscription_order_selected_package_title_detail}
    Element Should Contain                              ${text_subscription_order_selected_package_title_detail}            ${TITLE_PACKAGE}
    Wait Until Element Is Visible                       ${text_subscription_order_selected_package_price_detail}
    Element Should Contain                              ${text_subscription_order_selected_package_price_detail}            ${PRICE_PACKAGE}
    Wait Until Element Is Visible                       ${text_subscription_order_selected_package_total}
    Element Should Contain                              ${text_subscription_order_selected_package_total}                   ${PRICE_PACKAGE}

Click Terms And Condition Links On Order Page
    Wait Until Element Is Visible                       ${links_subscription_order_term_conditions}
    Click Element                                       ${links_subscription_order_term_conditions}

Click Privacy Policy Links On Order Page
    Wait Until Element Is Visible                       ${links_subscription_order_privacy_policy}
    Click Element                                       ${links_subscription_order_privacy_policy}