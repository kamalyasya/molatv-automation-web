*** Settings ***
Library                 String
Library         	    SeleniumLibrary
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${text_process_banned_the_account}              css=.css-dq4vl8 > p
${frame_video_user_banning}                     css=div#video-child > .css-q60n54
${text_Watermark_account_user_banning}          css=div#video-child > div:nth-of-type(2)
${text_login_untuk_menonton_user_banning}       xpath=/html//div[@id='video-player-root']//div[@class='_2mt2k']//button[@class='_33Xwm']
${frame_login_to_wacth_movie_user_banning}      css=._1RUaW
${frame_pilih_paket_berikut_untuk_menikmati_tayangan}       css=.GIK4i  .css-tqv6h2.css-ug8ckl

*** Keywords ***
Verify banned account in VOD
    Wait Until Element Is Visible           ${text_process_banned_the_account}
    Wait Until Page Contains Element        ${text_process_banned_the_account}
    Page Should Contain Element             ${text_process_banned_the_account}

Verify Watermark in VOD
    Wait Until Element Is Visible           ${frame_video_user_banning}
    Wait Until Page Contains Element        ${frame_video_user_banning}
    Page Should Contain Element             ${frame_video_user_banning}

    Sleep                                   2

    Get Text                                ${text_Watermark_account_user_banning}
    Wait Until Element Is Visible           ${text_Watermark_account_user_banning}
    Wait Until Page Contains Element        ${text_Watermark_account_user_banning}
    Page Should Contain Element             ${text_Watermark_account_user_banning}
    Sleep                                   25

Login Untuk Menonton
    Wait Until Element Is Visible           ${text_login_untuk_menonton_user_banning}
    Click Element                           ${text_login_untuk_menonton_user_banning}
    Sleep                                   5

Verify Login To Wacth
    Wait Until Element Is Visible           ${frame_login_to_wacth_movie_user_banning}      10

Pilih Paket
    Wait Until Element Is Visible           ${frame_pilih_paket_berikut_untuk_menikmati_tayangan}   5
    Wait Until Page Contains Element        ${frame_pilih_paket_berikut_untuk_menikmati_tayangan}   5