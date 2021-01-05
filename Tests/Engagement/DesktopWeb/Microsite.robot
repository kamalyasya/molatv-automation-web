*** Settings ***
Resource                ../../../Frameworks/Routers.robot

Test Timeout            ${DEFAULT_TEST_TIMEOUT}
Test Setup              CommonKeywords.Start Testing       ${URL_BLANK}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL_MICROSITE_UNTUK_KAMU}				            ${HOST}/microsite/untuk-kamu
${URL_MICROSITE_SOFA_KUNING}				        ${HOST}/microsite/sofa-kuning
${URL_MICROSITE_PAKET_HBO}				            ${HOST}/microsite/paket-mola-hbo
${URL_MICROSITE_PARTNER_GOALS}				        ${HOST}/partner/goals


*** Test Cases ***
TC001 - Access mola tv microsite untuk-kamu
    [Documentation]  User able to access mola tv microsite
	[Tags]  Regression

    MicrositePage.Open Microsite Page                       ${URL_MICROSITE_UNTUK_KAMU}
    MicrositePage.Verify Successfully Access MolaTv Microsite Untuk Kamu

TC002 - Access mola tv microsite sofa-kuning
    [Documentation]  User able to access mola tv microsite
	[Tags]  Regression

    MicrositePage.Open Microsite Page                       ${URL_MICROSITE_SOFA_KUNING}
    MicrositePage.Verify Successfully Access MolaTv Microsite Sofa Kuning

TC003 - Access mola tv microsite paket-mola-hbo
    [Documentation]  User able to access mola tv microsite
	[Tags]  Regression

    MicrositePage.Open Microsite Page                       ${URL_MICROSITE_PAKET_HBO}
    MicrositePage.Verify Successfully Access MolaTv Microsite HBO

TC004 - Click button subscribes in mola tv microsite
    [Documentation]  User can subscribes mola tv from microsite
	[Tags]  Regression

    MicrositePage.Open Microsite Page                       ${URL_MICROSITE_UNTUK_KAMU}
    MicrositePage.Click Langganan Sekarang Button On Microsite Untuk Kamu
    SubscriptionPackagePage.Verify On Beli Package Page
    MicrositePage.Open Microsite Page                       ${URL_MICROSITE_SOFA_KUNING}
    MicrositePage.Click Daftar Sekarang Button On Microsite Sofa Kuning
    SubscriptionPackagePage.Verify On Beli Package Page

TC005 - Click other button in mola tv microsite
    [Documentation]  User can get more information from mola tv microsite
	[Tags]  Regression

    MicrositePage.Open Microsite Page                       ${URL_MICROSITE_SOFA_KUNING}
    MicrositePage.Click Download Sekarang Button On Microsite Sofa Kuning
    MicrositePage.Verify User Directed To Download Page
