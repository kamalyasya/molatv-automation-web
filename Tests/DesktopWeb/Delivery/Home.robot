*** Settings ***
Resource                ../../../Frameworks/Routers.robot

Test Timeout            ${DEFAULT_TEST_TIMEOUT}
Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}				                                        ${HOST}
${URL_MOVIE}                                                ${HOST}/watch?v=vd97823877
${EXPECTED_URL_MOVIE}                                       ${URL_MOVIE}

*** Test Cases ***
TC001 Homepage UI
    [Documentation]  Verify UI layout of Home
    [Tags]  Regression  Smoke   Verified

    HomePage.Verify UI Homepage Side Bar Menu
    HomePage.Verify UI Homepage Top Bar Menu
    HomePage.Verify Categories And Content Is Shown

TC002 Homepage Banner
    [Documentation]  UI Verification
    [Tags]  Regression  Smoke   NeedReview  OnGoing

    HomePage.Verify Rail Banner Homepage
    #verifikasi bannernya bergeser otomatis setiap 5 detik
    #verifikasi 4 rail banner di homepage bergerak secara otomatis maupun manual

TC003 Select All Banner
    [Documentation]  Verify the banner can be selected
    [Tags]  Regression  Smoke   NeedReview  OnGoing

    Homepage.Open Login Page
    SignInPage.Login Using Credentials           ${ACCOUNTS_HBO_EMAIL}            ${ACCOUNTS_HBO_PASSWORD}
    Homepage.Verify The App Navigates To Home Page
    Homepage.Verify No empty raiis shown in any page
    HomePage.Click Banner & Verify Banner Can Be Selected
    #yang di click adalah banner(besar) bukan card
    #verifikasi judul film atau jika series, verifikasi judul series

TC004 Continue Watching
    [Documentation]  UI Verification
    [Tags]  Regression  Smoke   NeedReview  OnGoing
    #verifikasi continue watching muncul maksimal 15 VOD
    #Verifikasi jika film urutan ke-n setelah menonton akan berada di urutan pertama

    MovieDetailPage.Go To Movie Detail           ${URL_MOVIE}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials           ${ACCOUNTS_HBO_EMAIL}            ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail            ${EXPECTED_URL_MOVIE}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    HomePage.Verify Card Continue Watching

#TC005 Continue Watching - Timestamp
#    [Documentation]  Verify the remaining time in the VOD will appear in the bottom left corner
#    [Tags]  Regression  Smoke  Skip
#
#    Reason Can't Automated ?            The status for this testcase is N/A

TC006 Continue Watching - Progress bar
    [Documentation]  Verify the time spent in the VOD will appear in the form of a blue bar
    [Tags]  Regression  Smoke   NeedReview  OnGoing
    #verifikasi progress bar sesuai dengan durasi terakhir menonton

    MovieDetailPage.Go To Movie Detail           ${URL_MOVIE}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials           ${ACCOUNTS_HBO_EMAIL}            ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail            ${EXPECTED_URL_MOVIE}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    HomePage.Verify Continue Watching Displayed Under The Banner
    HomePage.Verify Progress Bar Will Appear

TC007 Continue Watching VOD Title
    [Documentation]  Verify The Description of VOD will appear in the bottom of video
    [Tags]  Regression  Smoke   NeedReview  Done
    #Verifikasi judul pada continues watching berada di bawah card

    MovieDetailPage.Go To Movie Detail           ${URL_MOVIE}
    MovieDetailPage.Login from movie detail
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials           ${ACCOUNT_PUTRA_EMAIL}             ${ACCOUNT_PUTRA_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${EXPECTED_URL_MOVIE}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    HomePage.Verify Card Continue Watching
    HomePage.Verify Title VOD In Continues Watching

TC008 Homepage Categories
    [Documentation]  Verify UI layout of Category page in homepage
    [Tags]  Regression  Smoke   NeedVerify
    #Verifikasi bisa scrolling
    #hanya bisa verifikasi judul kategori pada view all

    HomePage.Verify Rail Banner Homepage
    HomePage.Verify Categories And Content Is Shown

TC009 View All Categories
    [Documentation]  Verify the UI of category page after click view all button
    [Tags]  Regression  Smoke   NeedReview
    #sampling 2-5 categories saja

    HomePage.Verify Rail Banner Homepage
    HomePage.Verify Categories And Content Is Shown
    HomePage.Verify the UI of category page after click view all button

TC010 VOD/Match Card
    [Documentation]  Verify the info shown in VOD/Match Card
    [Tags]  Regression  Smoke   NeedReview
    #Verifikasi judul, durasi, cast, sinopsis, dan trailer

    HomePage.Verify the info shown in VOD/Match Card

TC011 Navigate to Movie details
    [Documentation]  Verify Content Movie details page is reachable
    [Tags]  Regression  Smoke   NeedReview
    #Untuk tv series harus ke categories dahulu sebelum ke movie detail page

    MovieDetailPage.Go To Movie Detail           ${URL_MOVIE}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail            ${EXPECTED_URL_MOVIE}

TC012 Back button navigation
    [Documentation]  Verify the back button on the all pages
    [Tags]  Regression  Smoke   NeedReview
    #penambahan back button untuk di view all, tv series, dan menu

    MovieDetailPage.Go To Movie Detail           ${URL_MOVIE}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail            ${EXPECTED_URL_MOVIE}
    HomePage.Verify the back button on the all pages

TC013 Handling Empty Rail
    [Documentation]  Verify No empty raiis shown in any page
    [Tags]  Regression  Smoke   NeedReview
    #memastikan di setiap banner dan kategori muncul gambar
    #pada related video di movie detail page di pastikan muncul

    HomePage.Verify No empty raiis shown in any page

TC014 Handling Empty Title/Thumbnail
    [Documentation]  Verify that no empty tile found in content list/page
    [Tags]  Regression  Smoke   NeedReview
    #Ada 2 opsi yaitu jika title dan deskripsi muncul di verifikasi
    #Jika title dan deskripsi kosong, hanya verifikasi gambarnya saja

    HomePage.Click View All
    HomePage.Verify that no empty tile found in content list/page


TC017 Recommendations

    #Dibuat dinamis dibandingkan gambarnya antara desktop web dan mobile