*** Settings ***
Resource                        ../../../Frameworks/Routers.robot
Library                         SeleniumLibrary
Library                         String

Test Timeout                    ${DEFAULT_TEST_TIMEOUT}
Test Setup                      CommonKeywords.Start Testing        ${URL}
Test Teardown                   CommonKeywords.End Testing

*** Variables ***
${URL}                                          https://mola.tv

${KEYWORD_MOVIE_GO_BACK_TO_CHINA}               GO BACK TO CHINA
${KEYWORD_NO_RESULT}                            Tahubakso
${KEYWORD_SPACE}                                ${SPACE}
${KEYWORD_USD}                                  $$$

*** Test Cases ***
TC001 UI of the Search page
    [Documentation]  UI Verification from the search page
    [Tags]           Regression  Smoke

    HomePage.Open Search Page
    SearchPage.Verify UI Search Page

TC002 Keyword predictions
    [Documentation]  Verify Prediction keywords are displayed when entering one character in the search text box
    [Tags]           Regression  Smoke

    HomePage.Open Search Page
    SearchPage.Input Search Keyword             Go Back to
    SearchPage.Verify Keyword Predictions       go back to china

TC004 Search by title
    [Documentation]  Verify Search by title is shown by specific catalogue
    [Tags]           Regression  Smoke

    HomePage.Open Search Page
    SearchPage.Search Using Keyword             ${KEYWORD_MOVIE_GO_BACK_TO_CHINA}
    SearchPage.Verify Search Result             ${KEYWORD_MOVIE_GO_BACK_TO_CHINA}

TC006 Search by special characters ($$$)
    [Documentation]  Verify Search by special characters will not shown
    [Tags]           Regression

    HomePage.Open Search Page
    SearchPage.Search Using Keyword             ${KEYWORD_USD}
    SearchPage.Verify No Result Found           ${KEYWORD_USD}

TC006 Search by special characters (Space)
    [Documentation]  Verify Search by special characters will not shown
    [Tags]           Regression

    HomePage.Open Search Page
    SearchPage.Search Using Keyword             ${SPACE}
    SearchPage.Verify No Result Found           ${SPACE}

TC007 No search results
    [Documentation]  Verify The message appears after a search with invalid keywords
    [Tags]           Regression  Smoke

    HomePage.Open Search Page
    SearchPage.Search Using Keyword             ${KEYWORD_NO_RESULT}
    SearchPage.Verify No Result Found           ${KEYWORD_NO_RESULT}

TC008 Navigate from search results to content details page
    [Documentation]  Verify Navigate from the "Search Results" page to the content detail page
    [Tags]           Regression     Smoke

    HomePage.Open Search Page
    SearchPage.Search Using Keyword                             ${KEYWORD_MOVIE_GO_BACK_TO_CHINA}
    SearchPage.Verify Search Result                             ${KEYWORD_MOVIE_GO_BACK_TO_CHINA}
    SearchPage.Open Related Movie
    MovieDetailPage.Verify Movie Details Page Is Shown          ${KEYWORD_MOVIE_GO_BACK_TO_CHINA}

TC009 Recent Search
    [Documentation]  Verify Search results will be displayed below the search field
    [Tags]           Regression     Smoke

    HomePage.Open Search Page
    SearchPage.Search Using Keyword                             garuda
    SearchPage.Clear Keywords On Search Field
    HomePage.Open Login Page
    HomePage.Open Search Page
    SearchPage.Verify Recent Search Is Shown                    garuda

TC010 Search Suggestion
    [Documentation]  Verify the list of suggestion will appear while typing some keywords
    [Tags]           Regression     Smoke

    HomePage.Open Search Page
    SearchPage.Input Search Keyword                             Go Back to
    SearchPage.Verify Search Suggestion                         go back to china

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
    SearchPage.Search Using Keyword             FIVE DAYS
    Verify Search Result                        FIVE DAYS