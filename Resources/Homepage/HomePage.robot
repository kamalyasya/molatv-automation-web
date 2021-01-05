*** Settings ***
Library         	    SeleniumLibrary
Library                 String
Resource                ../../Frameworks/Routers.robot

*** Variables ***
#Menu Mola TV Web
${logo_homepage_molatv}                         css=._1qzw_ > img[alt='logo Mola']
${text_homepage_selected_menu}                  css=.Trssw._2yKxK
${menu_homepage_selected_menu}                  css=._3lT3U
${menu_side_bar_homepage_search}                css=div:nth-of-type(1) > .SwWJf
${menu_side_bar_homepage_home}                  css=._1GfoO > div:nth-of-type(2)
${menu_side_bar_homepage_home_hover}            css=div:nth-of-type(2) > ._2yKxK
${menu_side_bar_homepage_browse}                css=._1GfoO > div:nth-of-type(3)
${menu_side_bar_homepage_matches}               css=._1GfoO > div:nth-of-type(4)
${menu_side_bar_homepage_beli_akses}            css=._1GfoO > div:nth-of-type(5)
${menu_side_bar_homepage_redeem_voucher}        css=._1GfoO > div:nth-of-type(6)
${menu_side_bar_homepage_accounts}              css=._2YhM7
${text_homepage_langganan_count_number}         css=.count-number
${menu_top_bar_homepage_movies}                 css=.FYgXF > div:nth-of-type(1)
${menu_top_bar_homepage_living}                 css=.FYgXF > div:nth-of-type(2)
${menu_top_bar_homepage_sports}                 css=.FYgXF > div:nth-of-type(3)
${menu_top_bar_homepage_kids}                   css=.FYgXF > div:nth-of-type(4)
${menu_top_bar_homepage_bold}                   css=._392KM

${links_homepage_menu_profil}                   xpath=//div[text()='Profil']
${links_homepage_menu_inbox}                    xpath=//div[text()='Pesan Masuk']
${links_homepage_menu_tontonan_saya}            xpath=//div[text()='Tontonan Saya']
${links_homepage_menu_pengaturan}               xpath=//div[text()='Pengaturan']
${links_homepage_menu_langganan}                xpath=//div[text()='Langganan']
${links_homepage_menu_order_history}            xpath=//div[text()='Riwayat Pembelian']
${links_homepage_menu_beli_akses}               xpath=//div[text()='Beli Akses' and not(@class='_2yKxK')]
${rail_banner_homepage}                         css=.css-11xe1ut.css-nch242.slider > .slider-frame

#Categories And Content In Home Page
${categories_homepage1}                         css=div:nth-of-type(1) > .css-17v1w3x > .css-1q8d97k
${rail_banner_content_homepage1}                css=[class='css-1lezvj0 css-tqv6h2 css-ug8ckl']:nth-of-type(1) .carouselWrapper
${button_view_all1}                             css=div:nth-of-type(1) > .css-17v1w3x > .css-1q8d97k > a
${categories_homepage2}                         css=div:nth-of-type(2) > .css-17v1w3x > .css-1q8d97k
${rail_banner_content_homepage2}                css=[class='css-1lezvj0 css-tqv6h2 css-ug8ckl']:nth-of-type(2) .carouselWrapper
${button_view_all2}                             css=div:nth-of-type(2) > .css-17v1w3x > .css-1q8d97k > a
${categories_homepage3}                         css=div:nth-of-type(3) > .css-17v1w3x > .css-1q8d97k
${rail_banner_content_homepage3}                css=[class='css-1lezvj0 css-tqv6h2 css-ug8ckl']:nth-of-type(3) .carouselWrapper
${button_view_all3}                             css=div:nth-of-type(3) > .css-17v1w3x > .css-1q8d97k > a
${categories_homepage4}                         css=div:nth-of-type(4) > .css-17v1w3x > .css-1q8d97k
${rail_banner_content_homepage4}                css=[class='css-1lezvj0 css-tqv6h2 css-ug8ckl']:nth-of-type(4) .carouselWrapper
${button_view_all4}                             css=div:nth-of-type(4) > .css-17v1w3x > .css-1q8d97k > a
${categories_homepage5}                         css=div:nth-of-type(5) > .css-17v1w3x > .css-1q8d97k
${rail_banner_content_homepage5}                css=[class='css-1lezvj0 css-tqv6h2 css-ug8ckl']:nth-of-type(5) .carouselWrapper
${button_view_all5}                             css=div:nth-of-type(5) > .css-17v1w3x > .css-1q8d97k > a
${categories_homepage6}                         css=div:nth-of-type(6) > .css-17v1w3x > .css-1q8d97k
${rail_banner_content_homepage6}                css=[class='css-1lezvj0 css-tqv6h2 css-ug8ckl']:nth-of-type(6) .carouselWrapper
${button_view_all6}                             css=div:nth-of-type(6) > .css-17v1w3x > .css-1q8d97k > a
${categories_homepage7}                         css=div:nth-of-type(7) > .css-17v1w3x > .css-1q8d97k
${rail_banner_content_homepage7}                css=[class='css-1lezvj0 css-tqv6h2 css-ug8ckl']:nth-of-type(7) .carouselWrapper
${button_view_all7}                             css=div:nth-of-type(7) > .css-17v1w3x > .css-1q8d97k > a
${rail_banner_continue_watching}                css=.css-w9iiky
${image_content_homepage}                       css=div:nth-of-type(1) > .css-17v1w3x > .carouselWrapper.css-axq52g > .css-11xe1ut.css-d0ps81.slider > .slider-frame > .slider-list > .slide-current.slide-visible.slider-slide .css-tqv6h2.imageWrapper.loaded > .imageBorder

