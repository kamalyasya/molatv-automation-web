*** Settings ***
Resource                ../../../Frameworks/Routers.robot

Test Timeout            ${DEFAULT_TEST_TIMEOUT}
Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}                                  ${HOST}/
${URL_MOVIE}                            ${HOST}/watch?v=vd97823877
${EXPECTED_URL_MOVIE}                   ${URL_MOVIE}
${EXPECTED_TEXT_MENU_HOME}              Home


*** Test Cases ***
TC001 - Discover mola card standings
    [Documentation]     User can discover mola card standings
    ...             User already login/not
    [Tags]  Regression  Smoke  Verified

    HomePage.Open Login Page
    SignInPage.Login Using Credentials              ${ACCOUNT_KAMAL_EMAIL}      ${ACCOUNT_KAMAL_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account      ${ACCOUNT_KAMAL_EMAIL}
    MolaClassementPage.Click Browse In Sidebar
    MolaClassementPage.Click Sports
    MolaClassementPage.Click Premiere League Football Competitions
    MolaClassementPage.Click Premiere League
    #    Tambahan Goals nya Harus Muncul Standing Card dengan CSS nya nanti : [class='carouselWrapper css-1k87zi']
    MolaClassementPage.Verify Standing Card Premiere League Page
    Logout Account

TC002 - Discover mola standings
    [Documentation]     User can discover mola classement standings
    ...             User already login/not
    [Tags]  Regression  Smoke   Need Review

    HomePage.Open Login Page
    SignInPage.Login Using Credentials              ${ACCOUNT_KAMAL_EMAIL}      ${ACCOUNT_KAMAL_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account      ${ACCOUNT_KAMAL_EMAIL}
    MolaClassementPage.Click Browse In Sidebar
    MolaClassementPage.Click Sports
    MolaClassementPage.Click Premiere League Football Competitions
    MolaClassementPage.Click Premiere League
    MolaClassementPage.Click "View Full Table" In Mola Card Standings
    #   Tambahan Goals nya Harus Muncul Standing Card dengan CSS nya nanti : .standingsWrapper

    Logout Account

TC003 - Mola card standings impression
    [Documentation]     User can see all components inside mola classement card
    ...             User already login/not
    [Tags]  Regression  Smoke

    HomePage.Open Login Page
    SignInPage.Login Using Credentials              ${ACCOUNT_KAMAL_EMAIL}      ${ACCOUNT_KAMAL_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account      ${ACCOUNT_KAMAL_EMAIL}
    MolaClassementPage.Click Browse In Sidebar
    MolaClassementPage.Click Sports
    MolaClassementPage.Click Premiere League Football Competitions
    MolaClassementPage.Click Premiere League
    #    Tambahan Goals nya Harus Muncul Standing Card dan Detail Isi dari Tiap Kotaknya + total 20 Card dengan CSS nya nanti : [class] [tabindex='-1']:nth-of-type(3) .team-detail
    Logout Account

TC004 - Mola standings page impression
    [Documentation]     User can see all components inside mola classement table
    ...             User already login/not
    [Tags]  Regression  Smoke

    HomePage.Open Login Page
    SignInPage.Login Using Credentials              ${ACCOUNT_KAMAL_EMAIL}      ${ACCOUNT_KAMAL_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account      ${ACCOUNT_KAMAL_EMAIL}
    MolaClassementPage.Click Browse In Sidebar
    MolaClassementPage.Click Sports
    MolaClassementPage.Click Premiere League Football Competitions
    MolaClassementPage.Click Premiere League
    MolaClassementPage.Click "View Full Table" In Mola Card Standings
    #    Tambahan Goals nya Harus Checking Dari CSS:.standingsTitle + css=.standingsHeading-filer + css=thead > tr + css=.table-standings > tbody Dan Pecahan Dari Boddy nya
    Logout Account

TC005 - Sliding mola card standings
    [Documentation]     User can see next standings cards in carousel mode
    ...             User already login/not
    [Tags]  Regression  Smoke

    HomePage.Open Login Page
    SignInPage.Login Using Credentials              ${ACCOUNT_KAMAL_EMAIL}      ${ACCOUNT_KAMAL_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account      ${ACCOUNT_KAMAL_EMAIL}
    MolaClassementPage.Click Browse In Sidebar
    MolaClassementPage.Click Sports
    MolaClassementPage.Click Premiere League Football Competitions
    MolaClassementPage.Click Premiere League
    MolaClassementPage.Click next/previous arrow in right and left sides of carousel
    #   Tambahannya Untuk left sides of carousel Cukup 1 Kali Aja Pilih Side nya css=[class='carouselWrapper css-6exqqo'] .css-u1zq1d
    Logout Account

#   Untuk Testcase Nomor 6 dan 7 sedang HoldOn and Status In : N/A
#TC006 - Sort standings by league
#    [Documentation]     User can choose league standings that they want to show
#    ...             User already in mola standings page
#    [Tags]  Regression  Smoke
#
#    HomePage.Open Login Page
#    SignInPage.Login Using Credentials              ${ACCOUNT_KAMAL_EMAIL}      ${ACCOUNT_KAMAL_PASSWORD}
#    ProfilePage.Verify Logged In Using Correct Account      ${ACCOUNT_KAMAL_EMAIL}
#    MolaClassementPage.Click Browse In Sidebar
#    MolaClassementPage.Click Sports
#    MolaClassementPage.Click Premiere League Football Competitions
#    MolaClassementPage.Select the league in dropdown that you want to show
#    Logout Account
#
#TC007 - Sort standings by gameweek
#    [Documentation]     User can choose gameweek that they want to show
#    ...             User already in mola standings page
#    [Tags]  Regression  Smoke
#
#    HomePage.Open Login Page
#    SignInPage.Login Using Credentials              ${ACCOUNT_KAMAL_EMAIL}      ${ACCOUNT_KAMAL_PASSWORD}
#    ProfilePage.Verify Logged In Using Correct Account      ${ACCOUNT_KAMAL_EMAIL}
#    MolaClassementPage.Click Browse In Sidebar
#    MolaClassementPage.Click Sports
#    MolaClassementPage.Click mola standings gameweek sorting option in the left sides
#    MolaClassementPage.Select the gameweek in dropdown that you want to show
#    Logout Account

TC008 - Scroll up/down in mola standings page
    [Documentation]     User can scroll up and down inside the page to show all standings
    ...             User already in mola standings page
    [Tags]  Regression  Smoke

    HomePage.Open Login Page
    SignInPage.Login Using Credentials              ${ACCOUNT_KAMAL_EMAIL}      ${ACCOUNT_KAMAL_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account      ${ACCOUNT_KAMAL_EMAIL}
    MolaClassementPage.Click Browse In Sidebar
    MolaClassementPage.Click Sports
    MolaClassementPage.Click Premiere League Football Competitions
    MolaClassementPage.Click Premiere League
    MolaClassementPage.Click "View Full Table" In Mola Card Standings
    MolaClassementPage.Scroll page up and down by scrolling using the mouse or trackpad
    MolaClassementPage.Scroll page up and down by click and drag scrollbar manually
    Logout Account

TC009 - Discover mola standings from matches page
    [Documentation]     User can discover mola standings from matches page
    ...             User already login/not
    [Tags]  Regression  Smoke

    HomePage.Open Login Page
    SignInPage.Login Using Credentials              ${ACCOUNT_KAMAL_EMAIL}      ${ACCOUNT_KAMAL_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account      ${ACCOUNT_KAMAL_EMAIL}
    HomePage.Verify The App Navigates To Home Page                  ${EXPECTED_TEXT_MENU_HOME}
    HomePage.Open Matches Page
    MolaClassementPage.Click trophy icon
    # Pokoknya Goals Nya Sudah dapat di Clicking untuk Trofi nya dan masuk ke Standing Bar Clasment.
    HomePage.Open Matches Page
    MolaClassementPage.test1

TC010 - Discover mola card standings in matches page
    [Documentation]     User can discover mola card standings from https://mola.tv/league-matches/league-epl
    ...             User already login/not , User already in matches page
    [Tags]  Regression  Smoke

    HomePage.Open Login Page
    SignInPage.Login Using Credentials              ${ACCOUNT_KAMAL_EMAIL}      ${ACCOUNT_KAMAL_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account      ${ACCOUNT_KAMAL_EMAIL}
    HomePage.Open Matches Page
    MolaClassementPage.test2
    #    Untuk Goals yang Ini Temukan Standing Cards Pada Section Atau Playlist Premier League Only, In Today Or Next Day Until Define the Content Premier League.