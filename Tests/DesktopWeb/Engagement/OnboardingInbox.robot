*** Settings ***
Resource                ../../../Frameworks/Routers.robot

Test Timeout            ${DEFAULT_TEST_TIMEOUT}
Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}				                                        ${HOST}

${EXPECTED_TEXT_TITLE_ONBOARDING}                           Notif Badge
${EXPECTED_TEXT_CONTENT_ONBOARDING}                         Klik tombol account untuk melihat menu Inbox
${EXPECTED_TEXT_TITLE_FILTER_PERKATEGORI_ONBOARDING}        Filter by Category
${EXPECTED_TEXT_CONTENT_FILTER_PERKATEGORI_ONBOARDING}      You can filter messages based on promotions, messages from Mola, your subscription status, and your payment status.
${EXPECTED_TEXT_TITLE_SORT_BY_ONBOARDING}                   Sort By
${EXPECTED_TEXT_CONTENT_SORT_BY_ONBOARDING}                 Sort your list of messages based on a certain time.
${EXPECTED_TEXT_TITLE_DAFTAR_PESAN_ONBOARDING}              Message List
${EXPECTED_TEXT_CONTENT_DAFTAR_PESAN_ONBOARDING}            All your message lists, can see here!
*** Test Cases ***
#TC001 - Show onboarding for notif badge
#    [Documentation]  User can see inbox onboarding from Homepage
#	[Tags]  Regression
#
#    HomePage.Open Login Page
#    SignInPage.Login Using Credentials                              ${EMAIL_SUPERMOLA1}                 ${EMAIL_SUPERMOLA1_PASSWORD}
#    HomePage.Verify Inbox Onboarding On Homepage                    ${EXPECTED_TEXT_TITLE_ONBOARDING}   ${EXPECTED_TEXT_CONTENT_ONBOARDING}

TC002 - Click next on every onboarding
    [Documentation]  User can go to the next step with click button next inside the onboarding
	[Tags]  Regression  NeedReview

    HomePage.Open Login Page
    SignInPage.Restore Existing Cookies Or Relogin                              ${ACCOUNT_SUPERMOLA1_EMAIL}                 ${ACCOUNT_SUPERMOLA1_PASSWORD}
    HomePage.Open Inbox Page
    InboxPage.Click Next Button On Inbox Filter Per Kategori Onboarding
    # InboxPage.Click Next Button On Inbox Sort By Onboarding               // Sort By Onbording removed
    InboxPage.Click Next Button On Inbox Daftar Pesan Onboarding
    InboxPage.Verify There Is No Onboarding Left

TC003 - Click back on some onboarding
    [Documentation]  User can back to the previous step with click back button inside the onboarding
	[Tags]  Regression  NeedReview

    HomePage.Open Login Page
    SignInPage.Restore Existing Cookies Or Relogin                              ${ACCOUNT_SUPERMOLA1_EMAIL}                 ${ACCOUNT_SUPERMOLA1_PASSWORD}
    HomePage.Open Inbox Page
    InboxPage.Click Next Button On Inbox Filter Per Kategori Onboarding
    # InboxPage.Click Next Button On Inbox Sort By Onboarding               // Sort By Onbording removed
    InboxPage.Verify Inbox Daftar Pesan Onboarding Is Displayed               ${EXPECTED_TEXT_TITLE_DAFTAR_PESAN_ONBOARDING}            ${EXPECTED_TEXT_CONTENT_DAFTAR_PESAN_ONBOARDING}
    # InboxPage.Click Back Button On Onboarding
    # InboxPage.Verify Inbox Sort By Onboarding Is Displayed                    ${EXPECTED_TEXT_TITLE_SORT_BY_ONBOARDING}                 ${EXPECTED_TEXT_CONTENT_SORT_BY_ONBOARDING}
    InboxPage.Click Back Button On Onboarding
    InboxPage.Verify Inbox Filter Per Kategori Onboarding Is Displayed        ${EXPECTED_TEXT_TITLE_FILTER_PERKATEGORI_ONBOARDING}      ${EXPECTED_TEXT_CONTENT_FILTER_PERKATEGORI_ONBOARDING}

