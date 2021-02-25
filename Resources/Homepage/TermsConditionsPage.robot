*** Settings ***
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${text_terms_conditions_title_ketentuan_umum}       css=._1Rq9v > div:nth-of-type(1)
${text_terms_conditions_first_paragraph}            css=div:nth-of-type(3) > .JJ24V

*** Keywords ***
Verify User Can Open Syarat Dan Ketentuan Page
    [Arguments]  ${EXPECTED_TITLE_KETENTUAN_UMUM}    ${EXPECTED_TEXT_FIRST_PARAGRAPH}
    Wait Until Element Is Visible                   ${text_terms_conditions_title_ketentuan_umum}
    Element Text Should Be                          ${text_terms_conditions_title_ketentuan_umum}             ${EXPECTED_TITLE_KETENTUAN_UMUM}

    Wait Until Element Is Visible                   ${text_terms_conditions_first_paragraph}
    Element Text Should Be                          ${text_terms_conditions_first_paragraph}                  ${EXPECTED_TEXT_FIRST_PARAGRAPH}
