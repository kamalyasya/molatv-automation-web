*** Settings ***
Library         	    SeleniumLibrary
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${text_privasi_title_kebijakan_privasi}         css=.PBBbY
${text_privasi_first_paragraph}                 css=._1_-GQ

*** Keywords ***
Verify User Can Open Privacy Page
    [Arguments]  ${EXPECTED_TITLE_KEBIJAKAN_PRIVASI}    ${EXPECTED_TEXT_FIRST_PARAGRAPH}
    Wait Until Element Is Visible                   ${text_privasi_title_kebijakan_privasi}
    Element Text Should Be                          ${text_privasi_title_kebijakan_privasi}             ${EXPECTED_TITLE_KEBIJAKAN_PRIVASI}

    Wait Until Element Is Visible                   ${text_privasi_first_paragraph}
    Element Text Should Be                          ${text_privasi_first_paragraph}                     ${EXPECTED_TEXT_FIRST_PARAGRAPH}
