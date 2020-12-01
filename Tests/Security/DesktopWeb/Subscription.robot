*** Settings ***
Resource                ../../../Frameworks/Routers.robot
Library         	    SeleniumLibrary
Library 				String

Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}                                  https://mola.tv/
${URL_MOVIE_DETAIL}                     https://mola.tv/watch?v=vd91851888
${URL_MOVIE_DETAIL1}                    https://mola.tv/watch?v=vd74299098
${URL_MOVIE_DETAIL2}                    https://mola.tv/watch?v=vd98699941
${URL_MOVIE_DETAIL3}                    https://mola.tv/watch?v=vd61951986
${URL_MOVIE_DETAIL4}                    https://mola.tv/watch?v=vd93162681
${URL_MOVIE_DETAIL5}                    https://mola.tv/watch?v=vd94115356
${URL_MOVIE_DETAIL6}                    https://mola.tv/watch?v=vd02317119
${URL_TRAILER_DETAIL}                   https://mola.tv/watch?v=vd98467304
${URL_MOVIE_DETAIL18+}                  https://mola.tv/watch?v=vd86229032
${URL_MOVIE_DETAIL_Watermark}           https://mola.tv/watch?v=vd93162909
${EXPECTED_URL_MOVIE_DETAIL}            ${URL_MOVIE_DETAIL}
${EXPECTED_URL_MOVIE_DETAIL1}           ${URL_MOVIE_DETAIL1}
${EXPECTED_URL_MOVIE_DETAIL2}           ${URL_MOVIE_DETAIL2}
${EXPECTED_URL_MOVIE_DETAIL3}           ${URL_MOVIE_DETAIL3}
${EXPECTED_TRAILER_DETAIL}              ${URL_TRAILER_DETAIL}
${EXPECTED_MOVIE_DETAIL18+}             ${URL_MOVIE_DETAIL18+}
${EXPECTED_URL_MOVIE_DETAIL_Watermark}  ${URL_MOVIE_DETAIL_Watermark}
${EXPECTED_TEXT_MENU_HOME}              Home

*** Test Cases ***
TC001 Status after activating Subscription
    [Documentation]     Check all package status after activating subscription
    ...             User already have an account and sign in
    [Tags]      Regression  Smoke

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                      ${ACCOUNT_HBO_EMAIL}        ${ACCOUNT_HBO_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account      ${ACCOUNT_HBO_EMAIL}
    SettingsPage.Select User icon
    SettingsPage.Select Subscription
    SettingsPage.Select Status
    SignInPage.Logout Account

TC002 Check video quality
    [Documentation]     User already have an account with package and sign in
    ...             Check all quality using every package
    [Tags]      Regression  Smoke

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                      ${ACCOUNT_HBO_EMAIL}        ${ACCOUNT_HBO_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account      ${ACCOUNT_HBO_EMAIL}
    SettingsPage.Select User icon
    SettingsPage.Select Subscription
    SettingsPage.Select Status
    MovieDetailPage.Go To Movie Detail      ${URL_MOVIE_DETAIL3}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Change Video Quality
    MovieDetailPage.Verify Video Quality 720
    MovieDetailPage.Verify The progress bar and elapsed time are updating when playing a content
    SignInPage.Logout Account

TC003 There's no ads banner in every package
    [Documentation]     User already have an account with package and sign in
    ...             Play the content
    [Tags]      Regression  Smoke

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                      ${ACCOUNT_HBO_EMAIL}        ${ACCOUNT_HBO_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account      ${ACCOUNT_HBO_EMAIL}
    SettingsPage.Select User icon
    SettingsPage.Select Subscription
    SettingsPage.Select Status
    MovieDetailPage.Go To Movie Detail      ${URL_MOVIE_DETAIL1}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    SignInPage.Logout Account

TC004 There's no pre roll banner in every package
    [Documentation]     User already have an account with package and sign in
    ...             Play the content
    [Tags]      Regression  Smoke

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                      ${ACCOUNT_HBO_EMAIL}        ${ACCOUNT_HBO_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account      ${ACCOUNT_HBO_EMAIL}
    SettingsPage.Select User icon
    SettingsPage.Select Subscription
    SettingsPage.Select Status
    MovieDetailPage.Go To Movie Detail      ${URL_MOVIE_DETAIL1}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    SignInPage.Logout Account

TC005 Subscription Blocker before user buy package
    [Documentation]     Subscription blocker shown if user don't have a package
    ...             User already have an account and sign in
    [Tags]      Regression  Smoke

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                  ${ACCOUNTS_MOLA_TESTING17_EMAIL}        ${ACCOUNTS_MOLA_TESTING17_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account      ${ACCOUNTS_MOLA_TESTING17_EMAIL}
    MovieDetailPage.Go To Movie Detail      ${URL_MOVIE_DETAIL1}
    SubscriptionPage.Verify Choose content that need a package
    MovieDetailPage.Go To Movie Detail      ${URL_MOVIE_DETAIL}
    SignInPage.Logout Account

TC006 Subscription Blocker after user buy package
    [Documentation]     Subscription blocker not shown if user already buy package
    ...             User already have an account with package and sign in
    [Tags]      Regression  Smoke

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                  ${ACCOUNTS_HBO_EMAIL}       ${ACCOUNTS_HBO_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account      ${ACCOUNTS_HBO_EMAIL}
    MovieDetailPage.Go To Movie Detail      ${URL_MOVIE_DETAIL1}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    SignInPage.Logout Account