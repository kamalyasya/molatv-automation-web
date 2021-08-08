*** Settings ***
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${field_login_email}                                    id=identity
${field_login_password}                                 id=password
${button_login_login}                                   css=._3C-S2
${status_berlangganan_profile_settings}                 css=._2vnbY > h1
${text_profil_akun_id_pengguna_settings}                xpath=//*[@for='defaultID']/following-sibling::p
${text_profil_akun_nama_pengguna_settings}              xpath=//*[normalize-space()='Username']/following-sibling::p
${text_profil_akun_email_settings}                      xpath=//*[normalize-space()='Email']/following-sibling::p
${text_profil_akun_no_telepon_settings}                 xpath=//*[@for='changePhoneNumber']/following-sibling::p
${text_profil_akun_tanggal_lahir_settings}              xpath=//*[@for='changeBirthdate']/following-sibling::p
${text_profil_akun_jenis_kelamin_settings}              xpath=//*[normalize-space()='Gender']/following-sibling::p
${text_profil_akun_lokasi_settings}                     xpath=//*[@for='changeLocation']/following-sibling::p
${button_ubah_button_settings}                          xpath=//button/div[.='Change']
${button_batal_ubah_profil_settings}                    css=._18nl7
${label_no_telepon_settings}                            id=phone
${label_jenis_kelamin_m_settings}                       css=select[name='gender'] > option[value='m']
${label_user_name_settings}                             css=input#name
${label_lokasi_default_settings}                        css=select[name='location'] > option[value='Indonesia']
${button_simpan_settings}                               xpath=//button[normalize-space()='Save']
${text_phone_number_already_existed}                    css=._3MuQu
${text_phone_number_settings_not_change}                css=._38NgJ.css-tqv6h2.css-ug8ckl > div:nth-of-type(6)
${label_phone_number_settings_not_change}               css=div:nth-of-type(6) > label
${text_phone_number_settings_default}                   css=.LZ_R2:nth-of-type(6) p
${text_ubah_akun_settings}                              css=._3MuQu
${label_jenis_kelamin_f_settings}                       css=select[name='gender'] > option[value='f']
${label_lokasi_change01_settings}                       css=select[name='location'] > option[value='Japan']
${text_edit_profile_before}                             xpath=//h1[normalize-space()='Edit Profile']
${text_account_after}                                   css=._29dxZ:nth-of-type(4) p
${text_picture_profile_after}                           css=._1DR_v
${button_keluar_settings}                               css=._3qxwB
${text_pengaturan_settings}                             css=._16YQ- > div:nth-of-type(4)
${text_alert_dialog_atur_password}                      css=div[role='alertdialog']
${button_nanti_saja_atur_password}                      css=div#skip

${text_ubah_password_settings}                          xpath=//div[contains(text(),'Change Password')]
${text_language_settings}                               css=._3XA-Q > div:nth-of-type(1)
${menu_language_settings}                               css=._3n7Ea
${text_menu_language_settings}                          css=._3n7Ea > ._3D9_y
${label_text_english_language_settings}                 css=._3J3Q5 > div:nth-of-type(2)
${label_text_indonesia_language_settings}               css=._3J3Q5 > div:nth-of-type(1)
${chose_label_indonesia_language_settings}              css=div:nth-of-type(1) > ._7WiYD
${button_save_change_language_settings}                 css=._3206K
${menu_homepage_pengaturan}                             css=._1Cbvm
${text_bahasa_berhasil_di_ubah}                         css=._3MuQu
${chose_label_english_language_settings}                css=div:nth-of-type(2) > ._7WiYD
${field_masukan_sandi_sekarang_settings}                css=input#currentPassword
${label_view_password1}                                 css=div:nth-of-type(2) > ._2shny.css-u9aj2 > .css-p66osa > .css-1yds4lk
${label_view_password2}                                 css=div:nth-of-type(3) > ._2shny.css-u9aj2 > .css-p66osa > .css-1yds4lk
${label_view_password3}                                 css=div:nth-of-type(4) > ._2shny.css-u9aj2 > .css-p66osa > .css-1yds4lk
${field_masukkan_sandi_baru_settings}                   css=input#password
${field_masukkan_ulang_sandi_baru_settings}             css=input#confirmPassword
${button_simpan_password_disabled_seeting}              css=._1mcYA._3C-S2.nA5CF
${button_simpan_password_seeting}                       css=._1mcYA._3C-S2
${text_ubah_password_berhasil_settings}                 css=._2Ctc-
${button_ubah_password_settings}                        css=._1xbSc
${text_ubah_password_salah_settings}                    css=._2Ctc-
${text_konfirmasi_password_salah_settings}              css=.css-e2n7zw
${field_masukkan_same_sandi_baru_settings}              css-=input#password
${label_menu_langganan}                                 css=._16YQ- > div:nth-of-type(4)
${text_package_user_use}                                css=h1
${text_package_status}                                  css=._3S18-
${text_package_expired_date}                            css=._2A5Zs > p
${text_package_description}                             css=.Gys-8 > p
${button_system_info_pengaturan_settings}               xpath=//div[contains(text(),'System Info')]
${text_Browser}                                         css=._27xxD > div:nth-of-type(1)
${text_OS}                                              css=._27xxD > div:nth-of-type(2)
${text_Location}                                        css=._27xxD > div:nth-of-type(3)
${text_ISP}                                             css=._27xxD > div:nth-of-type(4)
${text_IP}                                              css=._27xxD > div:nth-of-type(5)
${text_Date & Time}                                     css=._27xxD > div:nth-of-type(6)
${text_Version}                                         css=.SX4wG > ._1UNSE

