*** Settings ***
Library                 String
Library         	    SeleniumLibrary
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${menu_side_bar_homepage_browse}                        css=._1GfoO > div:nth-of-type(3)
${banner_image_fadein_sports}                           xpath=/html//div[@id='app']/div[@class='_3e0P_']//a[@href='/libraries/sports']/div/div/div[@class='imageBorder']
${banner_image_sport_not_visible}                       css=a:nth-of-type(3)  p
${text_catalog_sport_competitions}                      xpath=/html//div[@id='app']/div[@class='_3e0P_']/div[@class='_2_fH- children__container']/div[1]/div//h3[.='Football Competitions']
${view_all_sport_competitions}                          css=[href='\/categories\/leaguecomp']
${header_premier_league}                                css=.headTitle
${premier_league_place_holder}                          css=div:nth-of-type(1) > div > * > * > .imageWrapper.loaded > .imageBorder
${rail_banner_premier_league}                           css=.css-vtf346
${text_title_premier_league}                            css=.title
${content_standing_table}                               xpath=/html//div[@id='app']/div[@class='_3e0P_']/div[@class='_2_fH- children__container']//div[@class='css-1gsa4sd']/div[@class='css-h3a6c7']/div[3]/div[1]//h3[.='CATEGORIES']
${text_view_full_table}                                 xpath=/html//div[@id='app']/div[@class='_3e0P_']/div[@class='_2_fH- children__container']//div[@class='view-all']
${button_sliding_mola_card1}                            css=div:nth-of-type(1) > * > .carouselWrapper> .slider .slider-control-centerright .default
${button_sliding_mola_card2}                            css=div:nth-of-type(2) > * > .carouselWrapper> .slider .slider-control-centerright .default
${button_sliding_mola_card3}                            css=div:nth-of-type(3) > * > .carouselWrapper> .slider .slider-control-centerright .default
${button_sliding_mola_card4}                            css=div:nth-of-type(4) > * > .carouselWrapper> .slider .slider-control-centerright .default
${button_sliding_mola_card5}                            css=div:nth-of-type(5) > * > .carouselWrapper> .slider .slider-control-centerright .default
${button_sliding_mola_card6}                            css=div:nth-of-type(6) > * > .carouselWrapper> .slider .slider-control-centerright .default
${list_sorting_container}                               css=div#sortingContainer > .sortHeadInner
${dropdown_sorting_container_ascending}                 css=div:nth-of-type(2) > .sortMenuName
${text_catalog_live_this_week}                          xpath=/html//div[@id='app']/div[@class='_3e0P_']/div[@class='_2_fH- children__container']/div[1]/div//h3[.='Live This Week']
${view_all_live_this_week}                              css=[href='\/categories\/livethisweek']
${dropdown_list_sorting_container_ascending1}           css=div:nth-of-type(4) > .sortMenuName
${text_header_standings_title}                          css=.standingsTitle
${column_standings_heading_filer}                       css=.standingsHeading-filer
${scroll_column_table_standings_premier_league}         css=tbody > tr:nth-of-type(20)
${scroll_column_table_standings_premier_league1}        css=tbody > tr:nth-of-type(1)
${click_calendar_item_in_premier_league}                xpath=._30NbM
${list_container_desktop_date}                          css=div#container__desktop > ._1NzSC
${click_image_trophy_icon}                              css=._3SmIq
${click_dropdown_list_premier_league}                   css=div:nth-of-type(1) > .s-text
${click_dropdown_list_premier_league1}                  css=div:nth-of-type(1) > .s-menu  button[type='button']
${click_view_all_premier_league}                        css=div:nth-of-type(1) > .DgfMr > ._3mEMU > a
${button_sliding_premier_league_standings}              css=.css-u1zq1d.default

${text_content_title_matches}                           css=div:nth-of-type(1) > h3

*** Keywords ***
Click Browse In Sidebar
    Element Should Be Visible           ${menu_side_bar_homepage_browse}
    Wait Until Element Is Visible       ${menu_side_bar_homepage_browse}
    Scroll Element Into View            ${menu_side_bar_homepage_browse}
    Click Element                       ${menu_side_bar_homepage_browse}