#Rail Banner In All Menu
${rail_banner_all_menu}                         css=.css-11xe1ut.css-nch242.slider > .slider-frame

#All Match Card
${page_match_card}                              css=.css-1et68jm

${links_homepage_privasi}                       css=[href='\/privacy']
${links_homepage_syarat_dan_ketentuan}          css=[href='\/terms-conditions']

${frame_homepage_inbox_onboarding}              css=.__floater__body
${text_homepage_title_onboarding}               css=._2u2aj
${text_homepage_content_onboarding}             css=._1fO2X

${logo_homepage_molatv}                         css=._1qzw_ > img[alt='logo Mola']
${text_homepage_selected_menu}                  css=.Trssw._2yKxK
${menu_homepage_selected_menu}                  css=._3lT3U
${menu_homepage_search}                         css=div:nth-of-type(1) > .SwWJf
${menu_homepage_home}                           css=._1GfoO > div:nth-of-type(2)
${menu_homepage_home_hover}                     css=div:nth-of-type(2) > ._2yKxK
${menu_homepage_browse}                         css=._1GfoO > div:nth-of-type(3)
${menu_homepage_matches}                        css=._1GfoO > div:nth-of-type(4)
${menu_homepage_beli_akses}                     css=._1GfoO > div:nth-of-type(5)
${menu_homepage_redeem_voucher}                 css=._1GfoO > div:nth-of-type(6)
${menu_homepage_accounts}                       css=._2YhM7
${text_homepage_langganan_count_number}         css=.count-number
${menu_homepage_movies}                         css=.FYgXF > div:nth-of-type(1)
${menu_homepage_living}                         css=.FYgXF > div:nth-of-type(2)
${menu_homepage_sports}                         css=.FYgXF > div:nth-of-type(3)
${menu_homepage_kids}                           css=.FYgXF > div:nth-of-type(4)

# Profile Page
${links_homepage_menu_selected}                 css=._1NGTJ
${links_homepage_menu_profil}                   xpath=//div[text()='Profil']
${links_homepage_menu_inbox}                    xpath=//div[text()='Pesan Masuk']
${links_homepage_menu_tontonan_saya}            xpath=//div[text()='Tontonan Saya']
${links_homepage_menu_pengaturan}               xpath=//div[text()='Pengaturan']
${links_homepage_menu_langganan}                xpath=//div[text()='Langganan']
${links_homepage_menu_order_history}            xpath=//div[text()='Riwayat Pembelian']
${links_homepage_menu_beli_akses}               xpath=//div[text()='Beli Akses' and not(@class='_2yKxK')]

${links_homepage_privasi}                       css=[href='\/privacy']
${links_homepage_syarat_dan_ketentuan}          css=[href='\/terms-conditions']

${frame_homepage_inbox_onboarding}              css=.__floater__body
${text_homepage_title_onboarding}               css=._2u2aj
${text_homepage_content_onboarding}             css=._1fO2X


${button_homepage_skip_inbox_onboarding}        id=skip
${button_homepage_finish_inbox_onboarding}      id=next