${label_text_Browser}                                   css=div:nth-of-type(1) > label
${label_text_OS}                                        css=div:nth-of-type(2) > label
${label_text_Location}                                  css=div:nth-of-type(3) > label
${label_text_ISP}                                       css=div:nth-of-type(4) > label
${label_text_IP}                                        css=div:nth-of-type(5) > label
${label_text_Date & Time}                               css=div:nth-of-type(6) > label
${label_text_Version}                                   css=.SX4wG > ._1UNSE

${links_footer_system_info}                             css=._34BGT > div:nth-of-type(3) > div:nth-of-type(1)

${button_settings_autoplay}                             css=.BiC2-
${URL_Next_MOVIE_DETAIL}                                css=.css-oht1a4
${text_internet_speed_test_pengaturan_settings}         xpath=//div[contains(text(),'Internet Speed Test')]
${text_logo_title_mola_speed_pengaturan_settings}       css=.logo__title
${button_reload_mola_speed_pengaturan_settings}         css=div#start-again-button-start
${speed_ping_mxs01_vod}                                 css=div:nth-of-type(1) > .section__cdn
${speed_ping_mola02_live}                               css=div:nth-of-type(2) > .section__cdn
${text_video_playback_test_pengaturan_settings}         xpath=//div[contains(text(),'Video Playback Test')]
${list_container_menu_setting}                          css=._16YQ-
${list_class_menu_setting_bar}                          css=._1KqoD
${test_video_playback_non_drm_settings}                 css=._3XA-Q > div:nth-of-type(2)
${test_video_playback_drm_settings}                     css=._3XA-Q > div:nth-of-type(1)
#${text_konten_dewasa_setuju_settings}                   css=._3UpwF

${text_wrong_otp_number_code}                           xpath=/html//div[@id='app']/div[@class='_3e0P_']//form[@class='_3HpB6']//p[.='Verification code is incorrect or has expired']
${button_resend_otp_number_code}                        css=.HqfQm
${label_otp_wait_countdown_60_second}                   css=.HqfQm

# Notification Message
${text_otp_verification_message}                        xpath=//div[contains(text(),'Verification code sent')]
${button_otp_verification_message_close}                xpath=//div[contains(text(),'Close')]
${button_otp_verification_message_please_wait_60s}      xpath=//div[contains(text(),'Please wait 60 seconds to try again')]

# Change Password Page
${text_otp_change_password_title_otp_sent}              css=.GLAMB
${text_otp_change_password_email}                       css=._3ynOi

*** Keywords ***
Show Status Berlangganan
    Wait Until Element Is Visible       ${menu_homepage_accounts}
    Click Element                       ${menu_homepage_accounts}
    Click Element                       ${status_berlangganan_profile_settings}
    sleep                               3

