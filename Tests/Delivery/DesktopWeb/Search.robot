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

Delivery - Search: No search results
    [Documentation]  Shown No search results
    [Tags]           Regression  Smoke

    HomePage.Open Search Page
    SearchPage.Search Using Keyword             ${KEYWORD_NO_RESULT}
    SearchPage.Verify No Result Found           ${KEYWORD_NO_RESULT}