Click Sports
    Page Should Contain Element         ${banner_image_fadein_sports}
    Wait Until Page Contains Element    ${banner_image_fadein_sports}
    Click Element                       ${banner_image_fadein_sports}

Click Premiere League Football Competitions
    Wait Until Element Is Not Visible    ${banner_image_sport_not_visible}
    Scroll Element Into View            ${text_catalog_sport_competitions}
    Element Should Be Visible           ${text_catalog_sport_competitions}
    Wait Until Element Is Visible       ${text_catalog_sport_competitions}
    Element Should Be Visible           ${view_all_sport_competitions}
    Wait Until Element Is Visible       ${view_all_sport_competitions}
    Click Element                       ${view_all_sport_competitions}
    Wait Until Element Is Visible       ${header_premier_league}
    Element Should Be Visible           ${header_premier_league}

Click Premiere League
    Sleep                               3
    Go To                               ${HOST}/categories/epl

Click "View Full Table" In Mola Card Standings
    Wait Until Element Is Not Visible    ${premier_league_place_holder}
    Wait Until Element Is Visible       ${rail_banner_premier_league}
    Scroll Element Into View            ${content_standing_table}
    Element Should Be Visible           ${text_view_full_table}
    Click Element                       ${text_view_full_table}

Click next/previous arrow in right and left sides of carousel
    Wait Until Element Is Not Visible    ${banner_image_fadein_sports}
    Sleep                                   3
    Scroll Element Into View            ${button_sliding_mola_card1}
    Element Should Be Visible           ${button_sliding_mola_card1}
    Click Element                       ${button_sliding_mola_card1}

    Scroll Element Into View            ${button_sliding_mola_card2}
    Element Should Be Visible           ${button_sliding_mola_card2}
    Click Element                       ${button_sliding_mola_card2}

    Scroll Element Into View            ${button_sliding_mola_card3}
    Element Should Be Visible           ${button_sliding_mola_card3}
    Click Element                       ${button_sliding_mola_card3}

    Scroll Element Into View            ${button_sliding_mola_card4}
    Element Should Be Visible           ${button_sliding_mola_card4}
    Click Element                       ${button_sliding_mola_card4}

    Scroll Element Into View            ${button_sliding_mola_card5}
    Element Should Be Visible           ${button_sliding_mola_card5}
    Click Element                       ${button_sliding_mola_card5}

Select the league in dropdown that you want to show
    Wait Until Element Is Not Visible       ${view_all_sport_competitions}
    Wait Until Element Is Visible           ${list_sorting_container}
    Element Should Be Visible               ${list_sorting_container}
    Click Element                           ${list_sorting_container}

    Scroll Element Into View                ${dropdown_sorting_container_ascending}
    Wait Until Element Is Visible           ${dropdown_sorting_container_ascending}
    Element Should Be Visible               ${dropdown_sorting_container_ascending}
    Click Element                           ${dropdown_sorting_container_ascending}

Click mola standings gameweek sorting option in the left sides
    Wait Until Element Is Not Visible       ${banner_image_sport_not_visible}
    Scroll Element Into View                ${text_catalog_live_this_week}
    Element Should Be Visible               ${text_catalog_live_this_week}
    Wait Until Element Is Visible           ${text_catalog_live_this_week}

    Element Should Be Visible               ${view_all_live_this_week}
    Wait Until Element Is Visible           ${view_all_live_this_week}
    Click Element                           ${view_all_live_this_week}

    Wait Until Element Is Visible           ${header_premier_league}
    Element Should Be Visible               ${header_premier_league}

Select the gameweek in dropdown that you want to show
    Wait Until Element Is Not Visible       ${view_all_live_this_week}
    Wait Until Element Is Visible           ${list_sorting_container}
    Element Should Be Visible               ${list_sorting_container}
    Click Element                           ${list_sorting_container}

    Scroll Element Into View                ${dropdown_list_sorting_container_ascending1}
    Wait Until Element Is Visible           ${dropdown_list_sorting_container_ascending1}
    Element Should Be Visible               ${dropdown_list_sorting_container_ascending1}
    Click Element                           ${dropdown_list_sorting_container_ascending1}

