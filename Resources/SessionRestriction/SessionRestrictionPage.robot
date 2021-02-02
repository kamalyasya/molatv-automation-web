*** Settings ***
Library         	    SeleniumLibrary
Resource                ../../Frameworks/Routers.robot

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
${dropdown_series_sort_terbaru}                 xpath=//span[contains(text(),'Terbaru')]
${dropdown_series_sort_terlama}                 xpath=//span[contains(text(),'Terlama')]
${dropdown_series_sort_a_z}                     xpath=//span[contains(text(),'A - Z')]
${dropdown_series_sort_z-a}                     xpath=//span[contains(text(),'Z - A')]

# Movie Section
${links_series_view_all}                        link=View All


*** Keywords ***
Verify Favorit Button Is Active On Series
    Wait Until Element Is Visible       ${button_movie_detail_lihat_daftar_favorit}
    Element Should Be Visible           ${button_movie_detail_lihat_daftar_favorit}
    Element Text Should Be              ${button_movie_detail_lihat_daftar_favorit}         Lihat daftar favorit
    Wait Until Element Is Visible       ${text_movie_detail_favorit_message}
    Element Should Be Visible           ${text_movie_detail_favorit_message}
    Element Text Should Be              ${text_movie_detail_favorit_message}                Disimpan sebagai favorit
    Wait Until Element Is Not Visible   ${text_movie_detail_favorit_message}                5
    Wait Until Element Is Visible       ${button_series_favorit}
    Element Should Be Visible           ${button_series_favorit}
    Element Should Contain              ${button_series_favorit}                            Difavoritkan

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
