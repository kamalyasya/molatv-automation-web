*** Settings ***
Resource                ../../Frameworks/Routers.robot

*** Variables ***
#Rail Banner Kids Libraries Page
${top_rail_banner_kids_libraries}                                   css=[class='css-1j9u7ba'] .slider-frame
${mid_rail_banner_kids_libraries}                                   css=.css-21l0kp
${button_arrow_right_rail_banner_kids_libraries}                    css=[class='css-1j9u7ba'] [class='css-13o605i arrowWrapper']
${button_arrow_left_rail_banner_kids_libraries}                     css=[class='css-1j9u7ba'] .css-rolnv2
${top_rail_banner_focus_kids_libraries}                             css=[class='css-1j9u7ba'] .slider-frame

#Content And Categories Kids Libraries
${content_categories_kids_libraries}                                css=.css-1mcjboy.css-tqv6h2.css-ug8ckl
${match_cards_movies_libraries}                                     css=.css-1mcjboy
${link_text_view_all_kids_libraries}                                css=div:nth-of-type(1) > .css-18v7mth > .css-1q8d97k > a
${page_view_all_kids_libraries}                                     css=.css-h3a6c7
${title_view_all_kids_libraries}                                    css=.headTitle
${frame_content_categories_kids_libraries}                          css=.css-1mcjboy.css-tqv6h2.css-ug8ckl

#Mola Hub Kids Libraries
${categories_top_mola_hub_kids_libraries}                           css=.css-ch8pw7
${categories_bottom_mola_hub_kids_libraries}                        css=.css-qd8pk2

*** Keywords ***
Go To Kids Libraries Page
    Wait Until Element Is Visible                                   ${logo_homepage_molatv}
    Click Element                                                   ${menu_top_bar_homepage_kids}

Verify UI Kids Side Bar Menu
    Wait Until Element Is Visible                                   ${menu_side_bar_homepage_home}
    Element Should Be Visible                                       ${menu_side_bar_homepage_search}
    Element Should Be Visible                                       ${menu_side_bar_homepage_home}
    Element Should Be Visible                                       ${menu_side_bar_homepage_browse}
    Element Should Be Visible                                       ${menu_side_bar_homepage_matches}
    Element Should Be Visible                                       ${menu_side_bar_homepage_beli_akses}
    Element Should Be Visible                                       ${menu_side_bar_homepage_redeem_voucher}

Verify UI Kids Top Bar Menu
    Element Should Be Visible                                       ${menu_top_bar_homepage_home}
    Element Should Be Visible                                       ${menu_top_bar_homepage_living}
    Element Should Be Visible                                       ${menu_top_bar_homepage_sports}
    Element Should Be Visible                                       ${menu_top_bar_homepage_kids}
    Element Should Be Visible                                       ${menu_top_bar_homepage_bold}
    Element Should Be Visible                                       ${top_rail_banner_kids_libraries}

Verify Categories And Content Kids Is Shown
    Execute Javascript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 100})
    Execute Javascript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 500})
    Execute Javascript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 1000})
    Execute Javascript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 1500})
    Execute Javascript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 2000})
    Element Should Be Visible                                       ${frame_content_categories_kids_libraries}
    Element Should Be Visible                                       ${matches_footer}

Verify Rail Banner Kids Libraries Page
    Wait Until Element Is Visible                                   ${top_rail_banner_kids_libraries}
    Set Focus To Element                                            ${top_rail_banner_focus_kids_libraries}
    Click Element                                                   ${button_arrow_right_rail_banner_kids_libraries}
    Click Element                                                   ${button_arrow_right_rail_banner_kids_libraries}
    sleep                                                           2
    Click Element                                                   ${button_arrow_left_rail_banner_kids_libraries}
    Click Element                                                   ${button_arrow_left_rail_banner_kids_libraries}
    sleep                                                           2
    Element Should Be Visible                                       ${top_rail_banner_kids_libraries}

Verify The Banner Can Be Selected
    Wait Until Element Is Visible                                   ${top_rail_banner_kids_libraries}
    Mouse Over                                                      ${match_cards_movies_libraries}
    Element Should Be Visible                                       ${match_cards_movies_libraries}

Click View All Button In The Category/Series Thumbnail In The Kids Page
    Wait Until Element Is Visible                                   ${top_rail_banner_kids_libraries}
    Scroll Element Into View                                        ${content_categories_kids_libraries}
    Wait Until Element Is Visible                                   ${link_text_view_all_kids_libraries}
    Click Element                                                   ${link_text_view_all_kids_libraries}

Verify The View All Page
    Wait Until Element Is Visible                                   ${page_view_all_kids_libraries}
    Element Should Be Visible                                       ${page_view_all_kids_libraries}
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
    Scroll Element Into View                                        ${title_view_all_kids_libraries}
    Wait Until Element Is Visible                                   ${title_view_all_kids_libraries}
    Element Should Be Visible                                       ${title_view_all_kids_libraries}

Verify Direct To The Kids Details
    [Arguments]  ${URL_MOVIE_DETAIL}
    Location Should Contain                                         ${URL_MOVIE_DETAIL}

Verify the back button on the all pages
    Go Back
    Verify UI Sports Side Bar Menu
    Verify UI Sports Top Bar Menu
    Verify Categories And Content Kids Is Shown
