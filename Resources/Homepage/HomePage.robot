*** Settings ***
Resource                ../../Frameworks/Routers.robot

*** Variables ***
#Menu Mola TV Web
${logo_homepage_molatv}                         css=._1qzw_ > img[alt='logo Mola']
${text_homepage_selected_menu}                  xpath=//div[@data-testid='side-menu-active']/following-sibling::div
${menu_homepage_selected_menu}                  css=[data-testid='side-menu-active']
${menu_side_bar_homepage_search}                css=[data-testid='side-menu-search']
${menu_side_bar_homepage_home}                  css=[data-testid='side-menu-search']
${menu_side_bar_homepage_home_hover}            css=[data-testid='side-menu-home-text']
${menu_side_bar_homepage_browse}                css=[data-testid='side-menu-browse']
${menu_side_bar_homepage_matches}               css=[data-testid='side-menu-matches']
${menu_side_bar_homepage_beli_akses}            css=[data-testid='side-menu-subscribe']
${menu_side_bar_homepage_redeem_voucher}        css=._1GfoO > div:nth-of-type(6)
${menu_side_bar_homepage_accounts}              css=[data-testid='side-menu-profile']
${text_homepage_langganan_count_number}         xpath=//*[@data-testid='side-menu-profile-text']/parent::*/following-sibling::*//*[contains(@class,'count-number')]
${menu_top_bar_homepage_home}                   css=[data-testid='top-bar-home-menu']
${menu_top_bar_homepage_living}                 css=[data-testid='top-bar-living-menu']
${menu_top_bar_homepage_sports}                 css=[data-testid='top-bar-sports-menu']
${menu_top_bar_homepage_kids}                   css=[data-testid='top-bar-kids-menu']
${menu_top_bar_homepage_bold}                   css=._392KM
${menu_all_topbar}                              css=.FYgXF.children__header

${links_homepage_menu_profil}                   xpath=//div[@class='_16YQ-']//div[contains(@data-testid, 'menu-profile')]
${links_homepage_menu_inbox}                    xpath=//div[contains(@data-testid, 'menu-inbox')]
${links_homepage_menu_tontonan_saya}            xpath=//div[contains(@data-testid, 'menu-favorite')]
${links_homepage_menu_langganan}                xpath=//div[contains(@data-testid, 'menu-subscription')]
${links_homepage_menu_order_history}            xpath=//div[contains(@data-testid, 'menu-payment-history')]
${links_homepage_menu_beli_akses}               xpath=//div[contains(@data-testid, 'menu-subscribe-now')]
${links_homepage_menu_pengaturan}               xpath=//div[contains(@data-testid, 'menu-settings')]
${rail_banner_homepage}                         xpath=//div[contains(@class,'slider css-11xe1ut css-7zlhwa css-1yigjkk')]
${rail_banner_continue_watching}                xpath=//*[text()='Continue Watching']/ancestor::div/div[contains(@class,'carouselWrapper')]//img[contains(@class,'bannerImage')]

