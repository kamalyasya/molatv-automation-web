*** Settings ***
Library         	    SeleniumLibrary
Library                 String
Resource                ../../Frameworks/Routers.robot

*** Variables ***
#Rail Banner Movies Libraries Page
${top_rail_banner_movies_libraries}                                 css=.css-5k1n5e
${mid_rail_banner_movies_libraries}                                 css=.css-21l0kp
${button_arrow_right_rail_banner_movies_libraries}                  css=[class='css-5k1n5e'] [class='css-13o605i arrowWrapper']
${button_arrow_left_rail_banner_movies_libraries}                   css=[class='css-5k1n5e'] .css-rolnv2
${top_rail_banner_focus_movies_libraries}                           css=[class='css-5k1n5e'] .slider-control-bottomcenter

#Content And Categories Movies Libraries
${categories_editors_choice_movies_libraries}                       css=._4_hPI
${content_categories_movies_libraries_1}                            css=div:nth-of-type(2) > .css-17v1w3x
${content_categories_movies_libraries_2}                            css=div:nth-of-type(3) > .css-17v1w3x
${content_categories_movies_libraries_3}                            css=div:nth-of-type(4) > .css-17v1w3x
${content_categories_movies_libraries_4}                            css=div:nth-of-type(5) > .css-17v1w3x
${content_categories_movies_libraries_5}                            css=div:nth-of-type(6) > .css-17v1w3x
${content_categories_movies_libraries_6}                            css=div:nth-of-type(7) > .css-17v1w3x
${content_categories_movies_libraries_7}                            css=div:nth-of-type(8) > .css-17v1w3x
${content_categories_movies_libraries_8}                            css=div:nth-of-type(9) > .css-17v1w3x
${content_categories_movies_libraries_9}                            css=div:nth-of-type(10) > .css-17v1w3x
${content_categories_movies_libraries_10}                           css=div:nth-of-type(11) > .css-17v1w3x
${content_categories_movies_libraries_11}                           css=div:nth-of-type(13) > .css-17v1w3x
${content_categories_movies_libraries_12}                           css=.css-21l0kp
${content_categories_movies_libraries_13}                           css=div:nth-of-type(15) > .css-17v1w3x
${content_categories_movies_libraries_14}                           css=div:nth-of-type(16) > .css-17v1w3x
${match_cards_movies_libraries}                                     css=.css-1mcjboy
${link_text_view_all_prime_time_series_movies_libraries}            css=div:nth-of-type(2) > .css-17v1w3x > .css-1q8d97k > a
${page_view_all_prime_time_series_movies_libraries}                 css=.css-h3a6c7
${title_view_all_movies_libraries}                                  css=.headTitle

#Mola Hub Movies Libraries
${categories_top_mola_hub_movies_libraries}                         css=.css-ch8pw7
${categories_bottom_mola_hub_movies_libraries}                      css=.css-qd8pk2
${button_mola_hub_all_movies_libraries}                             css=a:nth-of-type(1) > .css-1wegyzv
${button_mola_hub_all_series_libraries}                             css=a:nth-of-type(2) > .css-1wegyzv
${button_mola_hub_all_hbo_go_libraries}                             css=a:nth-of-type(3) > .css-1wegyzv
${page_content_mola_hub_movies_libraries}                           css=.css-h3a6c7
${page_content_mola_hub_hbo_go_movies_libraries}                    css=.css-1mcjboy.css-tqv6h2.css-ug8ckl

*** Keywords ***
Go To Movies Libraries Page
    Wait Until Element Is Visible                                   ${logo_homepage_molatv}
    Click Element                                                   ${menu_top_bar_homepage_movies}

Verify UI Movies Side Bar Menu
    Wait Until Element Is Visible                                   ${menu_side_bar_homepage_home}
    Element Should Be Visible                                       ${menu_side_bar_homepage_search}
    Element Should Be Visible                                       ${menu_side_bar_homepage_home}
    Element Should Be Visible                                       ${menu_side_bar_homepage_browse}
    Element Should Be Visible                                       ${menu_side_bar_homepage_matches}
    Element Should Be Visible                                       ${menu_side_bar_homepage_beli_akses}
    Element Should Be Visible                                       ${menu_side_bar_homepage_redeem_voucher}

