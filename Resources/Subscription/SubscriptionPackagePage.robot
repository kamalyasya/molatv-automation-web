*** Settings ***
Resource            ../../Frameworks/Routers.robot

*** Variables ***
# Choose Package Page
${text_subscription_package_title_beli_paket}           css=._1NGTJ
${button_subscription_package_beli_paket_1}             xpath=//button[text()='Subscribe Now']

# Check your order Page
${text_subscription_package_title_order_page}           xpath=//div[text()='Check your order']
${button_subscription_package_selected_package}         css=h1

*** Keywords ***
Choose A Package
    Wait Until Element Is Visible                       ${text_subscription_package_title_beli_paket}
    Wait Until Element Is Visible                       ${button_subscription_package_beli_paket_1}
    Click Element                                       ${button_subscription_package_beli_paket_1}

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
