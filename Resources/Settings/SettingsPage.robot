*** Settings ***
Library                 String
Library         	    SeleniumLibrary
Resource                ../../Frameworks/Routers.robot


*** Variables ***
${field_login_email}                                    id=email
${field_login_password}                                 id=password
${button_login_login}                                   css=._3C-S2
${status_berlangganan_profile_settings}                 css=._2vnbY > h1
${text_profil_akun_id_pengguna_settings}                css=._38NgJ.css-tqv6h2.css-ug8ckl > div:nth-of-type(3)
${text_profil_akun_nama_pengguna_settings}              css=._38NgJ.css-tqv6h2.css-ug8ckl > div:nth-of-type(4)
${text_profil_akun_email_settings}                      css=._38NgJ.css-tqv6h2.css-ug8ckl > div:nth-of-type(5)
${text_profil_akun_no_telepon_settings}                 css=._38NgJ.css-tqv6h2.css-ug8ckl > div:nth-of-type(6)
${text_profil_akun_tanggal_lahir_settings}              css=._38NgJ.css-tqv6h2.css-ug8ckl > div:nth-of-type(7)
${text_profil_akun_jenis_kelamin_settings}              css=._38NgJ.css-tqv6h2.css-ug8ckl > div:nth-of-type(8)
${text_profil_akun_lokasi_settings}                     css=._38NgJ.css-tqv6h2.css-ug8ckl > div:nth-of-type(9)
${button_ubah_button_settings}                          css=._28BJH
${button_batal_ubah_profil_settings}                    css=._3rHVa
${label_no_telepon_settings}                            id=phone
${label_jenis_kelamin_m_settings}                       css=select[name='gender'] > option[value='m']
${label_lokasi_default_settings}                        css=select[name='location'] > option[value='Indonesia']
${button_simpan_settings}                               css=._27srK._3C-S2
${text_ubah_akun_settings}                              css=._2Ctc-
${label_jenis_kelamin_f_settings}                       css=select[name='gender'] > option[value='f']
${label_lokasi_change01_settings}                       css=select[name='location'] > option[value='Japan']
${button_keluar_settings}                               css=._3qxwB
${text_pengaturan_settings}                             css=._16YQ- > div:nth-of-type(3)
${text_ubah_password_settings}                          css=._3XA-Q > div:nth-of-type(1)
${field_masukan_sandi_sekarang_settings}                css=input#currentPassword
${label_view_password1}                                  css=div:nth-of-type(2) > ._2shny.css-u9aj2 > .css-p66osa > .css-1yds4lk
${label_view_password2}                                  css=div:nth-of-type(3) > ._2shny.css-u9aj2 > .css-p66osa > .css-1yds4lk
${label_view_password3}                                  css=div:nth-of-type(4) > ._2shny.css-u9aj2 > .css-p66osa > .css-1yds4lk
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
${text_package_status}                                  css=._3rG-7
${text_package_expired_date}                            css=.dAXnq > p
${text_package_description}                             css=._2PEBx > p
${button_system_info_pengaturan_settings}               css=._3XA-Q > div:nth-of-type(5)
${text_Browser}                                         css=._27xxD > div:nth-of-type(1)
${text_OS}                                              css=._27xxD > div:nth-of-type(2)
${text_Location}                                        css=._27xxD > div:nth-of-type(3)
${text_ISP}                                             css=._27xxD > div:nth-of-type(4)
${text_IP}                                              css=._27xxD > div:nth-of-type(5)
${text_Date & Time}                                     css=._27xxD > div:nth-of-type(6)
${text_Version}                                         css=.SX4wG > ._1UNSE
${button_settings_autoplay}                             css=.BiC2-
${URL_Next_MOVIE_DETAIL}                                css=.css-oht1a4
${text_internet_speed_test_pengaturan_settings}         css=._3XA-Q > div:nth-of-type(3)
${text_logo_title_mola_speed_pengaturan_settings}       css=.logo__title
${button_reload_mola_speed_pengaturan_settings}         css=div#start-again-button-start
${speed_ping_mxs01_vod}                                 css=div:nth-of-type(1) > .section__cdn
${speed_ping_mola02_live}                               css=div:nth-of-type(2) > .section__cdn
${text_video_playback_test_pengaturan_settings}         css=._3XA-Q > div:nth-of-type(4)
${test_video_playback_non_drm_settings}                 css=._3XA-Q > div:nth-of-type(2)
${play_movies_non_drm_settings}                         css=.css-xvdnxx.playIcon
${test_video_playback_drm_settings}                     css=._3XA-Q > div:nth-of-type(1)
${text_konten_dewasa_setuju_settings}                   css=._3UpwF


