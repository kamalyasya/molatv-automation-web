*** Settings ***
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${icon_welcome_page_mola}                           css=.logo-header
${button_welcome_page_browse_mola}                  css=.button-text

*** Keywords ***
Click Button Browse On Welcome Page
    ${is_element_visible}       Run Keyword And Return Status       Wait Until Element Is Visible       ${button_welcome_page_browse_mola}
    IF  '${is_element_visible}' == 'True'
        Wait Until Element Is Visible                   ${button_welcome_page_browse_mola}
        Scroll Element Into View                        ${button_welcome_page_browse_mola}
        Click Element                                   ${button_welcome_page_browse_mola}
    END

Verify Navigate To Welcome Page
    Wait Until Element Is Visible                       ${icon_welcome_page_mola}
    Element Should Be Visible                           ${icon_welcome_page_mola}
    Wait Until Element Is Visible                       ${button_welcome_page_browse_mola}
    Element Should Contain                              ${button_welcome_page_browse_mola}               Browse Mola