The account information is shown in Profile page
    Wait Until Element Is Visible       ${links_homepage_menu_profil}
    Click Element                       ${links_homepage_menu_profil}
    Wait Until Element Is Visible       ${text_profil_akun_id_pengguna_settings}
    Element Should Be Visible           ${text_profil_akun_id_pengguna_settings}
    Element Should Be Visible           ${text_profil_akun_nama_pengguna_settings}
    Element Should Be Visible           ${text_profil_akun_email_settings}
    Element Should Be Visible           ${text_profil_akun_no_telepon_settings}
    Element Should Be Visible           ${text_profil_akun_tanggal_lahir_settings}
    Element Should Be Visible           ${text_profil_akun_jenis_kelamin_settings}
    Element Should Be Visible           ${text_profil_akun_lokasi_settings}

The Ubah button is shown under user info
    Wait Until Element Is Visible       ${button_ubah_button_settings}
    Element Should Be Visible           ${button_ubah_button_settings}
    Click Element                       ${button_ubah_button_settings}
    Wait Until Element Is Visible       ${button_batal_ubah_profil_settings}
    Element Should Be Visible           ${button_batal_ubah_profil_settings}
    Click Element                       ${button_batal_ubah_profil_settings}

Select User icon
    Open Profile Page

Select Ubah button
    Wait Until Element Is Visible                   ${button_ubah_button_settings}
    Element Should Be Visible                       ${button_ubah_button_settings}
    Click Element                                   ${button_ubah_button_settings}

Make some changes and Save
    [Arguments]     ${Username}       ${Phone}
    Wait Until Element Is Visible                   ${label_user_name_settings}
    Input Text                                      ${label_user_name_settings}             ${Username}
#    Wait Until Element Is Visible                   ${label_no_telepon_settings}
#    Input Text                                      ${label_no_telepon_settings}            ${PHONE}
    Wait Until Element Is Visible                   ${label_jenis_kelamin_m_settings}
    Click Element                                   ${label_jenis_kelamin_f_settings}
    Wait Until Element Is Visible                   ${label_lokasi_default_settings}
    Click Element                                   ${label_lokasi_change01_settings}


Button Simpan
    Wait Until Element Is Visible                   ${button_simpan_settings}
    Element Should Be Visible                       ${button_simpan_settings}
    Click Element                                   ${button_simpan_settings}

User Successfully Ubah
    Wait Until Element Is Visible                   ${text_ubah_akun_settings}
    Element Text Should Be                          ${text_ubah_akun_settings}           Profile Successfully Update

Make changes to default value
    [Arguments]         ${Phone}
#    Select Ubah button
#    Wait Until Element Is Visible                   ${label_no_telepon_settings}
#    Input Text                                      ${label_no_telepon_settings}            ${PHONE}
#    Button Simpan
#    User Successfully Ubah
#    Sleep                                           5

    Select Ubah button
    Click Element                                   ${label_jenis_kelamin_f_settings}
    Click Element                                   ${label_lokasi_change01_settings}
    Button Simpan
    User Successfully Ubah
    Sleep                                           5

    Select Ubah button
    Click Element                                   ${label_jenis_kelamin_m_settings}
    Click Element                                   ${label_lokasi_default_settings}
    Button Simpan
    User Successfully Ubah
    Sleep                                           5


Select User icon 01
    Select User icon

Select Ubah button 01
    Select Ubah button

Make some changes 01
    Click Element                                   ${label_jenis_kelamin_f_settings}
    Click Element                                   ${label_lokasi_change01_settings}

Verify Bar Edit Profile
    Wait Until Element Is Visible                   ${text_edit_profile_before}
    Element Should Be Visible                       ${text_edit_profile_before}

Click Back button
    Wait Until Element Is Visible                   ${button_batal_ubah_profil_settings}
    Element Should Be Visible                       ${button_batal_ubah_profil_settings}
    Click Element                                   ${button_batal_ubah_profil_settings}

Verify Bar Account and picture
   Wait Until Element Is Visible                    ${text_account_after}
   Element Should Be Visible                        ${text_account_after}
   Wait Until Element Is Visible                    ${text_picture_profile_after}
   Element Should Be Visible                        ${text_picture_profile_after}