#Categories And Content In Home Page
${categories_trending_now_homepage}             css=._4_hPI > div:nth-child(3)
${categories_homepage1}                         css=div:nth-of-type(2) > .css-17v1w3x > .css-1q8d97k
${content_homepage1}                            css=[class='css-1lezvj0 css-tqv6h2 css-ug8ckl']:nth-of-type(2) .carouselWrapper
${button_view_all1}                             link=View All
${categories_homepage2}                         css=div:nth-of-type(3) > .css-17v1w3x > .css-1q8d97k
${content_homepage2}                            css=[class='css-1lezvj0 css-tqv6h2 css-ug8ckl']:nth-of-type(3) .carouselWrapper
${button_view_all2}                             xpath=//*[text()='Trending on Mola Today']/ancestor::div/div/div[contains(@class,'css-1q8d97k')]/*[text()='View All']
${rail_banner_content_homepage1}                css=.css-21l0kp
${categories_homepage3}                         css=div:nth-of-type(5) > .css-17v1w3x > .css-1q8d97k
${content_homepage3}                            css=[class='css-1lezvj0 css-tqv6h2 css-ug8ckl']:nth-of-type(5) .carouselWrapper
${button_view_all3}                             css=div:nth-of-type(5) > .css-17v1w3x > .css-1q8d97k > a
${categories_homepage4}                         css=div:nth-of-type(6) > .css-17v1w3x > .css-1q8d97k
${content_homepage4}                            css=[class='css-1lezvj0 css-tqv6h2 css-ug8ckl']:nth-of-type(6) .carouselWrapper
${button_view_all4}                             css=div:nth-of-type(6) > .css-17v1w3x > .css-1q8d97k > a
${rail_banner_content_homepage2}                css=.css-21l0kp
${categories_homepage5}                         css=div:nth-of-type(8) > .css-17v1w3x > .css-1q8d97k
${content_homepage5}                            css=[class='css-1lezvj0 css-tqv6h2 css-ug8ckl']:nth-of-type(8) .carouselWrapper
${button_view_all5}                             css=div:nth-of-type(8) > .css-17v1w3x > .css-1q8d97k > a
${categories_homepage6}                         css=div:nth-of-type(9) > .css-17v1w3x > .css-1q8d97k
${content_homepage6}                            css=[class='css-1lezvj0 css-tqv6h2 css-ug8ckl']:nth-of-type(9) .carouselWrapper
${button_view_all6}                             css=div:nth-of-type(9) > .css-17v1w3x > .css-1q8d97k > a
${rail_banner_content_homepage3}                css=.css-21l0kp
${categories_homepage7}                         css=div:nth-of-type(11) > .css-17v1w3x > .css-1q8d97k
${content_homepage7}                            css=[class='css-1lezvj0 css-tqv6h2 css-ug8ckl']:nth-of-type(11) .carouselWrapper
${button_view_all7}                             css=div:nth-of-type(11) > .css-17v1w3x > .css-1q8d97k > a
${categories_homepage8}                         css=div:nth-of-type(12) > .css-17v1w3x > .css-1q8d97k
${content_homepage8}                            css=[class='css-1lezvj0 css-tqv6h2 css-ug8ckl']:nth-of-type(12) .carouselWrapper
${button_view_all8}                             css=div:nth-of-type(12) > .css-17v1w3x > .css-1q8d97k > a
${rail_banner_content_homepage4}                css=.css-21l0kp
${image_card_content_homepage}                  xpath=//*[contains(@class,'carouselWrapper')]
${title_categories_homepage}                    xpath=//*[contains(@class,'css-5jjjwv')] | //*[contains(@class,'css-1q8d97k')]
${image_card_categories_homepage}               xpath=//div[@data-testid='carousel-playlists-FBI-Cat']

#Rail Banner In All Menu
${rail_banner_all_menu}                         xpath=//img[contains(@class,'bannerImage')]
${rail_banner_homepage2}                        css=.css-1gwlbo5

#All Match Card
${page_match_card}                              css=.css-1et68jm

${links_homepage_privasi}                       css=[href='\/privacy']
${links_homepage_syarat_dan_ketentuan}          css=[href='\/terms-conditions']

${frame_homepage_inbox_onboarding}              css=.__floater__body
${text_homepage_title_onboarding}               css=._2u2aj
${text_homepage_content_onboarding}             css=._1fO2X

${menu_homepage_accounts}                       ${menu_side_bar_homepage_accounts}
${text_homepage_menu_profile}                   css=[data-testid='side-menu-profile-text']

# Profile Page
${links_homepage_menu_selected}                 css=._1NGTJ
${links_homepage_menu_profil}                   ${links_homepage_menu_profil}
${links_homepage_menu_inbox}                    ${links_homepage_menu_inbox}
${links_homepage_menu_tontonan_saya}            ${links_homepage_menu_tontonan_saya}
${links_homepage_menu_pengaturan}               ${links_homepage_menu_pengaturan}
${links_homepage_menu_langganan}                ${links_homepage_menu_langganan}
${links_homepage_menu_order_history}            ${links_homepage_menu_order_history}
${links_homepage_menu_beli_akses}               ${links_homepage_menu_beli_akses}

${links_homepage_privasi}                       css=[href='\/privacy']
${links_homepage_syarat_dan_ketentuan}          css=[href='\/terms-conditions']

${frame_homepage_inbox_onboarding}              css=.__floater__body
${text_homepage_title_onboarding}               css=._2u2aj
${text_homepage_content_onboarding}             css=._1fO2X


${button_homepage_skip_inbox_onboarding}        id=skip
${button_homepage_finish_inbox_onboarding}      id=next

${button_arrow_right_rail_banner_homepage}      css=._2HGOE > div:nth-of-type(1) [class='css-13o605i arrowWrapper']
${expected_arrow_right_rail_banner_homepage}    css=._2HGOE > div:nth-of-type(1) [class='css-13o605i arrowWrapper']
${button_arrow_left_rail_banner_homepage}       css=._2HGOE > div:nth-of-type(1) .css-rolnv2
${expected_arrow_left_rail_banner_homepage}     css=._2HGOE > div:nth-of-type(1) .css-rolnv2