Scroll page up and down by scrolling using the mouse or trackpad
    Wait Until Element Is Not Visible       ${header_premier_league}
    Wait Until Element Is Visible           ${text_header_standings_title}
    Element Should Be Visible               ${column_standings_heading_filer}
    Scroll Element Into View                ${scroll_column_table_standings_premier_league}

Scroll page up and down by click and drag scrollbar manually
    Scroll Element Into View                ${scroll_column_table_standings_premier_league1}
    Wait Until Element Is Visible           ${scroll_column_table_standings_premier_league1}

Click trophy icon
    Mouse Over                              ${menu_side_bar_homepage_matches}
    Sleep                                   2
    Wait Until Page Contains Element        ${list_container_desktop_date}
#    Mouse Out                               ${menu_side_bar_homepage_matches}
    Mouse Over                                  ${matches_page_hover}
#    Click Element                           ${click_calendar_item_in_premier_league}
    Wait Until Element Is Visible           ${click_image_trophy_icon}
    Element Should Be Visible               ${click_image_trophy_icon}
    Sleep                                   2
    Click Element                           ${click_image_trophy_icon}

    Wait Until Element Is Visible           ${click_dropdown_list_premier_league}
    Element Should Be Visible               ${click_dropdown_list_premier_league}
    Click Element                           ${click_dropdown_list_premier_league}

    Wait Until Element Is Visible           ${click_dropdown_list_premier_league1}
    Element Should Be Visible               ${click_dropdown_list_premier_league1}
    Click Element                           ${click_dropdown_list_premier_league1}

Click "view all" on premiere league section
    Sleep                                   3
    Mouse Over                                  ${matches_page_hover}
#    Click Element                           ${click_calendar_item_in_premier_league}
    Wait Until Element Is Visible           ${click_view_all_premier_league}
    Element Should Be Visible               ${click_view_all_premier_league}
    Click Element                           ${click_view_all_premier_league}

#    Wait Until Element Is Visible           ${click_dropdown_list_premier_league}
#    Element Should Be Visible               ${click_dropdown_list_premier_league}
#    Click Element                           ${click_dropdown_list_premier_league}
#    Wait Until Element Is Visible           ${click_dropdown_list_premier_league1}
#    Element Should Be Visible               ${click_dropdown_list_premier_league1}
#    Click Element                           ${click_dropdown_list_premier_league1}

test1
    ${status} =        Run Keyword And Return Status    Get Text  ${text_content_title_matches}
    Run Keyword If	   '${status}' == 'Premier League'      Click "view all" on premiere league section     AND     Click "view full table" on standings card
    ...                ELSE IF	'${status}' != 'Premier League'    Logout Account

test2
    ${status} =        Run Keyword And Return Status    Get Text  ${text_content_title_matches}
    Run Keyword If	   '${status}' == 'Premier League'      Click "view all" on premiere league section     AND     Scroll to the right/left on standings card
    ...                ELSE IF	'${status}' != 'Premier League'    Logout Account

Click "view full table" on standings card
    Wait Until Element Is Not Visible    ${premier_league_place_holder}
    Wait Until Element Is Visible       ${text_title_premier_league}
    Element Should Be Visible           ${text_view_full_table}
    Click Element                       ${text_view_full_table}

Scroll to the right/left on standings card
    Wait Until Element Is Not Visible       ${click_view_all_premier_league}
    Sleep                                   3
    Scroll Element Into View                ${button_sliding_premier_league_standings}
    Element Should Be Visible               ${button_sliding_premier_league_standings}
    Click Element                           ${button_sliding_premier_league_standings}
    Sleep                                   2
    Click Element                           ${button_sliding_premier_league_standings}
    Sleep                                   2
    Click Element                           ${button_sliding_premier_league_standings}
    Sleep                                   2
    Click Element                           ${button_sliding_premier_league_standings}