Select Pengaturan
    Wait Until Element Is Visible                   ${links_homepage_menu_pengaturan}
    Click Element                                   ${links_homepage_menu_pengaturan}
    Wait Until Element Is Visible                   ${text_alert_dialog_atur_password}
    Element Should Be Visible                       ${text_alert_dialog_atur_password}
    Wait Until Element Is Visible                   ${button_nanti_saja_atur_password}
    Element Should Be Visible                       ${button_nanti_saja_atur_password}
    Click Element                                   ${button_nanti_saja_atur_password}

Select Language for Change language Preference
    Wait Until Element Is Visible                   ${text_language_settings}
    Element Should Be Visible                       ${text_language_settings}
    Click Element                                   ${text_language_settings}

Verify Language Preference Checking
    Wait Until Element Is Visible                   ${menu_language_settings}
    Element Should Be Visible                       ${menu_language_settings}
    Wait Until Element Is Visible                   ${text_menu_language_settings}
    Element Should Be Visible                       ${text_menu_language_settings}
    Wait Until Element Is Visible                   ${label_text_english_language_settings}
    Element Should Be Visible                       ${label_text_english_language_settings}
    Wait Until Element Is Visible                   ${label_text_indonesia_language_settings}
    Element Should Be Visible                       ${label_text_indonesia_language_settings}

Select Change Language To Indonesia
    Wait Until Element Is Visible                   ${label_text_indonesia_language_settings}
    Element Should Be Visible                       ${label_text_indonesia_language_settings}
    Click Element                                   ${chose_label_indonesia_language_settings}
    Wait Until Element Is Visible                   ${button_save_change_language_settings}
    Element Should Be Visible                       ${button_save_change_language_settings}
    Click Element                                   ${button_save_change_language_settings}

Verify Change Language To Indonesia
    Sleep                                           3
    Wait Until Element Is Visible                   ${menu_homepage_pengaturan}
    Element Should Be Visible                       ${menu_homepage_pengaturan}
    Wait Until Element Is Visible                   ${text_bahasa_berhasil_di_ubah}
    Element Text Should Be                          ${text_bahasa_berhasil_di_ubah}       Bahasa berhasil di ubah
    Wait Until Element Is Visible                   ${text_language_settings}
    Element Should Be Visible                       ${text_language_settings}

Select Change Language To English
    Select Language for Change language Preference
    Verify Language Preference Checking
    Wait Until Element Is Visible                   ${label_text_english_language_settings}
    Element Should Be Visible                       ${label_text_english_language_settings}
    Click Element                                   ${chose_label_english_language_settings}
    Wait Until Element Is Visible                   ${button_save_change_language_settings}
    Element Should Be Visible                       ${button_save_change_language_settings}
    Click Element                                   ${button_save_change_language_settings}


Verify Change Language To English
    Wait Until Element Is Visible                   ${menu_homepage_pengaturan}
    Element Should Be Visible                       ${menu_homepage_pengaturan}
    Wait Until Element Is Visible                   ${text_bahasa_berhasil_di_ubah}
    Element Text Should Be                          ${text_bahasa_berhasil_di_ubah}       Language changed successfully
    Wait Until Element Is Visible                   ${text_language_settings}
    Element Should Be Visible                       ${text_language_settings}

Select Ubah Password
    Wait Until Element Is Visible                   ${text_ubah_password_settings}
    Click Element                                   ${text_ubah_password_settings}

Input Old, New and Confirm Password at the field
    [Arguments]     ${PASSWORD_SEKARANG}    ${PASSWORD_BARU}    ${ULANG_PASSWORD}
    Wait Until Element Is Visible                   ${field_masukan_sandi_sekarang_settings}
    Input Text                                      ${field_masukan_sandi_sekarang_settings}        ${PASSWORD_SEKARANG}
    Sleep                                           2
    Click Element                                   ${label_view_password1}
    Input Text                                      ${field_masukkan_sandi_baru_settings}           ${PASSWORD_BARU}
    Sleep                                           2
    Click Element                                   ${label_view_password2}
    Input Text                                      ${field_masukkan_ulang_sandi_baru_settings}     ${ULANG_PASSWORD}
    Sleep                                           2
    Click Element                                   ${label_view_password3}

