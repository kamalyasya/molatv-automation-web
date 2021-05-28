*** Settings ***
Resource                ../../../Frameworks/Routers.robot

Test Timeout            ${DEFAULT_TEST_TIMEOUT}
Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}                                  ${HOST}
${URL_MOVIE_DETAIL}                     ${HOST}/watch?v=vd91851888
${URL_MOVIE_DETAIL1}                    ${HOST}/watch?v=vd74299098
${URL_MOVIE_DETAIL2}                    ${HOST}/watch?v=vd98699941
${URL_MOVIE_DETAIL3}                    ${HOST}/watch?v=HBO014459X0
${URL_MOVIE_DETAIL4}                    ${HOST}/watch?q=pbsi&v=vd94115639
${URL_MOVIE_DETAIL5}                    ${HOST}/watch?py_id=HBO-Movies-Fami&v=HBO017051X0
${URL_MOVIE_DETAIL6}                    ${HOST}/watch?v=vd02317119
${URL_TRAILER_DETAIL}                   ${HOST}/watch?v=vd98467304
${URL_MOVIE_DETAIL18+}                  ${HOST}/watch?v=vd86229032
${URL_MOVIE_DETAIL_Watermark}           ${HOST}/watch?v=vd93162909
${EXPECTED_URL_MOVIE_DETAIL}            ${URL_MOVIE_DETAIL}
${EXPECTED_URL_MOVIE_DETAIL1}           ${URL_MOVIE_DETAIL1}
${EXPECTED_URL_MOVIE_DETAIL2}           ${URL_MOVIE_DETAIL2}
${EXPECTED_URL_MOVIE_DETAIL3}           ${URL_MOVIE_DETAIL3}
${EXPECTED_URL_MOVIE_DETAIL5}           ${URL_MOVIE_DETAIL5}
${EXPECTED_TRAILER_DETAIL}              ${URL_TRAILER_DETAIL}
${EXPECTED_MOVIE_DETAIL18+}             ${URL_MOVIE_DETAIL18+}
${EXPECTED_URL_MOVIE_DETAIL_Watermark}  ${URL_MOVIE_DETAIL_Watermark}
${EXPECTED_TEXT_MENU_HOME}              Home

*** Test Cases ***
TC001 Status after activating Subscription
    [Documentation]     Check all package status after activating subscription
    ...             User already have an account and sign in
    [Tags]      Regression  Smoke   Verified

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                      ${ACCOUNTS_HBO_EMAIL}        ${ACCOUNTS_HBO_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account      ${ACCOUNTS_HBO_EMAIL}
    SettingsPage.Select User icon
    SettingsPage.Select Subscription
    SettingsPage.Select Verify Status
    Logout Account

TC002 Check video quality
    [Documentation]     User already have an account with package and sign in
    ...             Check all quality using every package
    [Tags]      Regression  Smoke   Verified

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                      ${ACCOUNTS_HBO_EMAIL}        ${ACCOUNTS_HBO_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account      ${ACCOUNTS_HBO_EMAIL}
    HomePage.Open Profile Page
    SettingsPage.Select Subscription
    SettingsPage.Select Verify Status
    MovieDetailPage.Go To Movie Detail      ${URL_MOVIE_DETAIL4}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Change Video Quality
    MovieDetailPage.Verify Video Quality 720
    MovieDetailPage.Verify The progress bar and elapsed time are updating when playing a content
    Logout Account

TC003 There's no ads banner in every package
    [Documentation]     User already have an account with package and sign in
    ...             Play the content
    [Tags]      Regression  Smoke   Verified

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                      ${ACCOUNTS_HBO_EMAIL}        ${ACCOUNTS_HBO_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account      ${ACCOUNTS_HBO_EMAIL}
    SettingsPage.Select User icon
    SettingsPage.Select Subscription
    SettingsPage.Select Verify Status
    MovieDetailPage.Go To Movie Detail      ${URL_MOVIE_DETAIL1}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    SubscriptionPage.Verify Benner Do Not Appear
    #Verify Benner nya tidak muncul
    #Nyari Element Benner nya
    Logout Account

TC004 There's no pre roll banner in every package
    [Documentation]     User already have an account with package and sign in
    ...             Play the content
    [Tags]      Regression  Smoke   Verified

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                      ${ACCOUNTS_HBO_EMAIL}        ${ACCOUNTS_HBO_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account      ${ACCOUNTS_HBO_EMAIL}
    SettingsPage.Select User icon
    SettingsPage.Select Subscription
    SettingsPage.Select Verify Status
    MovieDetailPage.Go To Movie Detail      ${URL_MOVIE_DETAIL1}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    SubscriptionPage.Verify Preroll Do Not Appear
    #Verify PreRoll nya tidak muncul
    #Nyari Element PreRool nya
    Logout Account

TC005 Subscription Blocker before user buy package
    [Documentation]     Subscription blocker shown if user don't have a package
    ...             User already have an account and sign in
    [Tags]      Regression  Smoke   Verified

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                  ${ACCOUNT_SUPERMOLA69_EMAIL}        ${ACCOUNT_SUPERMOLA69_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account      ${ACCOUNT_SUPERMOLA69_EMAIL}
    MovieDetailPage.Go To Movie Detail      ${URL_MOVIE_DETAIL1}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail      ${EXPECTED_URL_MOVIE_DETAIL1}
    SubscriptionPage.Verify Choose content that need a package Mola
    MovieDetailPage.Go To Movie Detail      ${URL_MOVIE_DETAIL5}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail      ${EXPECTED_URL_MOVIE_DETAIL5}
    SubscriptionPage.Verify Choose content that need a package HBO
#    Verify Warding Check Text Subscription
    Logout Account

#    Di Tambahkan Verify Warding Check Text Subscription
#    dan Di tambahkan Go To Movie Detail      https://mola.tv/watch?v=HBO014459X0 Content HBO

TC006 Subscription Blocker after user buy package
    [Documentation]     Subscription blocker not shown if user already buy package
    ...             User already have an account with package and sign in
    [Tags]      Regression  Smoke   Verified

    HomePage.Open Login Page
    SignInPage.Login Using Credentials                  ${ACCOUNTS_HBO_EMAIL}       ${ACCOUNTS_HBO_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account      ${ACCOUNTS_HBO_EMAIL}
    MovieDetailPage.Go To Movie Detail      ${URL_MOVIE_DETAIL1}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    SignInPage.Logout Account
    Reload Page
    HomePage.Open Login Page
    SignInPage.Login Using Credentials                  ${ACCOUNTS_HBO_EMAIL}       ${ACCOUNTS_HBO_PASSWORD}
    ProfilePage.Verify Logged In Using Correct Account      ${ACCOUNTS_HBO_EMAIL}
    MovieDetailPage.Go To Movie Detail      ${URL_MOVIE_DETAIL3}
    HboPlayback.Play HBO Movies
    HboPlayback.Verify User able to play HBO Go movies
    Reload Page
    Go Back
    Reload Page
    Logout Account

#    Adanya Pembambahan Untuk Play Content HBO