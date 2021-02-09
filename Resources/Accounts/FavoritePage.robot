*** Settings ***
Resource                ../../Frameworks/Routers.robot

*** Variables ***
# Button & Dropdown
${button_favorit_selected}                      css=.box.box-active
${button_favorit_favorit_saya}                  xpath=///div[@innertext='Favorite Saya']
${button_favorit_daftar_pengingat}              xpath=///div[@innertext='Daftar Pengingat']
${dropdown_favorit_sort_by}                     css=.sort-label-box
${dropdown_favorit_sort_by_selected}            css=.sort-label-box > .label
${dropdown_favorit_sort_selected}               css=.label.label-active
${dropdown_favorit_sort_latest}                 css=.sort-menu > div:nth-of-type(2)
${dropdown_favorit_sort_oldest}                 css=.sort-menu > div:nth-of-type(3)

# Content Of Tontonan Saya
${text_favorit_title}                           css=.title
${text_favorit_shortdesc}                       css=.shortDesc

# Empty State
${icon_favorit_empty_state}                     css=.cardTour > .emptyImage
${text_favorit_empty_state_title}               css=.cardTour > .title
${text_favorit_empty_state_text}                css=.cardTour > .text

*** Keywords ***
Verify Tontonan Saya Is Opened
    Wait Until Element Is Visible               ${links_homepage_menu_selected}
    Element Should Contain                      ${links_homepage_menu_selected}             Favorite
    Wait Until Element Is Visible               ${text_favorit_title}
    Element Should Be Visible                   ${text_favorit_title}
    Element Should Be Visible                   ${text_favorit_shortdesc}

Sort Favorite Video By Latest
    Wait Until Element Is Visible               ${dropdown_favorit_sort_by}
    Click Element                               ${dropdown_favorit_sort_by}
    Wait Until Element Is Visible               ${dropdown_favorit_sort_latest}
    Click Element                               ${dropdown_favorit_sort_latest}

Verify Sort Favorite Video By Latest
    Wait Until Element Is Visible               ${dropdown_favorit_sort_by_selected}
    Element Should Contain                      ${dropdown_favorit_sort_by_selected}        Latest
    Click Element                               ${dropdown_favorit_sort_by_selected}
    Wait Until Element Is Visible               ${dropdown_favorit_sort_selected}
    Element Should Contain                      ${dropdown_favorit_sort_selected}           Latest

Sort Favorite Video By Oldest
    Wait Until Element Is Visible               ${dropdown_favorit_sort_by}
    Click Element                               ${dropdown_favorit_sort_by}
    Wait Until Element Is Visible               ${dropdown_favorit_sort_oldest}
    Click Element                               ${dropdown_favorit_sort_oldest}

Verify Sort Favorite Video By Oldest
    Wait Until Element Is Visible               ${dropdown_favorit_sort_by_selected}
    Element Should Contain                      ${dropdown_favorit_sort_by_selected}        Oldest
    Click Element                               ${dropdown_favorit_sort_by_selected}
    Wait Until Element Is Visible               ${dropdown_favorit_sort_selected}
    Element Should Contain                      ${dropdown_favorit_sort_selected}           Oldest

Verify Condition When My Favorite Is Empty
    Wait Until Element Is Visible               ${icon_favorit_empty_state}
    Element Should Be Visible                   ${icon_favorit_empty_state}
    Element Should Be Visible                   ${text_favorit_empty_state_title}
    Element Should Contain                      ${text_favorit_empty_state_title}           No Favorites
    Element Should Be Visible                   ${text_favorit_empty_state_text}
    Element Should Contain                      ${text_favorit_empty_state_text}            You have no favorite videos

Remove Favorit Video From Tontonan Saya
    [Arguments]    ${TEXT_EXPECTED_MOVIE_TITLE}
    Wait Until Element Is Visible               //p[contains(text(),'${TEXT_EXPECTED_MOVIE_TITLE}')]
    Click Element                               //p[contains(text(),'${TEXT_EXPECTED_MOVIE_TITLE}')]
    MovieDetailPage.Remove Favorit Video

Verify Video Removed From Tontonan Saya
    [Arguments]    ${TEXT_EXPECTED_MOVIE_TITLE}
    Go Back
    Wait Until Element Is Visible               ${text_favorit_title}
    Reload Page
    Page Should Not Contain                     //p[contains(text(),'${TEXT_EXPECTED_MOVIE_TITLE}')]