Verify UI Movies Top Bar Menu
    Element Should Be Visible                                       ${menu_top_bar_homepage_movies}
    Element Should Be Visible                                       ${menu_top_bar_homepage_living}
    Element Should Be Visible                                       ${menu_top_bar_homepage_sports}
    Element Should Be Visible                                       ${menu_top_bar_homepage_kids}
    Element Should Be Visible                                       ${menu_top_bar_homepage_bold}
    Element Should Be Visible                                       ${top_rail_banner_movies_libraries}

Verify Categories And Content Movies Is Shown
    Wait Until Element Is Visible                                   ${top_rail_banner_movies_libraries}
    Element Should Be Visible                                       ${top_rail_banner_movies_libraries}
    Element Should Be Visible                                       ${categories_top_mola_hub_movies_libraries}
    Scroll Element Into View                                        ${categories_editors_choice_movies_libraries}
    Element Should Be Visible                                       ${categories_editors_choice_movies_libraries}
    Scroll Element Into View                                        ${content_categories_movies_libraries_1}
    Element Should Be Visible                                       ${content_categories_movies_libraries_1}
    Scroll Element Into View                                        ${content_categories_movies_libraries_2}
    Element Should Be Visible                                       ${content_categories_movies_libraries_2}
    Scroll Element Into View                                        ${content_categories_movies_libraries_3}
    Element Should Be Visible                                       ${content_categories_movies_libraries_3}
    Scroll Element Into View                                        ${content_categories_movies_libraries_4}
    Element Should Be Visible                                       ${content_categories_movies_libraries_4}
    Scroll Element Into View                                        ${content_categories_movies_libraries_5}
    Element Should Be Visible                                       ${content_categories_movies_libraries_5}
    Scroll Element Into View                                        ${content_categories_movies_libraries_6}
    Element Should Be Visible                                       ${content_categories_movies_libraries_6}
    Scroll Element Into View                                        ${content_categories_movies_libraries_7}
    Element Should Be Visible                                       ${content_categories_movies_libraries_7}
    Scroll Element Into View                                        ${content_categories_movies_libraries_8}
    Element Should Be Visible                                       ${content_categories_movies_libraries_8}
    Scroll Element Into View                                        ${content_categories_movies_libraries_9}
    Element Should Be Visible                                       ${content_categories_movies_libraries_9}
    Scroll Element Into View                                        ${content_categories_movies_libraries_10}
    Element Should Be Visible                                       ${content_categories_movies_libraries_10}
    Scroll Element Into View                                        ${mid_rail_banner_movies_libraries}
    Element Should Be Visible                                       ${mid_rail_banner_movies_libraries}
    Scroll Element Into View                                        ${content_categories_movies_libraries_11}
    Element Should Be Visible                                       ${content_categories_movies_libraries_11}
    Scroll Element Into View                                        ${content_categories_movies_libraries_12}
    Element Should Be Visible                                       ${content_categories_movies_libraries_12}
    Scroll Element Into View                                        ${content_categories_movies_libraries_13}
    Element Should Be Visible                                       ${content_categories_movies_libraries_13}
    Scroll Element Into View                                        ${content_categories_movies_libraries_14}
    Element Should Be Visible                                       ${content_categories_movies_libraries_14}
    Scroll Element Into View                                        ${categories_bottom_mola_hub_movies_libraries}
    Element Should Be Visible                                       ${categories_bottom_mola_hub_movies_libraries}

Verify Rail Banner Movies Libraries Page
    Wait Until Element Is Visible                                   ${top_rail_banner_movies_libraries}
    Set Focus To Element                                            ${top_rail_banner_focus_movies_libraries}
    Click Element                                                   ${button_arrow_right_rail_banner_movies_libraries}
    Click Element                                                   ${button_arrow_right_rail_banner_movies_libraries}
    sleep                                                           2
    Click Element                                                   ${button_arrow_left_rail_banner_movies_libraries}
    Click Element                                                   ${button_arrow_left_rail_banner_movies_libraries}
    sleep                                                           2
    Element Should Be Visible                                       ${top_rail_banner_movies_libraries}

Verify The Banner Can Be Selected
    Wait Until Element Is Visible                                   ${top_rail_banner_movies_libraries}
    Mouse Over                                                      ${match_cards_movies_libraries}
    Element Should Be Visible                                       ${match_cards_movies_libraries}

