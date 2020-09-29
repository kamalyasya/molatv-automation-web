#Note :
#This testcase Postpone Because don't have account to automated it

*** Settings ***
Resource                        ../../../Frameworks/Routers.robot
Library                         SeleniumLibrary

Test Setup                      CommonKeywords.Start Testing        ${URL}
Test Teardown                   CommonKeywords.End Testing

*** Variables ***
${URL}                                          https://mola.tv
${URL_HBO_MOVIE_DETAIL_21+}                     https://mola.tv/watch?v=HBO017814X0
${URL_HBO_MOVIE_DETAIL_NON21+}                  https://mola.tv/watch?v=HBO023075X0


${EXPECTED_URL_HBO_MOVIE_DETAIL_21+}            ${URL_HBO_MOVIE_DETAIL_21+}
${EXPECTED_URL_HBO_MOVIE_DETAIL_NON21+}         ${URL_HBO_MOVIE_DETAIL_NON21+}



*** Test Cases ***
TC001 : Access 21+ content without login
    [Documentation]     Choose 21+ video content
    [Tags]              Regression  Smoke

    MovieDetailPage.Login from movie detail         ${URL_HBO_MOVIE_DETAIL_21+}
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}       ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail          ${EXPECTED_URL_HBO_MOVIE_DETAIL_21+}
    HboContentRestriction.Verify Title Movie
    HboContentRestriction.Play Hbo Content 21+
    HboPlayback.Verify User able to play HBO Go movies

TC002 : Access non 21+ content
    [Documentation]     Choose Non 21+ video content
    [Tags]              Regression  Smoke

    MovieDetailPage.Login from movie detail         ${URL_HBO_MOVIE_DETAIL_NON21+}
    MovieDetailPage.Verify Direct To Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}       ${ACCOUNTS_HBO_PASSWORD}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail          ${EXPECTED_URL_HBO_MOVIE_DETAIL_NON21+}
    HboContentRestriction.Verify Title Movie
    HboContentRestriction.Play Hbo Content Non 21+
    HboPlayback.Verify User able to play HBO Go movies