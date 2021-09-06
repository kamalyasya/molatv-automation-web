*** Settings ***
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${button_welcome_page_browse_mola}                  css=.button-text

*** Keywords ***
Click Button Browse On Welcome Page
    ${is_element_visible}       Run Keyword And Return Status       Wait Until Element Is Visible       ${button_welcome_page_browse_mola}
    IF  '${is_element_visible}' == 'True'
        Wait Until Element Is Visible                   ${button_welcome_page_browse_mola}
        Click Element                                   ${button_welcome_page_browse_mola}
    END
