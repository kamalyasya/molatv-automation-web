*** Settings ***
Resource            ../../../Frameworks/Routers.robot

*** Variables ***
# Top
${text_series_title}                            css=.headTitle
${text_series_description}                      css=.headDescription
${button_series_favorit}                        css=.favorite-content
${button_series_favorit_active}                 css=.favorite-text-active
${button_series_favorit_non_active}             css=.favorite-text

# Sort
${dropdown_series_sort}                         id=sortingContainer
${dropdown_series_sort_selected_name}           css=.sortSelectedName
${dropdown_series_sort_active}                  css=.nameActive
${dropdown_series_sort_default}                 xpath=//span[contains(text(),'Default')]
${dropdown_series_sort_terbaru}                 xpath=//span[contains(text(),'Latest')]
${dropdown_series_sort_terlama}                 xpath=//span[contains(text(),'Oldest')]
${dropdown_series_sort_a_z}                     xpath=//span[contains(text(),'A - Z')]
${dropdown_series_sort_z-a}                     xpath=//span[contains(text(),'Z - A')]

# Movie Section
${links_series_view_all}                        link=View All


*** Keywords ***
Open Series Playlist
    [Arguments]    ${URL_PLAYLIST}
    Sleep                                   1
    Go To                                   ${URL_PLAYLIST}
    Wait Until Element Is Visible           ${text_series_title}

Click Button Favorit On Series
    Wait Until Element Is Visible           ${button_series_favorit}
    Click Element                           ${button_series_favorit}

Verify Favorit Button Is Active On Series
    Wait Until Element Is Visible       ${button_movie_detail_lihat_daftar_favorit}
    Element Should Be Visible           ${button_movie_detail_lihat_daftar_favorit}
    Element Text Should Be              ${button_movie_detail_lihat_daftar_favorit}         Favorite List
    Wait Until Element Is Visible       ${text_movie_detail_favorit_message}
    Element Should Be Visible           ${text_movie_detail_favorit_message}
    Element Text Should Be              ${text_movie_detail_favorit_message}                Favorited
    Wait Until Element Is Not Visible   ${text_movie_detail_favorit_message}                5
    Wait Until Element Is Visible       ${button_series_favorit}
    Element Should Be Visible           ${button_series_favorit}
    Element Should Contain              ${button_series_favorit}                            Favorited

Remove Favorit Series
    Wait Until Element Is Visible       ${button_series_favorit_active}
    Click Element                       ${button_series_favorit_active}
    Wait Until Element Is Not Visible   ${button_series_favorit_active}

Check Favorit Series
    Wait Until Element Is Visible       ${button_series_favorit}
    ${STATUS}           Run Keyword And Return Status       Element Should Be Visible       ${button_series_favorit_active}
    Run Keyword If      '${STATUS}'=='True'                 Remove Favorit Series

Click Button Lihat Daftar Favorit
    Wait Until Element Is Visible       ${button_movie_detail_lihat_daftar_favorit}
    Mouse Over                          ${button_movie_detail_lihat_daftar_favorit}
    Click Element                       ${button_movie_detail_lihat_daftar_favorit}

Click Sorting Button On Series
    Wait Until Element Is Visible       ${dropdown_series_sort}
    Click Element                       ${dropdown_series_sort}

Verify Sorting Button Is Shown On Series
    Wait Until Element Is Visible       ${dropdown_series_sort_active}
    Element Should Be Visible           ${dropdown_series_sort_active}
    Element Should Contain              ${dropdown_series_sort_active}                    Default
    Element Should Be Visible           ${dropdown_series_sort_default}
    Element Should Be Visible           ${dropdown_series_sort_terbaru}
    Element Should Be Visible           ${dropdown_series_sort_terlama}
    Element Should Be Visible           ${dropdown_series_sort_a_z}
    Element Should Be Visible           ${dropdown_series_sort_z-a}

Sorting By Terbaru On Series
    Click Sorting Button On Series
    Wait Until Element Is Visible       ${dropdown_series_sort_active}
    Wait Until Element Is Visible       ${dropdown_series_sort_terbaru}
    Click Element                       ${dropdown_series_sort_terbaru}

Verify Sorting By Terbaru On Series
    Wait Until Element Is Visible       ${dropdown_series_sort_selected_name}
    Element Should Contain              ${dropdown_series_sort_selected_name}               Latest
    Click Sorting Button On Series
    Wait Until Element Is Visible       ${dropdown_series_sort_active}
    Element Should Contain              ${dropdown_series_sort_active}                      Latest

Sorting By Terlama On Series
    Click Sorting Button On Series
    Wait Until Element Is Visible       ${dropdown_series_sort_active}
    Wait Until Element Is Visible       ${dropdown_series_sort_terlama}
    Click Element                       ${dropdown_series_sort_terlama}

Verify Sorting By Terlama On Series
    Wait Until Element Is Visible       ${dropdown_series_sort_selected_name}
    Element Should Contain              ${dropdown_series_sort_selected_name}               Oldest
    Click Sorting Button On Series
    Wait Until Element Is Visible       ${dropdown_series_sort_active}
    Element Should Contain              ${dropdown_series_sort_active}                      Oldest

Sorting By A-Z On Series
    Click Sorting Button On Series
    Wait Until Element Is Visible       ${dropdown_series_sort_active}
    Wait Until Element Is Visible       ${dropdown_series_sort_a_z}
    Click Element                       ${dropdown_series_sort_a_z}

Verify Sorting By A-Z On Series
    Wait Until Element Is Visible       ${dropdown_series_sort_selected_name}
    Element Should Contain              ${dropdown_series_sort_selected_name}               A - Z
    Click Sorting Button On Series
    Wait Until Element Is Visible       ${dropdown_series_sort_active}
    Element Should Contain              ${dropdown_series_sort_active}                      A - Z

Sorting By Z-A On Series
    Click Sorting Button On Series
    Wait Until Element Is Visible       ${dropdown_series_sort_active}
    Wait Until Element Is Visible       ${dropdown_series_sort_z-a}
    Click Element                       ${dropdown_series_sort_z-a}

Verify Sorting By Z-A On Series
    Wait Until Element Is Visible       ${dropdown_series_sort_selected_name}
    Element Should Contain              ${dropdown_series_sort_selected_name}               Z - A
    Click Sorting Button On Series
    Wait Until Element Is Visible       ${dropdown_series_sort_active}
    Element Should Contain              ${dropdown_series_sort_active}                      Z - A

Sorting By Default On Series
    Click Sorting Button On Series
    Wait Until Element Is Visible       ${dropdown_series_sort_active}
    Wait Until Element Is Visible       ${dropdown_series_sort_default}
    Click Element                       ${dropdown_series_sort_default}

Verify Sorting By Default On Series
    Wait Until Element Is Visible       ${dropdown_series_sort_selected_name}
    Element Should Contain              ${dropdown_series_sort_selected_name}               Default
    Click Sorting Button On Series
    Wait Until Element Is Visible       ${dropdown_series_sort_active}
    Element Should Contain              ${dropdown_series_sort_active}                      Default

Cancel Sorting On Series
    Wait Until Element Is Visible       ${dropdown_series_sort}
    Click Element                       ${dropdown_series_sort}