${banner_homepage_content1}                     css=.css-hq095j
${banner_homepage_content2}                     css=.css-hq095j
${banner_homepage_content3}                     css=.css-hq095j

${rail_banner_matches_page}                     css=.css-11xe1ut.css-utu171.slider > .slider-frame
${matches_date_filter_toggle}                   css=._2CCM2
${match_card}                                   css=div#match-wrapper > div:nth-of-type(3) > div
${view_all_match_card}                          link=View All
${page_match_view_all}                          css=._2dFXJ
${frame_all_matches}                            css=div#match-wrapper > div:nth-of-type(3) > div

${matches_all_competition}                      css=div#allCompetition
${matches_footer}                               css=._32NSr
${matches_status_match}                         css=.slide-visible.slider-slide > a .k1LdU
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
${title_vod_continues_watching}                 xpath=//*[text()='Continue Watching']/ancestor::div/div[contains(@class,'carouselWrapper')]//img[contains(@class,'bannerImage')]/ancestor::div[contains(@class,'resumeWrapper')]/following-sibling::div/p
${progress_bar_continues_watching}              css=.css-15ddkiw

#View All HomePage
${title_categories_view_all}                    css=.headTitle
${button_sorting_playlist_view_all}             css=.sortHeadWrapper
${rail_assets_thumbnails_view_all}              css=.css-h3a6c7 > div:nth-of-type(2)
${footer_view_all}                              css=._32NSr
${background_view_all}                          css=body
${mola_hub}                                     css=.css-ai1awt

${button_homepage_live_chat}                    css=.embeddedServiceIcon

# Favorit Saya
${links_homepage_view_all_favorit_saya}         css=[href='\/accounts\/profile\?tab\=watchList']

# Just Added
${links_homepage_view_all_just_added}           css=[href='\/categories\/fea-justadded']

# No Match In Page Matches
${text_no_matches_matches_page}                 css=._1KMFc

#Homepage HUBS
${all_column_hubs_homepage}                     css=.css-1mmkue0
${title_hubs_homepage}                          css=//*[text()='Home Hub']
${hubs_all_movies_homepage}                     css=.css-1mmkue0 > a:nth-of-type(1)
${hubs_all_series_homepage}                     css=.css-1mmkue0 > a:nth-of-type(2)
${hubs_hbo_go_homepage}                         css=.css-1mmkue0 > a:nth-of-type(3)

*** Keywords ***
Verify The App Navigates To Home Page
    Wait Until Element Is Not Visible           ${field_login_email}
    Wait Until Element Is Visible               ${menu_side_bar_homepage_home}
    Mouse Over                                  ${menu_side_bar_homepage_home}
    Wait Until Element Is Visible               ${menu_side_bar_homepage_home_hover}
    Element Should Be Visible                   ${menu_all_topbar}

Open Beli Akses Menu
    Wait Until Element Is Visible               ${menu_side_bar_homepage_beli_akses}
    Click Element                               ${menu_side_bar_homepage_beli_akses}
    Wait Until Element Is Visible               ${links_homepage_menu_beli_akses}
    Click Element                               ${links_homepage_menu_beli_akses}
    HomePage.Mouse Over To Live Chat

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
#    Mouse Over                                  ${links_homepage_menu_profil}
    Wait Until Element Is Visible               ${menu_homepage_accounts}
#    Mouse Over                                  ${menu_homepage_accounts}
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
    Open Profile Page
    Wait Until Element Is Visible               ${links_homepage_menu_inbox}
    Click Element                               ${links_homepage_menu_inbox}

Open Search Page
    Wait Until Element Is Visible               ${menu_side_bar_homepage_search}
    Click Element                               ${menu_side_bar_homepage_search}
    Mouse Over To Live Chat

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
    Mouse Over                                  ${rail_banner_matches_page}
    Wait Until Element Is Visible               ${rail_banner_matches_page}     30
    Element Should Be Visible                   ${rail_banner_matches_page}
    Element Should Be Visible                   ${matches_date_filter_toggle}
    Element Should Be Visible                   ${match_card}

Verify Content Of Matches Page
    Scroll Element Into View                    ${frame_all_matches}
    ${CHECK_LAYOUT_MATCHES_PAGE}     run keyword and return status  Wait Until Element Is Visible   ${view_all_match_card}
    run keyword if  '${CHECK_LAYOUT_MATCHES_PAGE}'=='True'  Link Text View All Is Visible
    ...     ELSE                                            Link Text View All Is Not Visible

Link Text View All Is Not Visible
    Wait Until Element Is Visible               ${text_no_matches_matches_page}
    Element Should Be Visible                   ${text_no_matches_matches_page}

