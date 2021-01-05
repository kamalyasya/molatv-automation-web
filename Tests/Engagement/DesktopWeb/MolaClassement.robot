*** Settings ***
Resource                ../../../Frameworks/Routers.robot
Library         	    SeleniumLibrary
Library 				String

Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}                                  https://mola.tv/
${URL_MOVIE}                            https://mola.tv/watch?v=vd97823877
${EXPECTED_URL_MOVIE}                   ${URL_MOVIE}
${EXPECTED_TEXT_MENU_HOME}              Home


*** Test Cases ***
TC001 - Discover mola card standings
    [Documentation]     User can discover mola card standings
    ...             User already login/not
    [Tags]  Regression  Smoke

    HomePage.Open Login Page
    SignInPage.Login Using Credentials              ${ACCOUNT_KAMAL_EMAIL}      ${ACCOUNT_KAMAL_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account      ${ACCOUNT_KAMAL_EMAIL}
    MolaClassementPage.Click Browse In Sidebar
    MolaClassementPage.Click Sports
    MolaClassementPage.Click Premiere League Football Competitions
    MolaClassementPage.Click Premiere League
    Logout Account

TC002 - Discover mola standings
    [Documentation]     User can discover mola classement standings
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
    MolaClassementPage.Click next/previous arrow in right and left sides of carousel
    Logout Account

TC006 - Sort standings by league
    [Documentation]     User can choose league standings that they want to show
    ...             User already in mola standings page
    [Tags]  Regression  Smoke

    HomePage.Open Login Page
    SignInPage.Login Using Credentials              ${ACCOUNT_KAMAL_EMAIL}      ${ACCOUNT_KAMAL_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account      ${ACCOUNT_KAMAL_EMAIL}
    MolaClassementPage.Click Browse In Sidebar
    MolaClassementPage.Click Sports
    MolaClassementPage.Click Premiere League Football Competitions
    MolaClassementPage.Select the league in dropdown that you want to show
    Logout Account

TC007 - Sort standings by gameweek
    [Documentation]     User can choose gameweek that they want to show
    ...             User already in mola standings page
    [Tags]  Regression  Smoke

    HomePage.Open Login Page
    SignInPage.Login Using Credentials              ${ACCOUNT_KAMAL_EMAIL}      ${ACCOUNT_KAMAL_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account      ${ACCOUNT_KAMAL_EMAIL}
    MolaClassementPage.Click Browse In Sidebar
    MolaClassementPage.Click Sports
    MolaClassementPage.Click mola standings gameweek sorting option in the left sides
    MolaClassementPage.Select the gameweek in dropdown that you want to show
    Logout Account

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
    HomePage.Open Matches Page
    MolaClassementPage.test1
#    MolaClassementPage.Click "view all" on premiere league section
#    MolaClassementPage.Click "view full table" on standings card
#    Logout Account

TC010 - Discover mola card standings in matches page
    [Documentation]     User can discover mola card standings from https://mola.tv/league-matches/league-epl
    ...             User already login/not , User already in matches page
    [Tags]  Regression  Smoke

    HomePage.Open Login Page
    SignInPage.Login Using Credentials              ${ACCOUNT_KAMAL_EMAIL}      ${ACCOUNT_KAMAL_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account      ${ACCOUNT_KAMAL_EMAIL}
    HomePage.Open Matches Page
#    MolaClassementPage.Click "view all" on premiere league section
    MolaClassementPage.test2
#    MolaClassementPage.Scroll to the right/left on standings card
#    Logout Account
