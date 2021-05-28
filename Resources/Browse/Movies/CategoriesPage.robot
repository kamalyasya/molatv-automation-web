*** Settings ***
Resource            ../../../Frameworks/Routers.robot

*** Variables ***
${text_categories_title}                        css=.headTitle
${text_categories_description}                  css=.headDescription

*** Keywords ***
Verify Categories Page Is Shown
    [Arguments]    ${TITLE_CATEGORIES}
    Wait Until Element Is Visible               ${text_categories_title}
    Element Should Contain                      ${text_categories_title}                  ${TITLE_CATEGORIES}           ignore_case=True
    Wait Until Element Is Visible               ${text_categories_description}
    Element Should Be Visible                   ${text_categories_description}