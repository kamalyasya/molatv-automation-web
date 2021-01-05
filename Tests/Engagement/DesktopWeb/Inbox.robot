*** Settings ***
Resource                ../../../Frameworks/Routers.robot
Library         	    SeleniumLibrary

Test Timeout            ${DEFAULT_TEST_TIMEOUT}
Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}				                                        https://mola.tv/

*** Test Cases ***
TC001 - Access inbox non-login user
    [Documentation]  User try to access inbox from mola.tv web
	[Tags]  Regression

    HomePage.Open Login Page
    InboxPage.Verify Show Button Login Displayed To Access Inbox

TC002 - Access inbox login user
    [Documentation]  Login user can access inbox
	[Tags]  Regression

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                  ${ACCOUNT_SUPERMOLA31_EMAIL}               ${ACCOUNT_SUPERMOLA31_PASSWORD}
    HomePage.Open Inbox Page
    InboxPage.Click Skip Button On Onboarding
    InboxPage.Verify Direct To Inbox Page

TC003 - User get new inbox
    [Documentation]  TC003 - User get new inbox
	[Tags]  Regression

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                  ${ACCOUNT_SUPERMOLA32_EMAIL}               ${ACCOUNT_SUPERMOLA32_PASSWORD}
    Verify Count Number Is Shown

TC004 - Inbox list impression
    [Documentation]  User can see inbox list
	[Tags]  Regression

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                  ${ACCOUNT_SUPERMOLA31_EMAIL}               ${ACCOUNT_SUPERMOLA31_PASSWORD}
    HomePage.Open Inbox Page
    InboxPage.Click Skip Button On Onboarding
    InboxPage.Verify Direct To Inbox Page
    InboxPage.Verify Inbox List

TC005 - User filter inbox by category
    [Documentation]  User can filter inbox by category
	[Tags]  Regression

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                  ${ACCOUNT_SUPERMOLA31_EMAIL}                ${ACCOUNT_SUPERMOLA31_PASSWORD}
    HomePage.Open Inbox Page
    InboxPage.Click Skip Button On Onboarding
    InboxPage.Click Filter Promotions
    InboxPage.Verify Filter Promotions
    InboxPage.Click Filter Messages
    InboxPage.Verify Filter Messages

TC006 - Sorting by latest
    [Documentation]  User can sort inbox by latest received
	[Tags]  Regression

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                  ${ACCOUNT_SUPERMOLA31_EMAIL}               ${ACCOUNT_SUPERMOLA31_PASSWORD}
    HomePage.Open Inbox Page
    InboxPage.Click Skip Button On Onboarding
    InboxPage.Sorting By Latest
    Verify Sorting By Latest

TC007 - Sorting by oldest
    [Documentation]  User can sort inbox by oldest received
	[Tags]  Regression

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                  ${ACCOUNT_SUPERMOLA31_EMAIL}               ${ACCOUNT_SUPERMOLA31_PASSWORD}
    HomePage.Open Inbox Page
    InboxPage.Click Skip Button On Onboarding
    InboxPage.Sorting By Oldest
    Verify Sorting By Oldest

TC008 - User has no inbox
    [Documentation]  User can sort inbox by oldest received
	[Tags]  Regression

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                  ${ACCOUNT_SUPERMOLA1_EMAIL}               ${ACCOUNT_SUPERMOLA1_PASSWORD}
    HomePage.Open Inbox Page
    InboxPage.Click Skip Button On Onboarding
    InboxPage.Verify Empty State Is Shown

TC010 - User click button in inbox detail
    [Documentation]  User can click button inside inbox message
	[Tags]  Regression

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                  ${ACCOUNT_SUPERMOLA31_EMAIL}              ${ACCOUNT_SUPERMOLA31_PASSWORD}
    HomePage.Open Inbox Page
    InboxPage.Click Skip Button On Onboarding
    InboxPage.Open Message
    InboxPage.Verify User Can Open Message              title promotions                          content promotions

TC011 - User back to inbox list from inbox detail
    [Documentation]  User can back to inbox list from inbox detail
	[Tags]  Regression

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                  ${ACCOUNT_SUPERMOLA31_EMAIL}              ${ACCOUNT_SUPERMOLA31_PASSWORD}
    HomePage.Open Inbox Page
    InboxPage.Click Skip Button On Onboarding
    InboxPage.Open Message
    InboxPage.Back From Inbox Detail
    InboxPage.Verify Inbox List

TC013 - User want to show all inbox
    [Documentation]  User can load all the inbox
	[Tags]  Regression

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                  ${ACCOUNT_SUPERMOLA21_EMAIL}              ${ACCOUNT_SUPERMOLA21_PASSWORD}
    HomePage.Open Inbox Page
    InboxPage.Click Skip Button On Onboarding
    InboxPage.Click Load More Button
    InboxPage.Verify User Can Load More Message