${button_arrow_right_rail_banner_homepage}      css=.arrowWrapper.css-13o605i
${expected_arrow_right_rail_banner_homepage}    css=.css-cbkx8b [tabindex='-1']:nth-of-type(2) .bannerImage
${button_arrow_left_rail_banner_homepage}       css=.arrowWrapper.css-rolnv2
${expected_arrow_left_rail_banner_homepage}     css=.css-cbkx8b [tabindex='-1']:nth-of-type(1) .bannerImage

${banner_homepage_content1}                     css=div:nth-of-type(1) > .css-17v1w3x > .carouselWrapper.css-axq52g > .css-11xe1ut.css-d0ps81.slider > .slider-frame > .slider-list > .slide-current.slide-visible.slider-slide  .css-1et68jm
${banner_homepage_content2}                     css=div:nth-of-type(2) > .css-17v1w3x > .carouselWrapper.css-o5xff6 > .css-11xe1ut.css-d0ps81.slider > .slider-frame > .slider-list > .slide-current.slide-visible.slider-slide  .css-1et68jm
${banner_homepage_content3}                     css=div:nth-of-type(1) > .css-17v1w3x > .carouselWrapper.css-o5xff6 > .css-11xe1ut.css-d0ps81.slider > .slider-frame > .slider-list > li:nth-of-type(3)  .css-1et68jm

${rail_banner_matches_page}                     css=.css-11xe1ut.css-nch242.slider  .slider-list
${matches_date_filter_toggle}                   css=._2CCM2
${match_card}                                   css=div#match-wrapper > div:nth-of-type(3) > div
${view_all_match_card}                          link=View All
${page_match_view_all}                          css=._2dFXJ

${matches_all_competition}                      css=div#allCompetition
${matches_footer}                               css=._32NSr
${matches_status_match}                         css=p[class$='k1LdU']
${matches_slider_frame}                         css=div:nth-of-type(3) > div > .DgfMr
${matches_page_hover}                           css=#match-wrapper
${matches_calendar}                             css=ul > div:nth-of-type(14)
${list_calendar}                                css=div#list__date
${list_next_calendar}                           css=div:nth-of-type(13) > ._13AG-.calendar_item
${expected_title_movie_detail}                  css=h1

${dropdown_all_competition}                     css=._30NbM
${toggle_on_of_all_competition}                 css=._33UoQ ._1VH-8._334Zm
${button_apply_all_competition}                 css=._3NXCX
${page_all_competition}                         css=div#match-wrapper > div:nth-of-type(2)
${checkbox_1}                                   css=.checkbox0
${uncheckbox_1}                                 css=div:nth-of-type(2) > ._1GnU3.checkbox0

${currently_playing_matches}                    css=div:nth-of-type(3) > div > .DgfMr > ._3mEMU


#VOD In Continues Watching
${title_vod_continues_watching}                 css=.css-w9iiky [tabindex='-1']:nth-of-type(1) .title
${progress_bar_continues_watching}              css=.css-15ddkiw

#View All HomePage
${title_categories_view_all}                    css=.headTitle
${button_sorting_playlist_view_all}             css=.sortHeadWrapper
${rail_assets_thumbnails_view_all}              css=.css-h3a6c7 > div:nth-of-type(2)
${footer_view_all}                              css=._32NSr
${background_view_all}                          css=body
${mola_hub}                                     css=.css-ch8pw7.css-jk6p7n.css-qd8pk2

${button_homepage_live_chat}                    css=.embeddedServiceIcon

# Favorit Saya
${links_homepage_view_all_favorit_saya}         css=[href='\/accounts\/profile\?tab\=watchList']

# Just Added
${links_homepage_view_all_just_added}           css=[href='\/categories\/fea-justadded']


*** Keywords ***
Verify The App Navigates To Home Page
    [Arguments]     ${HOME}
    Wait Until Element Is Not Visible           ${field_login_email}
    Wait Until Element Is Visible               ${menu_side_bar_homepage_home}
    Mouse Over                                  ${menu_side_bar_homepage_home}
    Wait Until Element Is Visible               ${menu_side_bar_homepage_home_hover}
    Element Text Should Be                      ${menu_side_bar_homepage_home_hover}         ${HOME}

