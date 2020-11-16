*** Settings ***
Resource                        ../../../Frameworks/Routers.robot
Library                         SeleniumLibrary

Test Setup                      CommonKeywords.Start Testing        ${URL}
Test Teardown                   CommonKeywords.End Testing

*** Variables ***
${URL}                                      https://mola.tv

${URL_MOVIE_DETAIL_18+}                     https://mola.tv/watch?v=vd94027041
${URL_MOVIE_DETAIL_NON18+}                  https://mola.tv/watch?v=vd71414281

${EXPECTED_URL_MOVIE_DETAIL_18+}            ${URL_MOVIE_DETAIL_18+}
${EXPECTED_URL_MOVIE_DETAIL_NON18+}         ${URL_MOVIE_DETAIL_NON18+}

*** Test Cases ***
#TC001 Access 18+ content without login
#    [Documentation]     Account not already had a package and login
#    [Tags]              Regression  Smoke
#
#    AgeRestrictionPage.Select 18+ Movie Content         ${URL_MOVIE_DETAIL_18+}
#    SignInPage.Login Using Credentials                  ${ACCOUNTS_HBO_EMAIL}    ${ACCOUNTS_HBO_PASSWORD}
#    AgeRestrictionPage.Verify Show Age blocker
#
#TC002 Access non 18+ content
#    [Documentation]     Account already had a package and login
#    ...                 Play the non 18+ content
#    [Tags]              Regression  Smoke
#
#    HomePage.Open Login Page
#    SignInPage.Login Using Credentials              ${ACCOUNT_PUTRA_EMAIL}      ${ACCOUNT_PUTRA_PASSWORD}
#    AgeRestrictionPage.Select NON18+ Movie Content          ${URL_MOVIE_DETAIL_NON18+}
#    AgeRestrictionPage.Verify Movie Detail          ${EXPECTED_URL_MOVIE_DETAIL_NON18+}
#
#TC003 Access 18+ content using 18+ account
#    [Documentation]     Account already had a package and login
#    ...                 Play the 18+ content
#    [Tags]              Regression  Smoke
#
#    AgeRestrictionPage.Select 18+ Movie Content         ${URL_MOVIE_DETAIL_18+}
#    SignInPage.Login Using Credentials              ${ACCOUNT_KAMAL_EMAIL}  ${ACCOUNT_KAMAL_PASSWORD}
#    AgeRestrictionPage.Verify Show Age blocker
#    AgeRestrictionPage.Verify Movie Detail          ${EXPECTED_URL_MOVIE_DETAIL_18+}
#
#TC004 Access 18+ content using under 18+ account
#    [Documentation]     Account already had a package and login
#    ...                 Play the 18+ content
#    [Tags]              Regression  Smoke   Prod_Sync
#
#    AgeRestrictionPage.Select 18+ Movie Content         ${URL_MOVIE_DETAIL_18+}
#    SignInPage.Login Using Credentials              ${ACCOUNT_WITHDOB_EMAIL}    ${ACCOUNT_WITHDOB_PASSWORD}
#    AgeRestrictionPage.Verify Show Age blocker "CLOSE or TUTUP" button
#    AgeRestrictionPage.Can't Play Button

TC005 Access 18+ content using account didn't have date of birth
    [Documentation]     Account already had a package and login
    [Tags]              Regression  Smoke   Prod_Sync

    HomePage.Open Login Page
    SignInPage.Login Using Credentials          ${ACCOUNTS_HBO_EMAIL}      ${ACCOUNTS_HBO_PASSWORD}
    AgeRestrictionPage.Verify Show Age blocker      ${URL_MOVIE_DETAIL_18+}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    ProfilePage.Sign Out