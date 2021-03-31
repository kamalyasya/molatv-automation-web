*** Settings ***
Resource                ../../../Frameworks/Routers.robot

Test Timeout            ${DEFAULT_TEST_TIMEOUT}
Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}                                          ${HOST}/accounts/profile
${URL_MOVIE_DETAIL_BANNED}                      ${HOST}/watch?v=vd93162681

*** Test Cases ***
TC001 UI of My Account Page
    [Documentation]  Check Privacy page at My Account page, Register page and Beli Paket page
	[Tags]  Regression  Verified

    HomePage.Verify The UI Of The User Icon Without Login
    HomePage.Open Login Page
    SignInPage.Login Using Credentials                                      ${ACCOUNT_SUPERMOLA50_EMAIL}        ${ACCOUNT_SUPERMOLA50_PASSWORD}
    HomePage.Verify Menu After Logged In

TC002 Privacy
    [Documentation]  Check Privacy page at My Account page, Register page and Beli Paket page
	[Tags]  Regression  Verified

	HomePage.Open Privasi Page
	PrivacyPage.Verify User Can Open Privacy Page
    # Verify text ke semua text
	# Tambah privacy di register
    HomePage.Open Login Page
	RegistrationPage.Click Register Sekarang
	RegistrationPage.Click Privacy Policy Links On Registration Page
	PrivacyPage.Verify User Can Open Privacy Page

	# Tambah privacy di checkout
	HomePage.Open Beli Akses Menu
	SubscriptionPackagePage.Choose A Package
    SignInPage.Login Using Credentials                              ${ACCOUNT_SUPERMOLA4_EMAIL}             ${ACCOUNT_SUPERMOLA4_PASSWORD}
    SubscriptionPackagePage.Click Privacy Policy Links On Order Page
    PrivacyPage.Verify User Can Open Privacy Page

TC003 Terms & Conditions
    [Documentation]  Check System page at My Account page, Register page, Beli Paket page and User Banning blocker
	[Tags]  Regression  Verified

	HomePage.Open Syarat Dan Ketentuan Page
	TermsConditionsPage.Verify User Can Open Syarat Dan Ketentuan Page
    # Verify text ke semua text
    # Tambah privacy di register
	HomePage.Open Login Page
	RegistrationPage.Click Register Sekarang
	RegistrationPage.Click Terms And Condition Links On Registration Page
	TermsConditionsPage.Verify User Can Open Syarat Dan Ketentuan Page

	# Tambah privacy di checkout
	HomePage.Open Beli Akses Menu
	SubscriptionPackagePage.Choose A Package
    SignInPage.Login Using Credentials                              ${ACCOUNT_SUPERMOLA4_EMAIL}             ${ACCOUNT_SUPERMOLA4_PASSWORD}
    SubscriptionPackagePage.Click Terms And Condition Links On Order Page
    TermsConditionsPage.Verify User Can Open Syarat Dan Ketentuan Page
    Logout Account

	# Tambah user di banned (video player)
    HomePage.Open Login Page
    SignInPage.Login Using Credentials                              ${ACCOUNT_BANNED_EMAIL}     ${ACCOUNT_BANNED_PASSWORD}
    MovieDetailPage.Go To Movie Detail                              ${URL_MOVIE_DETAIL_BANNED}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Click Terms And Condition On Blocked Player
    TermsConditionsPage.Verify User Can Open Syarat Dan Ketentuan Page
    Logout Account