TC004 - Click skip on some onboarding
    [Documentation]  User can back to the previous step with click back button inside the onboarding
	[Tags]  Regression  NeedReview

    HomePage.Open Login Page
    SignInPage.Restore Existing Cookies Or Relogin                  ${ACCOUNT_SUPERMOLA1_EMAIL}                 ${ACCOUNT_SUPERMOLA1_PASSWORD}
    HomePage.Open Inbox Page

TC005 - Show onboarding for filter category
    [Documentation]  User can see onboarding in inbox list
	[Tags]  Regression  NeedReview

	HomePage.Open Login Page
    SignInPage.Restore Existing Cookies Or Relogin                  ${ACCOUNT_SUPERMOLA1_EMAIL}                 ${ACCOUNT_SUPERMOLA1_PASSWORD}
    HomePage.Open Inbox Page
    InboxPage.Verify Inbox Filter Per Kategori Onboarding Is Displayed      ${EXPECTED_TEXT_TITLE_FILTER_PERKATEGORI_ONBOARDING}    ${EXPECTED_TEXT_CONTENT_FILTER_PERKATEGORI_ONBOARDING}

TC006 - Show onboarding for sorting
    [Documentation]  User can see onboarding in inbox list
	[Tags]  Regression  Skip

	HomePage.Open Login Page
    SignInPage.Restore Existing Cookies Or Relogin                                      ${ACCOUNT_SUPERMOLA1_EMAIL}                 ${ACCOUNT_SUPERMOLA1_PASSWORD}
    HomePage.Open Inbox Page
    InboxPage.Click Next Button On Inbox Filter Per Kategori Onboarding
    InboxPage.Verify Inbox Sort By Onboarding Is Displayed                  ${EXPECTED_TEXT_TITLE_SORT_BY_ONBOARDING}         ${EXPECTED_TEXT_CONTENT_SORT_BY_ONBOARDING}

TC007 - Show onboarding for inbox list
    [Documentation]  User can see onboarding in inbox list
	[Tags]  Regression  NeedReview

	HomePage.Open Login Page
    SignInPage.Restore Existing Cookies Or Relogin                                      ${ACCOUNT_SUPERMOLA1_EMAIL}                         ${ACCOUNT_SUPERMOLA1_PASSWORD}
    HomePage.Open Inbox Page
    InboxPage.Click Next Button On Inbox Filter Per Kategori Onboarding
    # InboxPage.Click Next Button On Inbox Sort By Onboarding               // Sort By Onbording removed
    InboxPage.Verify Inbox Daftar Pesan Onboarding Is Displayed             ${EXPECTED_TEXT_TITLE_DAFTAR_PESAN_ONBOARDING}      ${EXPECTED_TEXT_CONTENT_DAFTAR_PESAN_ONBOARDING}

TC008 - Click Finish on some onboarding
    [Documentation]  User finishing the onboarding by click button "finish" in the end of onboarding
	[Tags]  Regression  NeedReview

    HomePage.Open Login Page
    SignInPage.Restore Existing Cookies Or Relogin                                      ${ACCOUNT_SUPERMOLA1_EMAIL}                         ${ACCOUNT_SUPERMOLA1_PASSWORD}
    HomePage.Open Inbox Page
    InboxPage.Click Next Button On Inbox Filter Per Kategori Onboarding
    # InboxPage.Click Next Button On Inbox Sort By Onboarding               // Sort By Onbording removed
    InboxPage.Verify Inbox Daftar Pesan Onboarding Is Displayed             ${EXPECTED_TEXT_TITLE_DAFTAR_PESAN_ONBOARDING}      ${EXPECTED_TEXT_CONTENT_DAFTAR_PESAN_ONBOARDING}
    InboxPage.Click Finish Button On Daftar Pesan Onboarding
    InboxPage.Verify There Is No Onboarding Left
