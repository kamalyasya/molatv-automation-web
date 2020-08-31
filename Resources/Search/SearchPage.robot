*** Settings ***
Library         	    SeleniumLibrary
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${field_search_search}                          css=._2dD7w
${button_search_do_search}                      css=._2j-ks
${text_search_keyword_prediction}               css=._1cT7L

${image_search_search_result_1}                 css=div:nth-of-type(1) > .css-1qqtmsi > .css-rh1xgi > .css-tqv6h2.imageWrapper.loaded
${text_search_search_result_1}                  css=div:nth-of-type(1) > .css-1qqtmsi > .title
${text_search_search_no_result}                 css=._2pgUB

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
    Wait Until Element Is Visible               ${field_search_search}
    Element Should Be Visible                   ${field_search_search}
    Wait Until Element Is Visible               ${image_search_search_result_1}
    Element Should Be Visible                   ${image_search_search_result_1}
    Wait Until Element Is Visible               ${text_search_search_result_1}
    Element Should Be Visible                   ${text_search_search_result_1}

Verify Search Result
    [Arguments]    ${EXPECTED_TEXT_SEARCH_RESULT}
    Wait Until Element Is Visible               ${image_search_search_result_1}
    Element Should Be Visible                   ${image_search_search_result_1}
    Wait Until Element Is Visible               ${text_search_search_result_1}
    Element Should Be Visible                   ${text_search_search_result_1}
    Element Should Contain                      ${text_search_search_result_1}              ${EXPECTED_TEXT_SEARCH_RESULT}

Verify No Result Found
    [Arguments]    ${EXPECTED_TEXT_SEARCH_RESULT}
    ${TEXT_NO_RESULT}           Catenate        Pencarian untuk "${EXPECTED_TEXT_SEARCH_RESULT}" tidak ditemukan,
    Wait Until Element Is Visible               ${text_search_search_no_result}
    Element Should Be Visible                   ${text_search_search_no_result}
    Element Should Contain                      ${text_search_search_no_result}             ${TEXT_NO_RESULT}

Verify Keyword Predictions
    [Arguments]    ${EXPECTED_TEXT_KEYWORD_PREDICTION}
    Wait Until Element Is Visible               ${text_search_keyword_prediction}
    Element Should Contain                      ${text_search_keyword_prediction}           ${EXPECTED_TEXT_KEYWORD_PREDICTION}

Open Related Movie
    Wait Until Element Is Visible               ${image_search_search_result_1}
    Wait Until Element Is Visible               ${text_search_search_result_1}
    Click Element                               ${text_search_search_result_1}