Verify Mola Hub Movies Libraries
    Wait Until Element Is Visible                                   ${categories_top_mola_hub_movies_libraries}
    Element Should Be Visible                                       ${categories_top_mola_hub_movies_libraries}
    Scroll Element Into View                                        ${categories_bottom_mola_hub_movies_libraries}
    Wait Until Element Is Visible                                   ${categories_bottom_mola_hub_movies_libraries}
    Element Should Be Visible                                       ${categories_bottom_mola_hub_movies_libraries}

Select Mola Hub All Movies
    Wait Until Element Is Visible                                   ${categories_top_mola_hub_movies_libraries}
    Click Element                                                   ${button_mola_hub_all_movies_libraries}

Verify Mola Hub All Movies
    [Arguments]  ${URL_MOLA_HUB_ALL_MOVIES}
    Wait Until Element Is Visible                                   ${page_content_mola_hub_movies_libraries}
    Location Should Contain                                         ${URL_MOLA_HUB_ALL_MOVIES}
    Element Should Be Visible                                       ${page_content_mola_hub_movies_libraries}

Select Mola Hub All Series
    Click Element                                                   ${menu_top_bar_homepage_movies}
    Wait Until Element Is Visible                                   ${categories_top_mola_hub_movies_libraries}
    Click Element                                                   ${button_mola_hub_all_series_libraries}

Verify Mola Hub All Series
    [Arguments]  ${URL_MOLA_HUB_ALL_SERIES}
    Wait Until Element Is Visible                                   ${page_content_mola_hub_movies_libraries}
    Location Should Contain                                         ${URL_MOLA_HUB_ALL_SERIES}
    Element Should Be Visible                                       ${page_content_mola_hub_movies_libraries}

Select Mola Hub Hbo Go
    Click Element                                                   ${menu_top_bar_homepage_movies}
    Wait Until Element Is Visible                                   ${categories_top_mola_hub_movies_libraries}
    Click Element                                                   ${button_mola_hub_all_hbo_go_libraries}

Verify Mola Hub Hbo Go
    [Arguments]  ${URL_MOLA_HUB_HBO_GO}
    Wait Until Element Is Visible                                   ${page_content_mola_hub_hbo_go_movies_libraries}
    Location Should Contain                                         ${URL_MOLA_HUB_HBO_GO}
    Element Should Be Visible                                       ${page_content_mola_hub_hbo_go_movies_libraries}

Click View All Button In The Category/Series Thumbnail In The Movies Page
    Wait Until Element Is Visible                                   ${top_rail_banner_movies_libraries}
    Scroll Element Into View                                        ${content_categories_movies_libraries_1}
    Wait Until Element Is Visible                                   ${link_text_view_all_prime_time_series_movies_libraries}
    Click Element                                                   ${link_text_view_all_prime_time_series_movies_libraries}

Verify The View All Page
    Wait Until Element Is Visible                                   ${page_view_all_prime_time_series_movies_libraries}
    Element Should Be Visible                                       ${page_view_all_prime_time_series_movies_libraries}
    Execute JavaScript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 100})
    Execute JavaScript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 200})
    Execute JavaScript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 300})
    Execute JavaScript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 400})
    Execute JavaScript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 500})
    Execute JavaScript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 600})
    Execute JavaScript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 700})
    Execute JavaScript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 800})
    Execute JavaScript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 1200})
    Scroll Element Into View                                        ${footer_view_all}
    Wait Until Element Is Visible                                   ${footer_view_all}
    Element Should Be Visible                                       ${footer_view_all}
    Execute JavaScript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 1200})
    Execute JavaScript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 800})
    Execute JavaScript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 700})
    Execute JavaScript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 600})
    Execute JavaScript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 500})
    Execute JavaScript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 400})
    Execute JavaScript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 300})
    Execute JavaScript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 200})
    Execute JavaScript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 100})
    Scroll Element Into View                                        ${title_view_all_movies_libraries}
    Wait Until Element Is Visible                                   ${title_view_all_movies_libraries}
    Element Should Be Visible                                       ${title_view_all_movies_libraries}

Verify Direct To The Movie Details
    [Arguments]  ${URL_MOVIE_DETAIL}
    Location Should Contain                                         ${URL_MOVIE_DETAIL}

Verify the back button on the all pages
    Go Back
    Verify UI Sports Side Bar Menu
    Verify UI Sports Top Bar Menu
    Verify Categories And Content Movies Is Shown