*** Keywords ***
Login Using Credentials
    [Arguments]     ${ACCOUNT_SUPERMOLA69_EMAIL}  ${ACCOUNT_SUPERMOLA69_PASSWORD}
    Wait Until Element Is Visible       ${field_login_email}
    sleep                               10
    Input Text                          ${field_login_email}            ${ACCOUNT_KAMAL_EMAIL}
    sleep                               10
    Input Text                          ${field_login_password}         ${ACCOUNT_KAMAL_PASSWORD}
    sleep                               10
    Click Element                       ${button_login_login}
    sleep                               10

Show Status Berlangganan
    Wait Until Element Is Visible       ${menu_homepage_accounts}
    Click Element                       ${menu_homepage_accounts}
    Click Element                       ${status_berlangganan_profile_settings}
    sleep                               3

The account information is shown in Profile page
    Click Element                       ${links_homepage_menu_profil}
    Element Should Be Visible           ${text_profil_akun_id_pengguna_settings}
    Element Should Be Visible           ${text_profil_akun_nama_pengguna_settings}
    Element Should Be Visible           ${text_profil_akun_email_settings}
    Element Should Be Visible           ${text_profil_akun_no_telepon_settings}
    Element Should Be Visible           ${text_profil_akun_tanggal_lahir_settings}
    Element Should Be Visible           ${text_profil_akun_jenis_kelamin_settings}
    Element Should Be Visible           ${text_profil_akun_lokasi_settings}

The Ubah button is shown under user info
    Click Element                       ${button_ubah_button_settings}
    Click Element                       ${button_batal_ubah_profil_settings}

Select User icon
    Click Element                                   ${menu_homepage_accounts}
    Sleep                                           5

Select Ubah button
    Click Element                                   ${button_ubah_button_settings}

Make some changes and Save
    [Arguments]     ${m}
    Click Element                                   ${label_jenis_kelamin_m_settings}
    Click Element                                   ${label_lokasi_default_settings}

Button Simpan
    Click Element                                   ${button_simpan_settings}

User Successfully Ubah
    Element Text Should Be                          ${text_ubah_akun_settings}           Update profil berhasil

Make changes to default value
    Select Ubah button
    Click Element                                   ${label_jenis_kelamin_f_settings}
    Click Element                                   ${label_lokasi_change01_settings}
    Button Simpan
    User Successfully Ubah
    Sleep                                           10
    Select Ubah button
    Click Element                                   ${label_jenis_kelamin_m_settings}
    Click Element                                   ${label_lokasi_default_settings}
    Button Simpan
    User Successfully Ubah
    Sleep                                           5
    Click Element                                   ${button_keluar_settings}
    Sleep                                           5

Select User icon 01
    Select User icon

Select Ubah button 01
    Select Ubah button

Make some changes 01
    Click Element                                   ${label_jenis_kelamin_f_settings}
    Click Element                                   ${label_lokasi_change01_settings}

Click Back button
    Click Element                                   ${button_batal_ubah_profil_settings}
    Sleep                                           5