Select Simpan button
    Wait Until Element Is Visible                   ${button_simpan_password_seeting}
    Click Element                                   ${button_simpan_password_seeting}

User Successfully Ubah Password
    Wait Until Element Is Visible                   ${text_ubah_password_berhasil_settings}
    Element Text Should Be                          ${text_ubah_password_berhasil_settings}           Password berhasil diubah
    sleep                                           10

Changes To Default Input Old, New and Confirm Password at the field
    [Arguments]     ${PASSWORD_SEKARANG01}    ${PASSWORD_BARU01}    ${ULANG_PASSWORD01}
    Reload Page
    Input Old, New and Confirm Password at the field        ${PASSWORD_SEKARANG01}  ${PASSWORD_BARU01}  ${ULANG_PASSWORD01}
    Select Simpan button
    User Successfully Ubah Password

Unselected Simpan button
    Wait Until Element Is Visible                   ${button_ubah_password_settings}
    Click Element                                   ${button_ubah_password_settings}

Input wrong Old Password
    [Arguments]     ${PASSWORD_LAMA_SALAH}    ${PASSWORD_BARU01}    ${ULANG_PASSWORD01}
    Input Text                                      ${field_masukan_sandi_sekarang_settings}        ${PASSWORD_LAMA_SALAH}
    Sleep                                           1
    Click Element                                   ${label_view_password1}
    Input Text                                      ${field_masukkan_sandi_baru_settings}           ${PASSWORD_BARU01}
    Sleep                                           1
    Click Element                                   ${label_view_password2}
    Input Text                                      ${field_masukkan_ulang_sandi_baru_settings}     ${ULANG_PASSWORD01}
    Sleep                                           1
    Click Element                                   ${label_view_password3}
    Select Simpan button

User Unsuccessfully Ubah Password
    Wait Until Element Is Visible                   ${text_ubah_password_salah_settings}
    Element Text Should Be                          ${text_ubah_password_salah_settings}           Password lama anda salah
    sleep                                           10

Input different case at New Password and Password Confirmation
    [Arguments]     ${PASSWORD_SEKARANG}    ${PASSWORD_BARU}    ${ULANG_PASSWORD02}
    Input Text                                      ${field_masukan_sandi_sekarang_settings}        ${PASSWORD_SEKARANG}
    Sleep                                           1
    Click Element                                   ${label_view_password1}
    Input Text                                      ${field_masukkan_sandi_baru_settings}           ${PASSWORD_BARU}
    Sleep                                           1
    Click Element                                   ${label_view_password2}
    Input Text                                      ${field_masukkan_ulang_sandi_baru_settings}     ${ULANG_PASSWORD02}
    Sleep                                           1
    Click Element                                   ${label_view_password3}

User Konfirmasi password salah
    Wait Until Element Is Visible                   ${text_konfirmasi_password_salah_settings}
    Element Text Should Be                          ${text_konfirmasi_password_salah_settings}           Konfirmasi password salah
    sleep                                           10

Input same case at Old and New Password
    [Arguments]     ${PASSWORD_SEKARANG}    ${PASSWORD_BARU02}    ${ULANG_PASSWORD03}
    Wait Until Element Is Visible               ${field_masukan_sandi_sekarang_settings}
    Input Text                                  ${field_masukan_sandi_sekarang_settings}        ${PASSWORD_SEKARANG}
    Sleep                                       1
    Click Element                               ${label_view_password1}
    Input Text                                  ${field_masukkan_sandi_baru_settings}           ${PASSWORD_BARU02}
    Sleep                                       1
    Click Element                               ${label_view_password2}
    Input Text                                  ${field_masukkan_ulang_sandi_baru_settings}     ${ULANG_PASSWORD03}
    Sleep                                       1
    Click Element                               ${label_view_password3}

Select Subscription
    Wait Until Element Is Visible               ${links_homepage_menu_langganan}
    Element Should Be Visible                   ${links_homepage_menu_langganan}
    Click Element                               ${links_homepage_menu_langganan}
    Sleep                                       2

