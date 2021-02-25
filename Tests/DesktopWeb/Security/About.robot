*** Settings ***
Resource                ../../../Frameworks/Routers.robot

Test Timeout            ${DEFAULT_TEST_TIMEOUT}
Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}                  ${HOST}/accounts/profile

${EXPECTED_TEXT_PRIVASI_TITLE_KEBIJAKAN_PRIVASI}                KEBIJAKAN PRIVASI
${EXPECTED_TEXT_TERMS_CONDITIONS_TITLE_KEBIJAKAN_PRIVASI}       A. KETENTUAN UMUM
${EXPECTED_TEXT_PRIVASI_FIRST_PARAGRAPH}                        Kebijakan Privasi ini (“Kebijakan Privasi”) tunduk pada Syarat dan Ketentuan dan merupakan satu kesatuan dan bagian yang tidak terpisahkan dari Syarat dan Ketentuan. Istilah dan definisi yang digunakan pada Kebijakan Privasi ini merujuk pada istilah dan definisi yang digunakan pada Syarat dan Ketentuan.
${EXPECTED_TEXT_TERMS_CONDITIONS_FIRST_PARAGRAPH}               Ketentuan Umum di bawah ini (“Ketentuan Umum”) harus dibaca sebelum pengunjung maupun pengguna ("Anda") menggunakan Platform Layanan ini. Penggunaan Platform Layanan ini menunjukkan penerimaan, persetujuan dan kepatuhan Anda terhadap Ketentuan Umum ini beserta Kebijakan Privasi dan setiap dokumen lainnya yang terkait.

*** Test Cases ***
TC001 UI of My Account Page
    [Documentation]  Check Privacy page at My Account page, Register page and Beli Paket page
	[Tags]  Regression

    HomePage.Verify The UI Of The User Icon Without Login
    HomePage.Open Login Page
    SignInPage.Login Using Credentials                                      ${ACCOUNT_SUPERMOLA50_EMAIL}        ${ACCOUNT_SUPERMOLA50_PASSWORD}
    HomePage.Verify Menu After Logged In

TC002 Privacy
    [Documentation]  Check Privacy page at My Account page, Register page and Beli Paket page
	[Tags]  Regression

	HomePage.Open Privasi Page
	PrivacyPage.Verify User Can Open Privacy Page                           ${EXPECTED_TEXT_PRIVASI_TITLE_KEBIJAKAN_PRIVASI}                     ${EXPECTED_TEXT_PRIVASI_FIRST_PARAGRAPH}

TC003 Terms & Conditions
    [Documentation]  Check System page at My Account page, Register page, Beli Paket page and User Banning blocker
	[Tags]  Regression

	HomePage.Open Syarat Dan Ketentuan Page
	TermsConditionsPage.Verify User Can Open Syarat Dan Ketentuan Page      ${EXPECTED_TEXT_TERMS_CONDITIONS_TITLE_KEBIJAKAN_PRIVASI}            ${EXPECTED_TEXT_TERMS_CONDITIONS_FIRST_PARAGRAPH}