Open Beli Akses Menu
    Wait Until Element Is Visible               ${menu_side_bar_homepage_beli_akses}
    Click Element                               ${menu_side_bar_homepage_beli_akses}
    Wait Until Element Is Visible               ${links_homepage_menu_beli_akses}
    Click Element                               ${links_homepage_menu_beli_akses}

Open Privasi Page
    Wait Until Element Is Visible               ${links_homepage_privasi}
    Click Element                               ${links_homepage_privasi}

Open Syarat Dan Ketentuan Page
    Wait Until Element Is Visible               ${links_homepage_syarat_dan_ketentuan}
    Click Element                               ${links_homepage_syarat_dan_ketentuan}

Click Next Button And Skip Inbox Onboarding
    Wait Until Page Contains Element            ${frame_homepage_inbox_onboarding}
    Wait Until Element Is Visible               ${frame_homepage_inbox_onboarding}
    Wait Until Element Is Visible               ${button_homepage_finish_inbox_onboarding}
    Click Element                               ${button_homepage_finish_inbox_onboarding}
    Click Element                               ${menu_side_bar_homepage_accounts}

Open Login Page
    Wait Until Element Is Visible               ${menu_side_bar_homepage_accounts}
    Mouse Over                                  ${menu_side_bar_homepage_accounts}
    Wait Until Element Is Visible               ${menu_side_bar_homepage_accounts}
    Click Element                               ${menu_side_bar_homepage_accounts}
    Wait Until Element Is Visible               ${links_homepage_menu_profil}
    Mouse Over                                  ${links_homepage_menu_profil}
    Wait Until Element Is Visible               ${menu_homepage_accounts}
    Mouse Over                                  ${menu_homepage_accounts}
    Wait Until Element Is Visible               ${menu_homepage_accounts}
    Click Element                               ${menu_homepage_accounts}
    Wait Until Element Is Visible               ${button_homepage_live_chat}
    Mouse Over                                  ${button_homepage_live_chat}
    Mouse Out                                   ${button_homepage_live_chat}


Verify The UI Of The User Icon Without Login
    Wait Until Element Is Visible               ${menu_side_bar_homepage_accounts}
    Click Element                               ${menu_side_bar_homepage_accounts}
    Wait Until Element Is Visible               ${links_homepage_menu_profil}
    Element Should Be Visible                   ${links_homepage_menu_profil}
    Element Should Be Visible                   ${links_homepage_menu_pengaturan}
    Element Should Be Visible                   ${links_homepage_menu_beli_akses}
    Wait Until Element Is Visible               ${field_login_email}
    Element Should Be Visible                   ${field_login_email}
    Element Should Be Visible                   ${field_login_password}


Verify Menu After Logged In
    Wait Until Element Is Not Visible           ${field_login_email}

    Wait Until Element Is Visible               ${menu_side_bar_homepage_accounts}
    Click Element                               ${menu_side_bar_homepage_accounts}

    Wait Until Element Is Visible               ${menu_homepage_accounts}
    Mouse Over                                  ${menu_homepage_accounts}
    Click Element                               ${menu_homepage_accounts}
    Mouse Over                                  ${button_homepage_live_chat}

    Wait Until Element Is Visible               ${links_homepage_menu_profil}
    Element Should Be Visible                   ${links_homepage_menu_profil}
    Element Should Be Visible                   ${links_homepage_menu_inbox}
    Element Should Be Visible                   ${links_homepage_menu_pengaturan}
    Element Should Be Visible                   ${links_homepage_menu_langganan}
    Element Should Be Visible                   ${links_homepage_menu_order_history}
    Element Should Be Visible                   ${links_homepage_menu_beli_akses}

Verify Inbox Onboarding On Homepage
    [Arguments]  ${EXPECTED_TEXT_TITLE_ONBOARDING}  ${EXPECTED_TEXT_CONTENT_ONBOARDING}
    Wait Until Element Is Visible               ${frame_homepage_inbox_onboarding}
    Wait Until Element Is Visible               ${button_homepage_finish_inbox_onboarding}
    Element Should Be Visible                   ${text_homepage_title_onboarding}
    Element Text Should Be                      ${text_homepage_title_onboarding}                   ${EXPECTED_TEXT_TITLE_ONBOARDING}
    Element Should Be Visible                   ${text_homepage_content_onboarding}
    Element Text Should Be                      ${text_homepage_content_onboarding}                 ${EXPECTED_TEXT_CONTENT_ONBOARDING}
    Element Should Be Visible                   ${button_homepage_finish_inbox_onboarding}

