*** Settings ***
Resource                        ../../../Frameworks/Routers.robot

Test Timeout                    ${DEFAULT_TEST_TIMEOUT}
Test Setup                      CommonKeywords.Start Testing        ${URL}
Test Teardown                   CommonKeywords.End Testing

*** Variables ***
${URL}                                          ${HOST}

${KEYWORD_MOVIE_GO_BACK_TO_CHINA}               GO BACK TO CHINA
${KEYWORD_NO_RESULT}                            Tahubakso
${KEYWORD_SPACE}                                ${SPACE}
${KEYWORD_USD}                                  $$$

*** Test Cases ***
TC001 UI of the Search page
    [Documentation]  UI Verification from the search page
    [Tags]           Regression  Smoke  Verified

    HomePage.Open Search Page
    SearchPage.Verify UI Search Page

TC002 Keyword predictions
    [Documentation]  Verify Prediction keywords are displayed when entering one character in the search text box
    [Tags]           Regression  Smoke  NeedReview

    HomePage.Open Search Page
    SearchPage.Input Search Keyword             Go Back to
    SearchPage.Verify Keyword Predictions       go back to china

    SearchPage.Input Search Keyword             Go Back to
    SearchPage.Verify Keyword Predictions       go back to china
    SearchPage.Input Search Keyword             liverpool vs
    SearchPage.Verify Keyword Predictions       liverpool vs arsenal

    # Tambahin click prediction, trus search field nya muncul kata yg dipilih,

TC004 Search by title
    [Documentation]  Verify Search by title is shown by specific catalogue
    [Tags]           Regression  Smoke  NeedReview  Fixed

    HomePage.Open Search Page
    SearchPage.Search Using Keyword             ${KEYWORD_MOVIE_GO_BACK_TO_CHINA}
    SearchPage.Verify Search Result             ${KEYWORD_MOVIE_GO_BACK_TO_CHINA}
    SearchPage.Clear Keywords On Search Field
    SearchPage.Search Using Keyword             S1 S101
    SearchPage.Verify Search Result             S1 S101
    SearchPage.Clear Keywords On Search Field
    SearchPage.Search Using Keyword             DOWN +
    SearchPage.Verify Search Result             DOWN +

    # Tambah Search result for keywords

TC006 Search by special characters
    [Documentation]  Verify Search by special characters will not shown
    [Tags]           Regression     NeedReview

    HomePage.Open Search Page
    SearchPage.Search Using Keyword             ${KEYWORD_USD}
    SearchPage.Verify No Result Found           ${KEYWORD_USD}
    SearchPage.Clear Keywords On Search Field
#TC006 Search by special characters (Space)
#    [Documentation]  Verify Search by special characters will not shown
#    [Tags]           Regression

    HomePage.Open Search Page
    SearchPage.Search Using Keyword             ${SPACE}
    SearchPage.Verify No Result Found           ${SPACE}
    SearchPage.Clear Keywords On Search Field
    SearchPage.Search Using Keyword             sameakakabauaja ananainaaaaaa
    SearchPage.Verify No Result Found           sameakakabauaja ananainaaaaaa

TC007 No search results
    [Documentation]  Verify The message appears after a search with invalid keywords
    [Tags]           Regression  Smoke  NeedReview

    HomePage.Open Search Page
    SearchPage.Search Using Keyword             ${KEYWORD_NO_RESULT}
    SearchPage.Verify No Result Found           ${KEYWORD_NO_RESULT}
    #Tambah kemunculan icon mola not found, try different keywords juga

TC008 Navigate from search results to content details page
    [Documentation]  Verify Navigate from the "Search Results" page to the content detail page
    [Tags]           Regression     Smoke   NeedReview

    HomePage.Open Search Page
    SearchPage.Search Using Keyword                             ${KEYWORD_MOVIE_GO_BACK_TO_CHINA}
    SearchPage.Verify Search Result                             ${KEYWORD_MOVIE_GO_BACK_TO_CHINA}
    SearchPage.Open Related Movie
    MovieDetailPage.Verify Movie Details Page Is Shown          ${KEYWORD_MOVIE_GO_BACK_TO_CHINA}

    # Tambah content HBO, contoh keyword,
    # tambah sofa kuning, navigate to epispode sofa kuning, judul halamannya sofa kuning

TC009 Recent Search
    [Documentation]  Verify Search results will be displayed below the search field
    [Tags]           Regression     Smoke   NeedReview

    HomePage.Open Search Page
    SearchPage.Search Using Keyword                             garuda
    SearchPage.Clear Keywords On Search Field
    HomePage.Open Login Page
    HomePage.Open Search Page
    SearchPage.Verify Recent Search Is Shown                    garuda

    # tambah kalau di click history nyari lagi

TC010 Search Suggestion
    [Documentation]  Verify the list of suggestion will appear while typing some keywords
    [Tags]           Regression     Smoke   Verified

    HomePage.Open Search Page
    SearchPage.Input Search Keyword                             Go Back to
    SearchPage.Verify Search Suggestion                         go back to china

#Delivery - Search: Keyword clearance
#    [Documentation]  Search by special characters
#    [Tags]           Regression
#
#    HomePage.Open Search Page
#    SearchPage.Input Search Keyword             ${KEYWORD_MOVIE_GO_BACK_TO_CHINA}
#    SearchPage.Clear Keywords On Search Field
#    SearchPage.Verify Clear Keywords

#Delivery - Search: Search HBO Movies
#    [Documentation]  Search HBO Movies
#    [Tags]           Regression  Smoke  HBO
#
#    HomePage.Open Search Page
#    SearchPage.Search Using Keyword             FIVE DAYS
#    Verify Search Result                        FIVE DAYS

# TC0XXX Clear history