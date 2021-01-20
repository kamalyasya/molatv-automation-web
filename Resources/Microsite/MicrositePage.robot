*** Settings ***
Library         	    SeleniumLibrary
Library                 String
Resource                ../../Frameworks/Routers.robot

*** Variables ***
# Microsite Untuk Kamu
${icon_microsite_untuk_kamu_molatv}                 css=._30Ugt > .css-tqv6h2.imageWrapper.loaded > img
${text_microsite_untuk_kamu_title}                  xpath=//div[contains(text(),'One Stop Family Entertainment')]
${button_microsite_untuk_kamu_langganan_sekarang}   xpath=//button[contains(text(),'Langganan Sekarang')]

# Microsite Sofa Kuning
${icon_microsite_sofa_kuning_molatv}                css=a > img
${text_microsite_sofa_kuning_title}                 xpath=//div[contains(text(),'Tayangan Interaktif Berhadiah untuk Keluarga')]
${button_microsite_sofa_kuning_cara_main}           xpath=//p[contains(text(),'Cara Main')]
${button_microsite_sofa_kuning_daftar_sekarang}     xpath=//p[contains(text(),'Daftar Sekarang')]
${button_microsite_sofa_kuning_download_sekarang}   css=._3D1tk .button

# Paket HBO
${text_microsite_hbo_title}                         css=.hero-title-text
${text_microsite_hbo_description}                   css=.hero-description-text > p
${button_microsite_hbo_mulai_dari}                  css=.hero-button


*** Keywords ***
Open Microsite Page
    [Arguments]             ${URL}
    Go To                                       ${URL}
    Sleep    2

Verify Successfully Access MolaTv Microsite Untuk Kamu
    Wait Until Element Is Visible               ${icon_microsite_untuk_kamu_molatv}
    Element Should Be Visible                   ${icon_microsite_untuk_kamu_molatv}
    Wait Until Element Is Visible               ${text_microsite_untuk_kamu_title}
    Element Should Be Visible                   ${text_microsite_untuk_kamu_title}
    Element Should Contain                      ${text_microsite_untuk_kamu_title}              One Stop Family Entertainment
    Wait Until Element Is Visible               ${button_microsite_untuk_kamu_langganan_sekarang}
    Element Should Be Visible                   ${button_microsite_untuk_kamu_langganan_sekarang}
    Element Should Contain                      ${button_microsite_untuk_kamu_langganan_sekarang}          Langganan Sekarang

Verify Successfully Access MolaTv Microsite Sofa Kuning
    Wait Until Element Is Visible               ${icon_microsite_sofa_kuning_molatv}
    Element Should Be Visible                   ${icon_microsite_sofa_kuning_molatv}
    Wait Until Element Is Visible               ${text_microsite_sofa_kuning_title}
    Element Should Be Visible                   ${text_microsite_sofa_kuning_title}
    Element Should Contain                      ${text_microsite_sofa_kuning_title}             TAYANGAN INTERAKTIF BERHADIAH UNTUK KELUARGA
    Wait Until Element Is Visible               ${button_microsite_sofa_kuning_cara_main}
    Element Should Be Visible                   ${button_microsite_sofa_kuning_cara_main}
    Element Should Contain                      ${button_microsite_sofa_kuning_cara_main}       Cara Main
    Element Should Be Visible                   ${button_microsite_sofa_kuning_daftar_sekarang}
    Element Should Contain                      ${button_microsite_sofa_kuning_daftar_sekarang}    Daftar Sekarang

Verify Successfully Access MolaTv Microsite HBO
    Wait Until Element Is Visible               ${text_microsite_hbo_title}
    Element Should Be Visible                   ${text_microsite_hbo_title}
    Element Should Contain                      ${text_microsite_hbo_title}                     THE ULTIMATE ENTERTAINMENT SERVICE
    Element Should Be Visible                   ${text_microsite_hbo_description}
    Element Should Contain                      ${text_microsite_hbo_description}               Dari tayangan olahraga, film, tayangan inspiratif, hingga tayangan edukasi anak yang menghibur. Semua ada di Mola, aplikasi TV dengan banyak pilihan tontonan yang bebas disaksikan kapanpun Anda berkenan.
    Element Should Be Visible                   ${button_microsite_hbo_mulai_dari}
    Element Should Contain                      ${button_microsite_hbo_mulai_dari}                  MULAI DARI Rp12.500

Click Langganan Sekarang Button On Microsite Untuk Kamu
    Wait Until Element Is Visible               ${button_microsite_untuk_kamu_langganan_sekarang}
    Click Element                               ${button_microsite_untuk_kamu_langganan_sekarang}

Click Daftar Sekarang Button On Microsite Sofa Kuning
    Wait Until Element Is Visible               ${button_microsite_sofa_kuning_daftar_sekarang}
    Click Element                               ${button_microsite_sofa_kuning_daftar_sekarang}

Click Download Sekarang Button On Microsite Sofa Kuning
    Wait Until Element Is Visible               ${button_microsite_sofa_kuning_download_sekarang}
    Click Element                               ${button_microsite_sofa_kuning_download_sekarang}

Verify User Directed To Download Page
    Wait Until Location Contains                ${HOST}/get-app-desktop
    Location Should Contain                     ${HOST}/get-app-desktop