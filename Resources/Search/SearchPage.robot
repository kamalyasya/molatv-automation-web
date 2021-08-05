*** Settings ***
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${field_search_search}                          css=._2dD7w
${button_search_do_search}                      css=._2j-ks
${text_search_keyword_prediction}               css=._1cT7L
${text_search_title_search_keyword}             css=._1cFbU
${text_search_popular_suggestions}              css=.CHm7J
${text_search_title_recent_search}              css=._1nDIL > div:nth-of-type(1)
${text_search_result_recent_search}             css=._1cT7L
${image_search_search_result_1}                 css=.bannerImage
${text_search_search_result_1}                  css=.title
${text_search_search_no_result}                 css=._2pgUB
${text_search_search_no_result_try_different}   css=._1X70o
${icon_search_search_no_result}                 css=.fadeIn

*** Keywords ***
Input Search Keyword
    [Arguments]    ${TEXT_KEYWORD}
    Wait Until Element Is Visible               ${field_search_search}
    Input Text                                  ${field_search_search}                      ${TEXT_KEYWORD}

Press Enter Key
    Press Keys	                                ${field_search_search}	                    RETURN

Search Using Keyword
    [Arguments]    ${TEXT_KEYWORD}
    Input Search Keyword                        ${TEXT_KEYWORD}
    Press Enter Key

Verify UI Search Page
    Wait Until Location Contains                /search
    Location Should Contain                     /search
    Mouse Over                                  ${menu_side_bar_homepage_search}
    Wait Until Element Is Visible               ${text_homepage_selected_menu}
    Element Text Should Be                      ${text_homepage_selected_menu}              Search
    Wait Until Element Is Visible               ${text_search_popular_suggestions}
    Element Should Be Visible                   ${text_search_popular_suggestions}
    Wait Until Element Is Visible               ${field_search_search}
    Element Should Be Visible                   ${field_search_search}
    Wait Until Element Is Visible               ${image_search_search_result_1}
    Element Should Be Visible                   ${image_search_search_result_1}
    Wait Until Element Is Visible               ${text_search_search_result_1}
    Element Should Be Visible                   ${text_search_search_result_1}

Verify Search Result
    [Arguments]    ${EXPECTED_TEXT_SEARCH_RESULT}
    Wait Until Element Is Visible               ${field_search_search}
    Element Attribute Value Should Be           ${field_search_search}                      value           ${EXPECTED_TEXT_SEARCH_RESULT}
    Wait Until Element Is Visible               ${image_search_search_result_1}
    Element Should Be Visible                   ${image_search_search_result_1}
    Wait Until Element Is Visible               ${text_search_search_result_1}
    Element Should Be Visible                   ${text_search_search_result_1}
    Element Should Contain                      ${text_search_search_result_1}              ${EXPECTED_TEXT_SEARCH_RESULT}                                    ignore_case=True
    Wait Until Element Is Visible               ${text_search_title_search_keyword}
    Element Should Contain                      ${text_search_title_search_keyword}         Search result for ${EXPECTED_TEXT_SEARCH_RESULT}                  ignore_case=True

Verify No Result Found
    [Arguments]    ${EXPECTED_TEXT_SEARCH_RESULT}
    ${TEXT_NO_RESULT}           Catenate        Oops, your search for: "${EXPECTED_TEXT_SEARCH_RESULT}" not found,
    Wait Until Element Is Visible               ${text_search_search_no_result}
    Element Should Be Visible                   ${text_search_search_no_result}
    Element Should Contain                      ${text_search_search_no_result}                     ${TEXT_NO_RESULT}                                         ignore_case=True
    Wait Until Element Is Visible               ${text_search_search_no_result_try_different}
    Element Should Contain                      ${text_search_search_no_result_try_different}       try different keywords                                    ignore_case=True
    Wait Until Element Is Visible               ${icon_search_search_no_result}
    Element Attribute Value Should Be           ${icon_search_search_no_result}         src         https://mola01.koicdn.com/assets-global/images/search/error.png


Verify Keyword Predictions
    [Arguments]    ${EXPECTED_TEXT_KEYWORD_PREDICTION}
    Wait Until Element Is Visible               ${text_search_keyword_prediction}
    Element Should Contain                      ${text_search_keyword_prediction}           ${EXPECTED_TEXT_KEYWORD_PREDICTION}

Click Keyword Prediction
    Wait Until Element Is Visible               ${text_search_keyword_prediction}
    Click Element                               ${text_search_keyword_prediction}

Verify Search Suggestion
    [Arguments]    ${EXPECTED_TEXT_KEYWORD_SUGGESTION}
    Wait Until Element Is Visible               ${text_search_keyword_prediction}
    Element Should Contain                      ${text_search_keyword_prediction}           ${EXPECTED_TEXT_KEYWORD_SUGGESTION}

Open Related Movie
    Wait Until Element Is Visible               ${image_search_search_result_1}
    Wait Until Element Is Visible               ${text_search_search_result_1}
    Click Element                               ${text_search_search_result_1}

Clear Keywords On Search Field
    Set Selenium Speed	                        0
    Wait Until Element Is Visible               ${field_search_search}
    ${TEXT}         Get Element Attribute       ${field_search_search}           value
    ${LENGTH}       Get Length                  ${TEXT}
    FOR    ${var}   IN RANGE    ${LENGTH}
        Press Keys    ${field_search_search}    BACKSPACE
    END
    Set Selenium Speed	                        ${DELAY}


Verify Clear Keywords
    Wait Until Element Is Visible               ${field_search_search}
    Element Text Should Be                      ${field_search_search}                      ${EMPTY}

Verify Recent Search Is Shown
    [Arguments]    ${TEXT_RECENT_KEYWORD}
    Wait Until Element Is Visible               ${field_search_search}
    Click Element                               ${field_search_search}
    Wait Until Element Is Visible               ${text_search_title_recent_search}
    Element Should Be Visible                   ${text_search_title_recent_search}
    Element Text Should Be                      ${text_search_title_recent_search}          Search history
    Wait Until Element Is Visible               ${text_search_result_recent_search}
    Element Should Be Visible                   ${text_search_result_recent_search}
    Element Should Contain                      ${text_search_result_recent_search}         ${TEXT_RECENT_KEYWORD}

Click Recent Search History
    Wait Until Element Is Visible               ${text_search_result_recent_search}
    Click Element                               ${text_search_result_recent_search}