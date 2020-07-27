*** Settings ***
Resource                ../../../Frameworks/Routers.robot
Library         	    SeleniumLibrary

Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}				                        https://mola.tv/
${EMAIL_SUPERMOLA1}                         supermola1@sapisuper.com
${EMAIL_SUPERMOLA1_PASSWORD}                sapisuper1
${EMAIL_SUPERMOLA1_WRONG_PASSWORD}          sapisuper
${EXPECTED_TEXT_TITLE_ONBOARDING}           Notif Badge
${EXPECTED_TEXT_CONTENT_ONBOARDING}         Klik tombol account untuk melihat menu Inbox

*** Test Cases ***
#TC001 - Show onboarding for notif badge
#    [Documentation]  User can see inbox onboarding from homepage
#	[Tags]  Regression
#
#    HomePage.Open Login Page
#    SignInPage.Login Using Credentials                              ${EMAIL_SUPERMOLA1}                 ${EMAIL_SUPERMOLA1_PASSWORD}
#    HomePage.Verify Inbox Onboarding On Homepage                    ${EXPECTED_TEXT_TITLE_ONBOARDING}   ${EXPECTED_TEXT_CONTENT_ONBOARDING}

TC002 - Click next on every onboarding
    [Documentation]  User can go to the next step with click button next inside the onboarding
	[Tags]  Regression

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                              ${EMAIL_SUPERMOLA1}                 ${EMAIL_SUPERMOLA1_PASSWORD}
    HomePage.Click Next Button And Skip Inbox Onboarding
    HomePage.Open Inbox Page
    Click Next Button On Inbox Filter Per Kategori Onboarding
    Click Next Button On Inbox Sort By Onboarding
    Click Next Button On Inbox Daftar Pesan Onboarding
    Verify There Is No Onboarding Left