Select Pengaturan
    Wait Until Element Is Visible                   ${text_pengaturan_settings}
    Click Element                                   ${text_pengaturan_settings}

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
    Element Text Should Be                          ${text_ubah_password_salah_settings}           Password Anda salah
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
    Wait Until Element Is Visible                   ${field_masukan_sandi_sekarang_settings}
    Input Text                                      ${field_masukan_sandi_sekarang_settings}        ${PASSWORD_SEKARANG}
    Sleep                                           1
    Click Element                                   ${label_view_password1}
    Input Text                                      ${field_masukkan_sandi_baru_settings}           ${PASSWORD_BARU02}
    Sleep                                           1
    Click Element                                   ${label_view_password2}
    Input Text                                      ${field_masukkan_ulang_sandi_baru_settings}     ${ULANG_PASSWORD03}
    Sleep                                           1
    Click Element                                   ${label_view_password3}

Select Subscription
    Wait Until Element Is Visible                   ${label_menu_langganan}
    Click Element                                   ${label_menu_langganan}
    Sleep                                           3

Select Status
    Wait Until Element Is Visible                   ${text_package_user_use}
    Element Should Be Visible                       ${text_package_user_use}
    Element Should Be Visible                       ${text_package_status}
    Element Should Be Visible                       ${text_package_expired_date}
    Element Should Be Visible                       ${text_package_description}

Make phone number change
    [Arguments]         ${PHONE}
    Input Text                                      ${label_no_telepon_settings}        ${PHONE}    PHONE ALREADY EXIST
    Click Element                                   ${button_simpan_settings}

Click System Info
    Click Element                                   ${button_system_info_pengaturan_settings}
    Wait Until Element Is Visible                      ${text_Browser}
    Element Should Be Visible                          ${text_Browser}
    Element Should Be Visible                          ${text_OS}
    Element Should Be Visible                          ${text_Location}
    Element Should Be Visible                          ${text_ISP}
    Element Should Be Visible                          ${text_IP}
    Element Should Be Visible                          ${text_Date & Time}
    Element Should Be Visible                          ${text_Version}

Turn on / off Autoplay toggle button
    Wait Until Element Is Visible                   ${button_settings_autoplay}
    Click Element                                   ${button_settings_autoplay}

Verify Autoplay toggle button is turn off
    ${A}=    Get Element Attribute   id=autoPlay  data-tip
    Log To Console      ${A}
    Should Contain    ${A}  Putar otomatis nonaktif

Verify Autoplay toggle button is turn on
    ${B}=    Get Element Attribute   id=autoPlay  data-tip
    Log To Console      ${B}
    Should Contain    ${B}  Putar otomatis aktif

Click Internet Speed Test
    [Arguments]     ${URL_mola_speed}
    Click Element                                   ${text_internet_speed_test_pengaturan_settings}
    Wait Until Element Is Visible                   ${text_logo_title_mola_speed_pengaturan_settings}
    Wait Until Element Is Visible                   ${button_reload_mola_speed_pengaturan_settings}         30
    Wait Until Location Contains                    ${URL_mola_speed}
    Sleep                                           10
    Page Should Contain Element                     ${speed_ping_mxs01_vod}
    Sleep                                           10
    Page Should Contain Element                     ${speed_ping_mola02_live}
    Click Element                                   ${button_reload_mola_speed_pengaturan_settings}

Click Video Playback Test
    Click Element                                   ${text_video_playback_test_pengaturan_settings}

Choose Non-DRM Playback
    Click Element                                   ${test_video_playback_non_drm_settings}
    wait until element is visible                   ${play_movies_non_drm_settings}
    Click Element                                   ${play_movies_non_drm_settings}
    sleep                                           2

Choose DRM Playback
    Click Element                                   ${test_video_playback_drm_settings}
    Click Element                                   ${text_konten_dewasa_setuju_settings}
    sleep                                           3
    wait until element is visible                   ${play_movies_non_drm_settings}
    Click Element                                   ${play_movies_non_drm_settings}
    sleep                                           30
