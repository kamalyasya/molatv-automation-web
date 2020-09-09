*** Settings ***
Resource                        ../../../Frameworks/Routers.robot
Library                         SeleniumLibrary
Library                         String

Test Setup                      CommonKeywords.Start Testing        ${URL}
Test Teardown                   CommonKeywords.End Testing

*** Variables ***
${URL}                                          https://mola.tv

${KEYWORD_MOVIE_GO_BACK_TO_CHINA}               Go Back to China
${KEYWORD_NO_RESULT}                            Tahubakso
${KEYWORD_SPACE}                                ${SPACE}
${KEYWORD_USD}                                  $$$

*** Test Cases ***
Delivery - Search: UI of the Search page
    [Documentation]  UI layout of Search page
    [Tags]           Regression  Smoke

    HomePage.Open Search Page
    SearchPage.Verify UI Search Page

Delivery - Search: Keyword predictions
    [Documentation]  Keyword predictions
    [Tags]           Regression  Smoke

    HomePage.Open Search Page
    SearchPage.Input Search Keyword             Go Back to
    SearchPage.Verify Keyword Predictions       go back to china

Delivery - Search: Search by title
    [Documentation]  Search by title
    [Tags]           Regression  Smoke

    HomePage.Open Search Page
    SearchPage.Search Using Keyword             ${KEYWORD_MOVIE_GO_BACK_TO_CHINA}
    Verify Search Result                        ${KEYWORD_MOVIE_GO_BACK_TO_CHINA}

Delivery - Search: Search by special characters ($$$)
    [Documentation]  Search by special characters
    [Tags]           Regression

    HomePage.Open Search Page
    SearchPage.Search Using Keyword             ${KEYWORD_USD}
    SearchPage.Verify No Result Found           ${KEYWORD_USD}

Delivery - Search: Search by special characters (Space)
    [Documentation]  Search by special characters
    [Tags]           Regression

    HomePage.Open Search Page
    SearchPage.Search Using Keyword             ${SPACE}
    SearchPage.Verify No Result Found           ${SPACE}

Delivery - Search: No search results
    [Documentation]  Shown No search results
    [Tags]           Regression  Smoke

    HomePage.Open Search Page
    SearchPage.Search Using Keyword             ${KEYWORD_NO_RESULT}
    SearchPage.Verify No Result Found           ${KEYWORD_NO_RESULT}

Delivery - Search: Navigate from search results to content details page
    [Documentation]  Navigate from search results to content details page
    [Tags]           Regression     Smoke

    HomePage.Open Search Page
    SearchPage.Search Using Keyword                             ${KEYWORD_MOVIE_GO_BACK_TO_CHINA}
    SearchPage.Verify Search Result                             ${KEYWORD_MOVIE_GO_BACK_TO_CHINA}
    SearchPage.Open Related Movie
    MovieDetailPage.Verify Movie Details Page Is Shown          ${KEYWORD_MOVIE_GO_BACK_TO_CHINA}

Delivery - Search: Keyword clearance
    [Documentation]  Search by special characters
    [Tags]           Regression

    HomePage.Open Search Page
    SearchPage.Input Search Keyword             ${KEYWORD_MOVIE_GO_BACK_TO_CHINA}
    SearchPage.Clear Keywords On Search Field
    SearchPage.Verify Clear Keywords

Delivery - Search: Search HBO Movies
    [Documentation]  Search HBO Movies
    [Tags]           Regression  Smoke  HBO

    HomePage.Open Search Page
    SearchPage.Search Using Keyword             RICHARD SAYS GOODBYE
    Verify Search Result                        RICHARD SAYS GOODBYE