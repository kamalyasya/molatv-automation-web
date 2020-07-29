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
${EXPECTED_TEXT_TITLE_FILTER_PERKATEGORI_ONBOARDING}        Filter per Kategori
${EXPECTED_TEXT_CONTENT_FILTER_PERKATEGORI_ONBOARDING}      Kamu bisa menyaring pesan berdasarkan dari promo, pesan dari Mola, status berlangganan kamu, dan status pembayaran kamu.
${EXPECTED_TEXT_TITLE_SORT_BY_ONBOARDING}                   Sort By
${EXPECTED_TEXT_CONTENT_SORT_BY_ONBOARDING}                 Urutkan daftar pesan kamu berdasarkan tempo waktu tertentu
${EXPECTED_TEXT_TITLE_DAFTAR_PESAN_ONBOARDING}              Daftar Pesan
${EXPECTED_TEXT_CONTENT_DAFTAR_PESAN_ONBOARDING}            Semua daftar pesan Kamu, bisa lihat disini ya!
*** Test Cases ***
TC001 - Show onboarding for notif badge
    [Documentation]  User can see inbox onboarding from homepage
	[Tags]  Regression

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                              ${EMAIL_SUPERMOLA1}                 ${EMAIL_SUPERMOLA1_PASSWORD}
    HomePage.Verify Inbox Onboarding On Homepage                    ${EXPECTED_TEXT_TITLE_ONBOARDING}   ${EXPECTED_TEXT_CONTENT_ONBOARDING}

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

TC003 - Click back on some onboarding
    [Documentation]  User can back to the previous step with click back button inside the onboarding
	[Tags]  Regression

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                              ${EMAIL_SUPERMOLA1}                 ${EMAIL_SUPERMOLA1_PASSWORD}
    HomePage.Click Next Button And Skip Inbox Onboarding
    HomePage.Open Inbox Page
    Click Next Button On Inbox Filter Per Kategori Onboarding
    Click Next Button On Inbox Sort By Onboarding
    Verify Inbox Daftar Pesan Onboarding Is Displayed               ${EXPECTED_TEXT_TITLE_DAFTAR_PESAN_ONBOARDING}      ${EXPECTED_TEXT_CONTENT_DAFTAR_PESAN_ONBOARDING}
    Click Back Button On Onboarding
    Verify Inbox Sort By Onboarding Is Displayed                    ${EXPECTED_TEXT_TITLE_SORT_BY_ONBOARDING}           ${EXPECTED_TEXT_CONTENT_SORT_BY_ONBOARDING}
    Click Back Button On Onboarding
    Verify Inbox Filter Per Kategori Onboarding Is Displayed        ${EXPECTED_TEXT_TITLE_FILTER_PERKATEGORI_ONBOARDING}    ${EXPECTED_TEXT_CONTENT_FILTER_PERKATEGORI_ONBOARDING}

TC004 - Click skip on some onboarding
    [Documentation]  User can back to the previous step with click back button inside the onboarding
	[Tags]  Regression

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                              ${EMAIL_SUPERMOLA1}                 ${EMAIL_SUPERMOLA1_PASSWORD}
    HomePage.Click Next Button And Skip Inbox Onboarding
    HomePage.Open Inbox Page

TC005 - Show onboarding for filter category
    [Documentation]  User can see onboarding in inbox list
	[Tags]  Regression

	HomePage.Open Login Page
    SignInPage.Login Using Credentials                              ${EMAIL_SUPERMOLA1}                 ${EMAIL_SUPERMOLA1_PASSWORD}
    HomePage.Click Next Button And Skip Inbox Onboarding
    HomePage.Open Inbox Page
    Verify Inbox Filter Per Kategori Onboarding Is Displayed        ${EXPECTED_TEXT_TITLE_FILTER_PERKATEGORI_ONBOARDING}    ${EXPECTED_TEXT_CONTENT_FILTER_PERKATEGORI_ONBOARDING}

TC006 - Show onboarding for sorting
    [Documentation]  User can see onboarding in inbox list
	[Tags]  Regression

	HomePage.Open Login Page
    SignInPage.Login Using Credentials                              ${EMAIL_SUPERMOLA1}                 ${EMAIL_SUPERMOLA1_PASSWORD}
    HomePage.Click Next Button And Skip Inbox Onboarding
    HomePage.Open Inbox Page
    Click Next Button On Inbox Filter Per Kategori Onboarding
    Verify Inbox Sort By Onboarding Is Displayed                    ${EXPECTED_TEXT_TITLE_SORT_BY_ONBOARDING}           ${EXPECTED_TEXT_CONTENT_SORT_BY_ONBOARDING}

TC007 - Show onboarding for inbox list
    [Documentation]  User can see onboarding in inbox list
	[Tags]  Regression

	HomePage.Open Login Page
    SignInPage.Login Using Credentials                              ${EMAIL_SUPERMOLA1}                 ${EMAIL_SUPERMOLA1_PASSWORD}
    HomePage.Click Next Button And Skip Inbox Onboarding
    HomePage.Open Inbox Page
    Click Next Button On Inbox Filter Per Kategori Onboarding
    Click Next Button On Inbox Sort By Onboarding
    Verify Inbox Daftar Pesan Onboarding Is Displayed               ${EXPECTED_TEXT_TITLE_DAFTAR_PESAN_ONBOARDING}      ${EXPECTED_TEXT_CONTENT_DAFTAR_PESAN_ONBOARDING}

TC008 - Click Finish on some onboarding
    [Documentation]  User finishing the onboarding by click button "finish" in the end of onboarding
	[Tags]  Regression

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                              ${EMAIL_SUPERMOLA1}                 ${EMAIL_SUPERMOLA1_PASSWORD}
    HomePage.Click Next Button And Skip Inbox Onboarding
    HomePage.Open Inbox Page
    Click Next Button On Inbox Filter Per Kategori Onboarding
    Click Next Button On Inbox Sort By Onboarding
    Verify Inbox Daftar Pesan Onboarding Is Displayed               ${EXPECTED_TEXT_TITLE_DAFTAR_PESAN_ONBOARDING}      ${EXPECTED_TEXT_CONTENT_DAFTAR_PESAN_ONBOARDING}
    Click Finish Button On Daftar Pesan Onboarding
    Verify There Is No Onboarding Left