Select Verify Status
    Wait Until Element Is Visible               ${text_package_user_use}
    Element Should Be Visible                   ${text_package_user_use}
    Element Should Be Visible                   ${text_package_status}
    Element Should Be Visible                   ${text_package_expired_date}
    Element Should Be Visible                   ${text_package_description}

Select Verify Status Account Free
    Wait Until Element Is Visible               ${text_package_user_use}
    Element Should Be Visible                   ${text_package_user_use}
    Element Text Should Be                      ${text_package_user_use}                Free Membership

Make phone number change
    [Arguments]         ${PHONE}
    Input Text                                  ${label_no_telepon_settings}        ${PHONE}
    Wait Until Element Is Visible               ${button_simpan_settings}
    Element Should Be Visible                   ${button_simpan_settings}
    Click Element                               ${button_simpan_settings}

Verify phone number Already Exist Message
    Wait Until Element Is Visible               ${text_phone_number_already_existed}
    Element Text Should Be                      ${text_phone_number_already_existed}        The phone number is already existed.

Verify That Phone Number Hasn't Changed
    Wait Until Element Is Visible               ${text_phone_number_settings_not_change}
    Element Should Be Visible                   ${text_phone_number_settings_not_change}

    Wait Until Element Is Visible               ${label_phone_number_settings_not_change}
    Element Should Be Visible                   ${label_phone_number_settings_not_change}

    Wait Until Element Is Visible               ${text_phone_number_settings_default}
    Element Should Be Visible                   ${text_phone_number_settings_default}

    Sleep                                       5

Click System Info In Setting
    Wait Until Element Is Visible               ${button_system_info_pengaturan_settings}
    Element Should Be Visible                   ${button_system_info_pengaturan_settings}
    Click Element                               ${button_system_info_pengaturan_settings}

Verify System Info Is Appear
    [Arguments]     ${URL_System_Info_Settings}
    Wait Until Location Contains                ${URL_System_Info_Settings}
    Wait Until Element Is Visible               ${text_Browser}
    Element Should Be Visible                   ${text_Browser}
    Element Should Be Visible                   ${text_OS}
    Element Should Be Visible                   ${text_Location}
    Element Should Be Visible                   ${text_ISP}
    Element Should Be Visible                   ${text_IP}
    Element Should Be Visible                   ${text_Date & Time}
    Element Should Be Visible                   ${text_Version}

Verify Label System Info In Setting
    Element Should Be Visible                   ${label_text_Browser}
    Element Should Be Visible                   ${label_text_OS}
    Element Should Be Visible                   ${label_text_Location}
    Element Should Be Visible                   ${label_text_ISP}
    Element Should Be Visible                   ${label_text_IP}
    Element Should Be Visible                   ${label_text_Date & Time}
    Element Should Be Visible                   ${label_text_Version}

Click System Info In Footer
    Wait Until Element Is Visible               ${links_footer_system_info}
    Element Should Be Visible                   ${links_footer_system_info}
    Click Element                               ${links_footer_system_info}

Verify Label System Info In Footer
    Element Should Be Visible                   ${label_text_Browser}
    Element Should Be Visible                   ${label_text_OS}
    Element Should Be Visible                   ${label_text_Location}
    Element Should Be Visible                   ${label_text_ISP}
    Element Should Be Visible                   ${label_text_IP}
    Element Should Be Visible                   ${label_text_Date & Time}
    Element Should Be Visible                   ${label_text_Version}


Turn on / off Autoplay toggle button
    Wait Until Element Is Visible               ${button_settings_autoplay}
    Element Should Be Visible                   ${button_settings_autoplay}
    Click Element                               ${button_settings_autoplay}

Verify Autoplay toggle button is turn off
    ${A}=    Get Element Attribute   id=autoPlay  data-tip
    Log To Console      ${A}
    Should Contain      ${A}         Autoplay OFF

Verify Autoplay toggle button is turn on
    ${B}=    Get Element Attribute   id=autoPlay  data-tip
    Log To Console      ${B}
    Should Contain      ${B}         Autoplay ON