Link Text View All Is Visible
    Wait Until Element Is Visible               ${matches_calendar}
    Scroll Element Into View                    ${matches_calendar}
    Wait Until Element Is Visible               ${view_all_match_card}
    Scroll To Element                           ${view_all_match_card}
    Click Element                               ${view_all_match_card}

Verify all the matches of categories will shown up from the beginning time
    Wait Until Element Is Visible               ${page_match_view_all}
    Element Should Be Visible                   ${page_match_view_all}

Choose any upcoming match
    Wait Until Element Is Visible               ${matches_calendar}    30
    Mouse Over                                  ${matches_page_hover}
    Sleep                                       2
    Scroll Element Into View                    ${matches_status_match}
    Sleep                                       3

Verify Upcoming In Matches Page
    ${status} =  Run Keyword And Return Status   Get Text    ${matches_status_match}
    Run Keyword If	   '${status}' == 'Upcoming'      Check Upcoming Matches
    ...                ELSE     Click Next Day

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
    Execute Javascript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 300})
    Scroll Element Into View                    ${view_all_match_card}

Verify UI Homepage Side Bar Menu
    Wait Until Element Is Visible               ${menu_side_bar_homepage_home}
    Wait Until Element Is Visible               ${menu_side_bar_homepage_search}
    Element Should Be Visible                   ${menu_side_bar_homepage_search}
    Element Should Be Visible                   ${menu_side_bar_homepage_home}
    Element Should Be Visible                   ${menu_side_bar_homepage_browse}
    Element Should Be Visible                   ${menu_side_bar_homepage_matches}
    Element Should Be Visible                   ${menu_side_bar_homepage_beli_akses}
#    Element Should be visible                   ${menu_side_bar_homepage_redeem_voucher}       // This menu has been removed from sude bar

Verify UI Homepage Top Bar Menu
    Element Should Be Visible                   ${menu_top_bar_homepage_home}
    Element Should Be Visible                   ${menu_top_bar_homepage_living}
    Element Should Be Visible                   ${menu_top_bar_homepage_sports}
    Element Should Be Visible                   ${menu_top_bar_homepage_kids}
    Element Should Be Visible                   ${rail_banner_homepage}

Verify Categories And Content Is Shown
    Execute Javascript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 100})
    Execute Javascript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 500})
    Execute Javascript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 1000})
    Execute Javascript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 5000})
    Execute Javascript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 10000})
    Execute Javascript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 15000})
    Execute Javascript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 20000})
    Execute Javascript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 25000})
    Scroll Element Into View                    ${matches_footer}
    Element Should Be Visible                   ${title_categories_homepage}
    Element Should Be Visible                   ${image_card_content_homepage}
    Element Should Be Visible                   ${mola_hub}
    Element Should Be Visible                   ${matches_footer}

Verify Rail Banner Homepage
    Wait Until Element Is Visible               ${rail_banner_homepage}
    Click Element                               ${button_arrow_right_rail_banner_homepage}
    Element Should Be Visible                   ${expected_arrow_right_rail_banner_homepage}
    Click Element                               ${button_arrow_left_rail_banner_homepage}
    Element Should Be Visible                   ${expected_arrow_left_rail_banner_homepage}

Click Banner & Verify Banner Can Be Selected
    Scroll Element Into View                    ${menu_all_topbar}
    @{CHECK_BANNERS}=     Get WebElements       ${rail_banner_homepage2}
    log     ${CHECK_BANNERS}

    FOR                     ${ITEM}        IN      @{CHECK_BANNERS}
            log             ${ITEM}
            ${RESULT}=  Get Element Attribute       ${ITEM}     srcset
            click element                           ${ITEM}
#            IF  '${RESULT}' == 'None'
#                Fail
            END
#    Scroll Element Into View                    ${banner_homepage_content1}
#    Wait Until Element Is Visible               ${banner_homepage_content1}
#    Click Element                               ${banner_homepage_content1}
#
#    ${LOCATION1}                                Get Location
#    Location Should Contain                     ${LOCATION1}

Verify Card Continue Watching
    Wait Until Element Is Visible               ${logo_homepage_molatv}
    Click Element                               ${logo_homepage_molatv}
    Wait Until Element Is Visible               ${rail_banner_continue_watching}
    Scroll Element Into View                    ${rail_banner_continue_watching}

    @{CHECK_FIRST_LIST_CARD}=       Get Web Elements        ${rail_banner_continue_watching}
    log list                        ${CHECK_FIRST_LIST_CARD}
    get from list                   ${CHECK_FIRST_LIST_CARD}   0
    Get Element Attribute           ${CHECK_FIRST_LIST_CARD}   0

    FOR                 ${CARD}        IN                @{CHECK_FIRST_LIST_CARD}
                log                                      ${CARD}
                ${RESULT}=      Get Element Attribute    ${CARD}     src
                log                                      ${RESULT}
    END