Open Inbox Page
    Wait Until Element Is Not Visible           ${field_login_email}
    Wait Until Element Is Visible               ${menu_side_bar_homepage_accounts}
    Click Element                               ${menu_side_bar_homepage_accounts}
    Wait Until Element Is Visible               ${links_homepage_menu_inbox}
    Click Element                               ${links_homepage_menu_inbox}

Open Search Page
    Wait Until Element Is Visible               ${menu_side_bar_homepage_search}
    Click Element                               ${menu_side_bar_homepage_search}
    Mouse Over                                  ${menu_top_bar_homepage_movies}

Open Matches Page
    Wait Until Element Is Visible               ${menu_side_bar_homepage_matches}
    Click Element                               ${menu_side_bar_homepage_matches}

Verify UI Layout of Matches page
    Wait Until Element Is Visible               ${menu_side_bar_homepage_home_hover}
    Element Should Be Visible                   ${menu_side_bar_homepage_search}
    Element Should Be Visible                   ${menu_side_bar_homepage_home}
    Element Should Be Visible                   ${menu_side_bar_homepage_browse}
    Element Should Be Visible                   ${menu_side_bar_homepage_matches}
    Element Should Be Visible                   ${menu_side_bar_homepage_beli_akses}
    Element Should Be Visible                   ${menu_side_bar_homepage_accounts}
    Wait Until Element Is Visible               ${rail_banner_matches_page}     30
    Element Should Be Visible                   ${rail_banner_matches_page}
    Element Should Be Visible                   ${matches_date_filter_toggle}
    Element Should Be Visible                   ${match_card}

Click view all button
    Scroll Element Into View                    ${matches_calendar}
    Click Element                               ${view_all_match_card}
    Wait Until Element Is Visible               ${page_match_view_all}

Verify all the matches of categories will shown up from the beginning time
    Element Should Be Visible                   ${page_match_view_all}

Choose any upcoming match
    Wait Until Element Is Visible               ${matches_calendar}    30
    Mouse Over                                  ${matches_page_hover}
    Sleep                                       2
    Scroll Element Into View                    ${matches_status_match}
    Sleep                                       3

Check Upcoming Matches
    Element Should Be Visible                   ${matches_status_match}
    Click Element                               ${matches_status_match}
    Wait Until Element Is Visible               ${expected_title_movie_detail}

Click Next Day
    Scroll Element Into View                    ${list_calendar}
    Click Element                               ${list_next_calendar}
    Sleep                                       3
    Check Upcoming Matches

Tap Drop Down Filter Competition
    Wait Until Element Is Visible               ${dropdown_all_competition}
    Click Element                               ${dropdown_all_competition}

Change Filter Competition
    Wait Until Element Is Visible               ${toggle_on_of_all_competition}
    Click Element                               ${toggle_on_of_all_competition}
    Click Element                               ${toggle_on_of_all_competition}
    Sleep                                       2

Click Button Apply
    Wait Until Element Is Visible               ${button_apply_all_competition}
    Scroll Element Into View                    ${button_apply_all_competition}
    Click Element                               ${button_apply_all_competition}

Dont't Click Button Apply
    Click Element                               ${dropdown_all_competition}
    Click Element                               ${dropdown_all_competition}

Verify displayed the live match schedule according to the filter
    Page Should Contain Element                 ${page_all_competition}

Verify Filter Not Saved
    Page Should Contain Element                 ${page_all_competition}
    Scroll Element Into View                    ${checkbox_1}
    Element Should Be Visible                   ${checkbox_1}
    Element Should Not Be Visible               ${uncheckbox_1}

Choose any live match
    Wait Until Element Is Visible               ${matches_calendar}    30
    Mouse Over                                  ${matches_page_hover}
    Sleep                                       2
    Scroll Element Into View                    ${view_all_match_card}


Verify UI Homepage Side Bar Menu
    Wait Until Element Is Visible               ${menu_side_bar_homepage_home}
    Element Should Be Visible                   ${menu_side_bar_homepage_search}
    Element Should Be Visible                   ${menu_side_bar_homepage_home}
    Element Should Be Visible                   ${menu_side_bar_homepage_browse}
    Element Should Be Visible                   ${menu_side_bar_homepage_matches}
    Element Should Be Visible                   ${menu_side_bar_homepage_beli_akses}
    Element Should Be Visible                   ${menu_side_bar_homepage_redeem_voucher}

