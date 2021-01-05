*** Settings ***
Resource            ../../../Frameworks/Routers.robot

*** Variables ***
# Top
${text_playlist_title}                              css=.headTitle


# Sort
${dropdown_playlist_sort}                           id=sortingContainer
${dropdown_playlist_sort_selected_name}             css=.sortSelectedName
${dropdown_playlist_sort_active}                    css=.nameActive
${dropdown_playlist_sort_default}                   xpath=//span[contains(text(),'Default')]
${dropdown_playlist_sort_a_z}                       xpath=//span[contains(text(),'A - Z')]
${dropdown_playlist_sort_z-a}                       xpath=//span[contains(text(),'Z - A')]

*** Keywords ***
Open Movie Playlist
    [Arguments]    ${URL_PLAYLIST}
    Sleep                                   1
    Go To                                   ${URL_PLAYLIST}
    Wait Until Element Is Visible           ${text_playlist_title}

Click Sorting Button On Playlist
    Wait Until Element Is Visible           ${dropdown_playlist_sort}
    Click Element                           ${dropdown_playlist_sort}

Verify Sorting Button Is Shown On Playlist
    Wait Until Element Is Visible           ${dropdown_playlist_sort_active}
    Element Should Be Visible               ${dropdown_playlist_sort_active}
    Element Should Contain                  ${dropdown_playlist_sort_active}                    Default
    Element Should Be Visible               ${dropdown_playlist_sort_default}
    Element Should Be Visible               ${dropdown_playlist_sort_a_z}
    Element Should Be Visible               ${dropdown_playlist_sort_z-a}