Click Internet Speed Test
    [Arguments]     ${URL_mola_speed}
    Wait Until Element Is Visible               ${text_internet_speed_test_pengaturan_settings}
    Element Should Be Visible                   ${text_internet_speed_test_pengaturan_settings}
    Click Element                               ${text_internet_speed_test_pengaturan_settings}
    Wait Until Element Is Visible               ${text_logo_title_mola_speed_pengaturan_settings}
    Wait Until Element Is Visible               ${button_reload_mola_speed_pengaturan_settings}         60
    Wait Until Location Contains                ${URL_mola_speed}
    Wait Until Element Is Visible               ${speed_ping_mxs01_vod}                                 60
    Element Should Be Visible                   ${speed_ping_mxs01_vod}
    Wait Until Element Is Visible               ${speed_ping_mola02_live}                               60
    Element Should Be Visible                   ${speed_ping_mola02_live}
    Wait Until Element Is Visible               ${button_reload_mola_speed_pengaturan_settings}
    Element Should Be Visible                   ${button_reload_mola_speed_pengaturan_settings}

Verify After Back Confirm to Setting Page
    Wait Until Element Is Visible               ${list_container_menu_setting}
    Element Should Be Visible                   ${list_container_menu_setting}
    Wait Until Element Is Visible               ${list_class_menu_setting_bar}
    Element Should Be Visible                   ${list_class_menu_setting_bar}
    Wait Until Element Is Visible               ${text_internet_speed_test_pengaturan_settings}
    Element Should Be Visible                   ${text_internet_speed_test_pengaturan_settings}

Click Video Playback Test
    Wait Until Element Is Visible               ${text_video_playback_test_pengaturan_settings}
    Element Should Be Visible                   ${text_video_playback_test_pengaturan_settings}
    Click Element                               ${text_video_playback_test_pengaturan_settings}

Choose Non-DRM Playback
    Wait Until Element Is Visible               ${test_video_playback_non_drm_settings}
    Element Should Be Visible                   ${test_video_playback_non_drm_settings}
    Click Element                               ${test_video_playback_non_drm_settings}

Choose DRM Playback
    Wait Until Element Is Visible               ${test_video_playback_drm_settings}
    Element Should Be Visible                   ${test_video_playback_drm_settings}
    Click Element                               ${test_video_playback_drm_settings}

Verify Input Wrong OTP Number Code
    Wait Until Element Is Visible               ${text_wrong_otp_number_code}
    Element Text Should Be                      ${text_wrong_otp_number_code}           Verification code is incorrect or has expired

Click Resend OTP Number Code
    Wait Until Element Is Visible               ${button_resend_otp_number_code}                      65
    Wait Until Element Does Not Contain         ${button_resend_otp_number_code}       :              65
    Click Element                               ${button_resend_otp_number_code}

Verify Resend OTP Number Code 60 Second
    Wait Until Element Is Visible               ${label_otp_wait_countdown_60_second}
    Element Should Be Visible                   ${label_otp_wait_countdown_60_second}
    Wait Until Element Contains                 ${label_otp_wait_countdown_60_second}       Resend code OTP 00:55

Verify OTP Message Is Appeared
    Wait Until Element Is Visible               ${text_otp_verification_message}
    Element Should Be Visible                   ${text_otp_verification_message}
    Element Should Contain                      ${text_otp_verification_message}            Verification code sent
    Wait Until Element Is Visible               ${button_otp_verification_message_close}
    Element Should Be Visible                   ${button_otp_verification_message_close}
    Element Should Contain                      ${button_otp_verification_message_close}    Close

Verify OTP Change Password Is Appeared
    [Arguments]    ${EMAIL}
    Wait Until Element Is Visible               ${text_otp_change_password_title_otp_sent}
    Element Should Be Visible                   ${text_otp_change_password_title_otp_sent}
    Element Should Contain                      ${text_otp_change_password_title_otp_sent}           Enter the OTP Code that has been sent to
    Wait Until Element Is Visible               ${text_otp_change_password_email}
    Element Should Be Visible                   ${text_otp_change_password_email}
    Element Should Contain                      ${text_otp_change_password_email}                    ${EMAIL}

Verify OTP Message Please Wait 60s Is Appeared
    Wait Until Element Is Visible               ${button_otp_verification_message_please_wait_60s}
    Element Should Be Visible                   ${button_otp_verification_message_please_wait_60s}
    Element Should Contain                      ${button_otp_verification_message_please_wait_60s}      Please wait 60 seconds to try again