Verify UI Homepage Top Bar Menu
    Element Should Be Visible                   ${menu_top_bar_homepage_movies}
    Element Should Be Visible                   ${menu_top_bar_homepage_living}
    Element Should Be Visible                   ${menu_top_bar_homepage_sports}
    Element Should Be Visible                   ${menu_top_bar_homepage_kids}
    Element Should Be Visible                   ${rail_banner_homepage}

Verify Categories And Content Is Shown
    Element Should Be Visible                   ${categories_homepage1}
    Scroll Element Into View                    ${rail_banner_content_homepage1}
    Element Should Be Visible                   ${rail_banner_content_homepage1}
    Scroll Element Into View                    ${categories_homepage2}
    Element Should Be Visible                   ${categories_homepage2}
    Scroll Element Into View                    ${rail_banner_content_homepage2}
    Element Should Be Visible                   ${rail_banner_content_homepage2}
    Scroll Element Into View                    ${categories_homepage3}
    Element Should Be Visible                   ${categories_homepage3}
    Scroll Element Into View                    ${rail_banner_content_homepage3}
    Element Should Be Visible                   ${rail_banner_content_homepage3}
    Scroll Element Into View                    ${categories_homepage4}
    Element Should Be Visible                   ${categories_homepage4}
    Scroll Element Into View                    ${rail_banner_content_homepage4}
    Scroll Element Into View                    ${categories_homepage5}
    Element Should Be Visible                   ${categories_homepage5}
    Scroll Element Into View                    ${rail_banner_content_homepage5}
    Element Should Be Visible                   ${rail_banner_content_homepage5}
    Scroll Element Into View                    ${categories_homepage6}
    Element Should Be Visible                   ${categories_homepage6}
    Scroll Element Into View                    ${rail_banner_content_homepage6}
    Element Should Be Visible                   ${rail_banner_content_homepage6}
    Scroll Element Into View                    ${categories_homepage7}
    Element Should Be Visible                   ${categories_homepage7}
    Scroll Element Into View                    ${rail_banner_content_homepage7}
    Element Should Be Visible                   ${rail_banner_content_homepage7}

Verify Rail Banner Homepage
    Wait Until Element Is Visible               ${rail_banner_homepage}
    Click Element                               ${button_arrow_right_rail_banner_homepage}
    Element Should Be Visible                   ${expected_arrow_right_rail_banner_homepage}
    Click Element                               ${button_arrow_left_rail_banner_homepage}
    Element Should Be Visible                   ${expected_arrow_left_rail_banner_homepage}

Click Banner & Verify Banner Can Be Selected
    Scroll Element Into View                    ${banner_homepage_content1}
    Wait Until Element Is Visible               ${banner_homepage_content1}
    Click Element                               ${banner_homepage_content1}

    ${LOCATION1}                                Get Location
    Location Should Contain                     ${LOCATION1}

Verify Continue Watching Displayed Under The Banner
    Click Element                               ${logo_homepage_molatv}
    Wait Until Element Is Visible               ${rail_banner_continue_watching}
    Scroll Element Into View                    ${rail_banner_continue_watching}
    Element Should Be Visible                   ${rail_banner_continue_watching}

Verify Title VOD In Continues Watching
    Wait Until Element Is Visible               ${title_vod_continues_watching}
    Scroll Element Into View                    ${title_vod_continues_watching}
    Element Should Be Visible                   ${title_vod_continues_watching}

Verify the UI of category page after click view all button
    Click Element                               ${button_view_all1}
    Wait Until Element Is Visible               ${title_categories_view_all}
    Element Should Be Visible                   ${title_categories_view_all}
    Element Should Be Visible                   ${button_sorting_playlist_view_all}
    Element Should Be Visible                   ${rail_assets_thumbnails_view_all}
    Execute JavaScript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 100})
    Execute JavaScript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 200})
    Execute JavaScript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 300})
    Execute JavaScript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 400})
    Execute JavaScript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 500})
    Execute JavaScript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 600})
    Execute JavaScript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 700})
    Execute JavaScript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 800})
    Execute JavaScript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 1200})
    Wait Until Element Is Visible               ${footer_view_all}
    Element Should Be Visible                   ${footer_view_all}
    Execute JavaScript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 1200})
    Execute JavaScript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 800})
    Execute JavaScript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 700})
    Execute JavaScript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 600})
    Execute JavaScript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 500})
    Execute JavaScript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 400})
    Execute JavaScript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 300})
    Execute JavaScript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 200})
    Execute JavaScript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 100})
    Wait Until Element Is Visible               ${title_categories_view_all}
    Element Should Be Visible                   ${title_categories_view_all}

