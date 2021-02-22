*** Settings ***
Library         	    SeleniumLibrary
Library                 String
Resource                ../../Frameworks/Routers.robot

*** Variables ***
#Rail Banner Living Libraries
${rail_banner_living_libraries}                                     css=[class='css-1j9u7ba'] .slider-frame
${button_arrow_right_rail_banner_living_libraries}                  css=[class='css-1j9u7ba'] [class='css-13o605i arrowWrapper']
${button_arrow_left_rail_banner_living_libraries}                   css=[class='css-1j9u7ba'] .css-rolnv2

#Content And Categories Living Libraries
${title_categories_living_libraries1}                               css=div:nth-of-type(1) > .css-17v1w3x > .css-1q8d97k
${rail_banner_content_living_libraries1}                            css=[class] [class='css-1lezvj0 css-tqv6h2 css-ug8ckl']:nth-of-type(1)
${title_categories_living_libraries2}                               css=div:nth-of-type(2) > .css-17v1w3x > .css-1q8d97k
${rail_banner_content_living_libraries2}                            css=[class] [class='css-1lezvj0 css-tqv6h2 css-ug8ckl']:nth-of-type(2)
${title_categories_living_libraries3}                               css=div:nth-of-type(3) > .css-17v1w3x > .css-1q8d97k
${rail_banner_content_living_libraries3}                            css=[class] [class='css-1lezvj0 css-tqv6h2 css-ug8ckl']:nth-of-type(3)
${title_categories_living_libraries4}                               css=div:nth-of-type(5) > .css-17v1w3x > .css-1q8d97k
${rail_banner_content_living_libraries4}                            css=[class] [class='css-1lezvj0 css-tqv6h2 css-ug8ckl']:nth-of-type(5)
${title_categories_living_libraries5}                               css=div:nth-of-type(6) > .css-17v1w3x > .css-1q8d97k
${rail_banner_content_living_libraries5}                            css=[class] [class='css-1lezvj0 css-tqv6h2 css-ug8ckl']:nth-of-type(6)
${title_categories_living_libraries6}                               css=div:nth-of-type(7) > .css-17v1w3x > .css-1q8d97k
${rail_banner_content_living_libraries6}                            css=[class] [class='css-1lezvj0 css-tqv6h2 css-ug8ckl']:nth-of-type(7)
${rail_banner_mid_living_libraries}                                 css=[class='css-21l0kp']
${match_card_banner_living_libraries}                               css=.css-1et68jm
${frame_content_categories_living_libraries}                        css=.css-1mcjboy.css-tqv6h2.css-ug8ckl

#View All Categories Living Libraries
${link_text_view_all_living_libraries}                              link=View All
${title_view_all_living_libraries}                                  css=.headTitle
${button_sorting_view_all_living_libraries}                         css=#sortingContainer
${match_card_view_all_living_libraries}                             css=.css-h3a6c7 > div:nth-of-type(2)

*** Keywords ***
Go To Living Libraries Page
    Wait Until Element Is Visible                                   ${logo_homepage_molatv}
    Click Element                                                   ${menu_top_bar_homepage_living}

Verify UI Living Side Bar Menu
    Wait Until Element Is Visible                                   ${menu_side_bar_homepage_home}
    Element Should Be Visible                                       ${menu_side_bar_homepage_search}
    Element Should Be Visible                                       ${menu_side_bar_homepage_home}
    Element Should Be Visible                                       ${menu_side_bar_homepage_browse}
    Element Should Be Visible                                       ${menu_side_bar_homepage_matches}
    Element Should Be Visible                                       ${menu_side_bar_homepage_beli_akses}
    Element Should Be Visible                                       ${menu_side_bar_homepage_redeem_voucher}

Verify UI Living Top Bar Menu
    Element Should Be Visible                                       ${menu_top_bar_homepage_home}
    Element Should Be Visible                                       ${menu_top_bar_homepage_living}
    Element Should Be Visible                                       ${menu_top_bar_homepage_sports}
    Element Should Be Visible                                       ${menu_top_bar_homepage_kids}
    Element Should Be Visible                                       ${menu_top_bar_homepage_bold}
    Element Should Be Visible                                       ${rail_banner_living_libraries}

Verify Categories And Content Living Is Shown
    Execute Javascript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 100})
    Execute Javascript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 500})
    Execute Javascript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 1000})
    Execute Javascript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 1500})
    Execute Javascript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 2000})
    Element Should Be Visible                                       ${frame_content_categories_living_libraries}
    Element Should Be Visible                                       ${matches_footer}

Verify Rail Banner Living Libraries
    Wait Until Element Is Visible                                   ${rail_banner_living_libraries}
    Click Element                                                   ${button_arrow_right_rail_banner_living_libraries}
    Sleep                                                           2
    Click Element                                                   ${button_arrow_left_rail_banner_living_libraries}
    Sleep                                                           2
    Element Should Be Visible                                       ${rail_banner_living_libraries}

Verify The Banner Can Be Selected
    Wait Until Element Is Visible                                   ${rail_banner_living_libraries}
    Mouse Over                                                      ${match_card_banner_living_libraries}
    Page Should Contain Element                                     ${match_card_banner_living_libraries}

Click View All Button In The Category/Series Thumbnail In The living Page
    Scroll Element Into View                                        ${rail_banner_content_living_libraries3}
    Click Element                                                   ${link_text_view_all_living_libraries}
    Wait Until Element Is Visible                                   ${title_view_all_living_libraries}
    Element Should Be Visible                                       ${title_view_all_living_libraries}
    Element Should Be Visible                                       ${button_sorting_view_all_living_libraries}
    Element Should Be Visible                                       ${match_card_view_all_living_libraries}
    Execute JavaScript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 100})
    Execute JavaScript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 200})
    Scroll Element Into View                                        ${footer_view_all}
    Wait Until Element Is Visible                                   ${footer_view_all}
    Element Should Be Visible                                       ${footer_view_all}
    Execute JavaScript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 200})
    Execute JavaScript                                              document.getElementsByClassName('children__container')[0].scrollTo({top: 100})
    Scroll Element Into View                                        ${title_view_all_living_libraries}
    Wait Until Element Is Visible                                   ${title_view_all_living_libraries}
    Element Should Be Visible                                       ${title_view_all_living_libraries}

Verify the back button on the all pages
    Go Back
    Verify UI Living Side Bar Menu
    Verify UI Living Top Bar Menu
    Verify Categories And Content Living Is Shown