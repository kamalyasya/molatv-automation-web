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
TC001 - Show onboarding for notif badge
    [Documentation]  User can see inbox onboarding from homepage
	[Tags]  Regression

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                              ${EMAIL_SUPERMOLA1}                 ${EMAIL_SUPERMOLA1_PASSWORD}
    HomePage.Verify Inbox Onboarding On Homepage                    ${EXPECTED_TEXT_TITLE_ONBOARDING}   ${EXPECTED_TEXT_CONTENT_ONBOARDING}