Verify Title VOD In Continues Watching
    Wait Until Element Is Visible               ${title_vod_continues_watching}
    Scroll Element Into View                    ${title_vod_continues_watching}
    Element Should Be Visible                   ${title_vod_continues_watching}

Verify the UI of category page after click view all button
    Execute Javascript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 25000})
    Execute Javascript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 20000})
    Execute Javascript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 15000})
    Execute Javascript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 10000})
    Execute Javascript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 5000})
    Execute Javascript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 1000})
    Execute Javascript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 300})
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
    Go Back
    Wait Until Element Is Visible               ${logo_homepage_molatv}
    Scroll Element Into View                    ${button_view_all2}
    Click Element                               ${button_view_all2}
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
    Execute Javascript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 25000})
    Execute Javascript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 20000})
    Scroll Element Into View                    ${image_card_content_homepage}
    Get Source
    Get Value                                   ${image_card_content_homepage}
    ${width}    ${height} =                     Get Element Size    ${image_card_content_homepage}
    Element Should Be Visible                   ${image_card_content_homepage}

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

Verify No empty rails shown in any page
    Execute Javascript                          document.getElementsByClassName('children__container')[0].scrollTo({top: 10000})
    sleep                                       3
    @{CHECK_RAILS}=     Get WebElements    ${rail_banner_all_menu}
    log     ${CHECK_RAILS}

    FOR                     ${ITEM}        IN      @{CHECK_RAILS}
            log             ${ITEM}
            ${RESULT}=  Get Element Attribute       ${ITEM}     srcset
            log             ${RESULT}
            IF  '${RESULT}' == 'None'
                Fail
            END
    END

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
    Wait Until Element Is Visible               ${menu_side_bar_homepage_accounts}
    Sleep                                       2
    Mouse Over                                  ${menu_side_bar_homepage_accounts}
    Wait Until Element Is Visible               ${menu_side_bar_homepage_accounts}
    Click Element                               ${menu_side_bar_homepage_accounts}
    Mouse Over To Live Chat

Open Tontonan Saya Page
    Open Profile Page
    Wait Until Element Is Visible               ${links_homepage_menu_tontonan_saya}
    Click Element                               ${links_homepage_menu_tontonan_saya}

Go To Homepage
    Wait Until Element Is Visible               ${logo_homepage_molatv}
    Click Element                               ${logo_homepage_molatv}
    Mouse Over To Live Chat

Click View All On Favorit Saya
    # Scroll Element Into View                    ${links_homepage_view_all_favorit_saya}
    Wait Until Element Is Visible               ${links_homepage_view_all_favorit_saya}
    Scroll Element Into View                    ${links_homepage_view_all_just_added}
    Click Element                               ${links_homepage_view_all_favorit_saya}

Mouse Over To Live Chat
    Wait Until Element Is Visible               ${button_homepage_live_chat}
    Mouse Over                                  ${button_homepage_live_chat}
    Mouse Out                                   ${button_homepage_live_chat}

Choose Movies Categories
    Mouse over                                  ${menu_top_bar_homepage_home}
    Sleep                                       3
    Element Should be Visible                   ${image_card_categories_homepage}
    Click Element                               ${image_card_categories_homepage}

Verify Mola Hubs
    Wait Until Element is Visible               ${all_column_hubs_homepage}
    Element Should Be Visible                   ${hubs_all_movies_homepage}
    Element Should Be Visible                   ${hubs_all_series_homepage}
    Element Should Be Visible                   ${hubs_hbo_go_homepage}

Choose Mola Hub All Movies
    Wait Until Element Is Visible               ${all_column_hubs_homepage}
    Element Should Be Visible                   ${hubs_all_movies_homepage}
    Click Element                               ${hubs_all_movies_homepage}

Choose Mola Hub All Series
    Wait Until Element Is Visible               ${all_column_hubs_homepage}
    Element Should Be Visible                   ${hubs_all_series_homepage}
    Click Element                               ${hubs_all_series_homepage}

Choose Mola Hub HBO GO
    Wait Until Element Is Visible               ${all_column_hubs_homepage}
    Element Should Be Visible                   ${hubs_hbo_go_homepage}
    Click Element                               ${hubs_hbo_go_homepage}