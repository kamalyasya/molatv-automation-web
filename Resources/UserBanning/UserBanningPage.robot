*** Settings ***
Library                 String
Library         	    SeleniumLibrary
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${text_process_banned_the_account}                          css=.css-dq4vl8 > p
${frame_video_user_banning}                                 css=div#video-child > .css-q60n54
${text_Watermark_account_user_banning}                      css=div#video-child > div:nth-of-type(2)
${text_login_untuk_menonton_user_banning}                   xpath=/html//div[@id='video-player-root']//div[@class='_2mt2k']//button[@class='_33Xwm']
${frame_login_to_wacth_movie_user_banning}                  css=._1RUaW
${frame_pilih_paket_berikut_untuk_menikmati_tayangan}       css=.GIK4i  .css-tqv6h2.css-ug8ckl
${frame_paket_movies_and_kids}                              css=div:nth-of-type(1) > ._2Td29
${frame_paket_sports_mobile}                                css=div:nth-of-type(2) > ._2Td29
${frame_paket_premium_entertainment_mola_and_HBO_GO}        css=div:nth-of-type(3) > ._2Td29
${text_click_lihat_paket_lainnya}                           css=._12uNH
${text_free_membership_user_banning}                        css=._1e2Ry > h3

*** Keywords ***
Verify banned account in VOD
    Wait Until Element Is Visible           ${text_process_banned_the_account}
    Wait Until Page Contains Element        ${text_process_banned_the_account}
    Page Should Contain Element             ${text_process_banned_the_account}

Verify Watermark in VOD
    [Arguments]     ${ACCOUNT_SUPERMOLA69690_USERID}
    Wait Until Element Is Visible           ${frame_video_user_banning}
    Wait Until Page Contains Element        ${frame_video_user_banning}
    Page Should Contain Element             ${frame_video_user_banning}
    Element Should Be Visible               ${frame_video_user_banning}
    Sleep                                   2
    Get Text                                ${text_Watermark_account_user_banning}
    Wait Until Element Is Visible           ${text_Watermark_account_user_banning}
    Wait Until Page Contains Element        ${text_Watermark_account_user_banning}
    Page Should Contain Element             ${text_Watermark_account_user_banning}
    Element Should Be Visible               ${text_Watermark_account_user_banning}
    Element Text Should Be                  ${text_Watermark_account_user_banning}      ${ACCOUNT_SUPERMOLA69690_USERID}
    Sleep                                   15

Login Untuk Menonton
    Wait Until Element Is Visible           ${text_login_untuk_menonton_user_banning}
    Wait Until Page Contains Element        ${text_login_untuk_menonton_user_banning}
    Page Should Contain Element             ${text_login_untuk_menonton_user_banning}
    Click Element                           ${text_login_untuk_menonton_user_banning}
    Sleep                                   5

Verify Login To Wacth
    Wait Until Element Is Visible           ${frame_login_to_wacth_movie_user_banning}  2
    Wait Until Page Contains Element        ${frame_login_to_wacth_movie_user_banning}  2
    Page Should Contain Element             ${frame_login_to_wacth_movie_user_banning}  2

Verify Pilih Paket
    Wait Until Element Is Visible           ${frame_pilih_paket_berikut_untuk_menikmati_tayangan}   5
    Wait Until Page Contains Element        ${frame_pilih_paket_berikut_untuk_menikmati_tayangan}   5
    Element Should Be Visible               ${frame_paket_movies_and_kids}
    Element Should Be Visible               ${frame_paket_sports_mobile}
    Element Should Be Visible               ${frame_paket_premium_entertainment_mola_and_HBO_GO}

Click Lihat Paket Lainnya
    Wait Until Element Is Visible           ${text_click_lihat_paket_lainnya}
    Wait Until Page Contains Element        ${text_click_lihat_paket_lainnya}
    Page Should Contain Element             ${text_click_lihat_paket_lainnya}
    Click Element                           ${text_click_lihat_paket_lainnya}
    Sleep                                   2

Verify In Subscription Package Page
    Wait Until Element Is Visible           ${text_free_membership_user_banning}
    Wait Until Page Contains Element        ${text_free_membership_user_banning}
    Page Should Contain Element             ${text_free_membership_user_banning}
    Element Should Be Visible               ${text_free_membership_user_banning}
    Click Element                           ${text_free_membership_user_banning}