Verify the info shown in VOD/Match Card
    Scroll Element Into View                    ${image_content_homepage}
    Get Source
    Get Value                                   ${image_content_homepage}
    ${width}    ${height} =                     Get Element Size    ${image_content_homepage}
    Element Should Be Visible                   ${image_content_homepage}

Verify the back button on the all pages
    Go Back
    Verify UI Homepage Side Bar Menu
    Verify UI Homepage Top Bar Menu
    Verify Categories And Content Is Shown

Rails Is Shown In All Menu
    Wait Until Element Is Visible               ${rail_banner_all_menu}
    Element Should Be Visible                   ${rail_banner_all_menu}

Rails Is Empty In All Menu
    Element Should Not Be Visible               ${rail_banner_all_menu}

Verify No empty raiis shown in any page
    Click Element                       ${menu_top_bar_homepage_movies}
    ${CHECK_RAILS}  run keyword and return status  Wait Until Element Is Visible    ${rail_banner_all_menu}     3
    run keyword if      '${CHECK_RAILS}' == 'FALSE'      Rails Is Empty In All Menu
    ...                 ELSE                             Rails Is Shown In All Menu
    Click Element                       ${menu_top_bar_homepage_living}
    ${CHECK_RAILS}  run keyword and return status  Wait Until Element Is Visible    ${rail_banner_all_menu}     3
    run keyword if      '${CHECK_RAILS}' == 'FALSE'      Rails Is Empty In All Menu
    ...                 ELSE                             Rails Is Shown In All Menu
    Click Element                       ${menu_top_bar_homepage_sports}
    ${CHECK_RAILS}  run keyword and return status  Wait Until Element Is Visible    ${rail_banner_all_menu}     3
    run keyword if      '${CHECK_RAILS}' == 'FALSE'      Rails Is Empty In All Menu
    ...                 ELSE                             Rails Is Shown In All Menu
    Click Element                       ${menu_top_bar_homepage_kids}
    ${CHECK_RAILS}  run keyword and return status  Wait Until Element Is Visible    ${rail_banner_all_menu}     3
    run keyword if      '${CHECK_RAILS}' == 'FALSE'      Rails Is Empty In All Menu
    ...                 ELSE                             Rails Is Shown In All Menu

Click View All
    Click Element                               ${button_view_all1}
    Wait Until Element Is Visible               ${page_match_card}

Verify that no empty tile found in content list/page
    @{Result_On_Page}=  Get Webelements     ${page_match_card}

    FOR     ${element}      IN      @{Result_On_Page}
            ${RESULT}=  get value   ${element}
            Mouse Over  ${element}
            run keyword if  '${RESULT}' == 'None'   continue for loop
            ...     ELSE        exit for loop
    END

Verify Progress Bar Will Appear
    Wait Until Element Is Visible               ${progress_bar_continues_watching}
    Element Should Be Visible                   ${progress_bar_continues_watching}
    Capture Element Screenshot                  ${progress_bar_continues_watching}

Open Profile Page
    Wait Until Element Is Visible               ${menu_homepage_accounts}
    Mouse Over                                  ${menu_homepage_accounts}
    Wait Until Element Is Visible               ${menu_homepage_accounts}
    Click Element                               ${menu_homepage_accounts}
    Wait Until Element Is Visible               ${button_homepage_live_chat}
    Mouse Over                                  ${button_homepage_live_chat}

Open Tontonan Saya Page
    Open Profile Page
    Wait Until Element Is Visible               ${links_homepage_menu_tontonan_saya}
    Click Element                               ${links_homepage_menu_tontonan_saya}

Go To Homepage
    Wait Until Element Is Visible               ${logo_homepage_molatv}
    Click Element                               ${logo_homepage_molatv}

Click View All On Favorit Saya
    Wait Until Element Is Visible               ${links_homepage_view_all_favorit_saya}
    Scroll Element Into View                    ${links_homepage_view_all_just_added}
    Click Element                               ${links_homepage_view_all_favorit_saya}