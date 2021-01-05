*** Settings ***
Library         	    SeleniumLibrary
Library                 String
Resource                ../../Frameworks/Routers.robot

*** Variables ***
#Rail Banner Sports Libraries
${rail_banner_sports_libraries}                                     css=[class='css-5k1n5e']
${button_arrow_right_rail_banner_sports_libraries}                  css=[class='css-5k1n5e'] [class='css-13o605i arrowWrapper']
${button_arrow_left_rail_banner_sports_libraries}                   css=[class='css-5k1n5e'] .css-rolnv2

#Content And Categories Sports Libraries
${title_categories_sports_libraries1}                               css=div:nth-of-type(1) > .css-17v1w3x > .css-1q8d97k  h3
${rail_banner_content_sports_libraries1}                            css=[class] [class='css-1lezvj0 css-tqv6h2 css-ug8ckl']:nth-of-type(1) .slider-list
${title_categories_sports_libraries2}                               css=div:nth-of-type(2) > .css-17v1w3x > .css-1q8d97k > div > h3
${rail_banner_content_sports_libraries2}                            css=[class] [class='css-1lezvj0 css-tqv6h2 css-ug8ckl']:nth-of-type(2) .slider-list
${title_categories_sports_libraries3}                               css=div:nth-of-type(3) > .css-17v1w3x > .css-1q8d97k > div > h3
${rail_banner_content_sports_libraries3}                            css=[class] [class='css-1lezvj0 css-tqv6h2 css-ug8ckl']:nth-of-type(3) .slider-list
${title_categories_sports_libraries4}                               css=div:nth-of-type(4) > .css-17v1w3x > .css-1q8d97k > div > h3
${rail_banner_content_sports_libraries4}                            css=[class] [class='css-1lezvj0 css-tqv6h2 css-ug8ckl']:nth-of-type(4) .slider-list
${title_categories_sports_libraries5}                               css=div:nth-of-type(5) > .css-17v1w3x > .css-1q8d97k > div > h3
${rail_banner_content_sports_libraries5}                            css=[class] [class='css-1lezvj0 css-tqv6h2 css-ug8ckl']:nth-of-type(5) .slider-list
${match_card_banner_sports_libraries}                               css=.css-hq095j

#View All Categories Sports Libraries
${link_text_view_all_sports_libraries}                              link=View All
${title_view_all_sports_libraries}                                  css=.headTitle
${button_sorting_view_all_sports_libraries}                         css=.sortHeadWrapper
${match_card_view_all_sports_libraries}                             css=.css-h3a6c7 > div:nth-of-type(2)

*** Keywords ***
Go To Sports Libraries Page
    Wait Until Element Is Visible                                   ${logo_homepage_molatv}
    Click Element                                                   ${menu_top_bar_homepage_sports}

Verify UI Sports Side Bar Menu
    Wait Until Element Is Visible                                   ${menu_side_bar_homepage_home}
    Element Should Be Visible                                       ${menu_side_bar_homepage_search}
    Element Should Be Visible                                       ${menu_side_bar_homepage_home}
    Element Should Be Visible                                       ${menu_side_bar_homepage_browse}
    Element Should Be Visible                                       ${menu_side_bar_homepage_matches}
    Element Should Be Visible                                       ${menu_side_bar_homepage_beli_akses}
    Element Should Be Visible                                       ${menu_side_bar_homepage_redeem_voucher}

Verify UI Sports Top Bar Menu
    Element Should Be Visible                                       ${menu_top_bar_homepage_movies}
    Element Should Be Visible                                       ${menu_top_bar_homepage_living}
    Element Should Be Visible                                       ${menu_top_bar_homepage_sports}
    Element Should Be Visible                                       ${menu_top_bar_homepage_kids}
    Element Should Be Visible                                       ${menu_top_bar_homepage_bold}
    Element Should Be Visible                                       ${rail_banner_sports_libraries}

Verify Categories And Content Sports Is Shown
    Element Should Be Visible                                       ${rail_banner_sports_libraries}
    Element Should Be Visible                                       ${title_categories_sports_libraries1}
    Scroll Element Into View                                        ${rail_banner_content_sports_libraries1}
    Element Should Be Visible                                       ${rail_banner_content_sports_libraries1}
    Element Should Be Visible                                       ${link_text_view_all_sports_libraries}
    Scroll Element Into View                                        ${title_categories_sports_libraries2}
    Element Should Be Visible                                       ${title_categories_sports_libraries2}
    Scroll Element Into View                                        ${rail_banner_content_sports_libraries2}
    Element Should Be Visible                                       ${rail_banner_content_sports_libraries2}
    Element Should Be Visible                                       ${link_text_view_all_sports_libraries}
    Scroll Element Into View                                        ${title_categories_sports_libraries3}
    Element Should Be Visible                                       ${title_categories_sports_libraries3}
    Scroll Element Into View                                        ${rail_banner_content_sports_libraries3}
    Element Should Be Visible                                       ${rail_banner_content_sports_libraries3}
    Element Should Be Visible                                       ${link_text_view_all_sports_libraries}
    Scroll Element Into View                                        ${title_categories_sports_libraries4}
    Element Should Be Visible                                       ${title_categories_sports_libraries4}
    Scroll Element Into View                                        ${rail_banner_content_sports_libraries4}
    Element Should Be Visible                                       ${rail_banner_content_sports_libraries4}
    Element Should Be Visible                                       ${link_text_view_all_sports_libraries}
    Scroll Element Into View                                        ${title_categories_sports_libraries5}
    Element Should Be Visible                                       ${title_categories_sports_libraries5}
    Scroll Element Into View                                        ${rail_banner_content_sports_libraries5}
    Element Should Be Visible                                       ${rail_banner_content_sports_libraries5}
    Element Should Be Visible                                       ${link_text_view_all_sports_libraries}

Verify Rail Banner Sports Libraries
    Wait Until Element Is Visible                                   ${rail_banner_sports_libraries}
    Click Element                                                   ${button_arrow_right_rail_banner_sports_libraries}
    Sleep                                                           2
    Click Element                                                   ${button_arrow_left_rail_banner_sports_libraries}
    Sleep                                                           2
    Element Should Be Visible                                       ${rail_banner_sports_libraries}

Verify The Banner Can Be Selected
    Wait Until Element Is Visible                                   ${rail_banner_sports_libraries}
    Mouse Over                                                      ${match_card_banner_sports_libraries}
    Page Should Contain Element                                     ${match_card_banner_sports_libraries}

Click View All Button In The Category/Series Thumbnail In The Sports Page
    Click Element                                                   ${link_text_view_all_sports_libraries}
    Wait Until Element Is Visible                                   ${title_view_all_sports_libraries}
    Element Should Be Visible                                       ${title_view_all_sports_libraries}
    Element Should Be Visible                                       ${button_sorting_view_all_sports_libraries}
    Element Should Be Visible                                       ${match_card_view_all_sports_libraries}
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
    Scroll Element Into View                                        ${title_view_all_sports_libraries}
    Wait Until Element Is Visible                                   ${title_view_all_sports_libraries}
    Element Should Be Visible                                       ${title_view_all_sports_libraries}

Verify the back button on the all pages
    Go Back
    Verify UI Sports Side Bar Menu
    Verify UI Sports Top Bar Menu
    Verify Categories And Content Sports Is Shown