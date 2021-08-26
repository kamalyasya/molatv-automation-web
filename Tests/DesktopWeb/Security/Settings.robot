*** Settings ***
Resource                ../../../Frameworks/Routers.robot

Test Timeout            ${LONG_TEST_TIMEOUT}
Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing


*** Variables ***
${URL}                              ${HOST}/accounts/profile

${Username}                         testing
${PHONE1}                           6281297180000
${DOB}
${Gender}                           Male
${Country}                          Indonesia

${PHONE2}                           628972371067

${PASSWORD_SEKARANG}                sapisuper69690
${PASSWORD_BARU}                    0987654321
${ULANG_PASSWORD}                   0987654321

${PASSWORD_SEKARANG01}              0987654321
${PASSWORD_BARU01}                  sapisuper69690
${ULANG_PASSWORD01}                 sapisuper69690

${PASSWORD_LAMA_SALAH}              123456789
${ULANG_PASSWORD02}                 12345678

${PASSWORD_BARU02}                  sapisuper69690
${ULANG_PASSWORD03}                 sapisuper69690

${URL_MOVIE_DETAIL}                 ${HOST}/watch?v=vd93496274
${EXPECTED_URL_MOVIE_DETAIL}        ${URL_MOVIE_DETAIL}

${URL_mola_speed}                   ${HOST}/diag/speed

${URL_System_Info_Settings}         ${HOST}/accounts/profile?tab=system-info&btp=System%20Info

${URL_System_Info_Footer}           ${HOST}/accounts/profile?tab=system-info

*** Test Cases ***
TC001 Edit Profile view
    [Documentation]         View edit profile page
    ...                     User already have an account and sign in
    [Tags]                  Regression  Smoke   Verified

    # SignInPage.Login Using Credentials          ${ACCOUNT_SUPERMOLA69690_EMAIL}     ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SignInPage.Restore Existing Cookies Or Relogin          ${ACCOUNT_SUPERMOLA69690_EMAIL}     ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SettingsPage.Show Status Berlangganan
    SettingsPage.The account information is shown in Profile page
    SettingsPage.The Ubah button is shown under user info
    Reload Page
    Go Back
    # Logout Account

TC002 Edit Profile
    [Documentation]         Make a change at edit profile
    ...                     User already have an account and sign in
    [Tags]                  Regression  Smoke   Verified

	${RANDOM_NUMBER}        Generate random string      10      0123456789
    ${PHONE}			    Catenate 	        62${RANDOM_NUMBER}

    # SignInPage.Login Using Credentials          ${ACCOUNT_SUPERMOLA69690_EMAIL}     ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SignInPage.Restore Existing Cookies Or Relogin          ${ACCOUNT_SUPERMOLA69690_EMAIL}     ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SettingsPage.Select User icon
    ProfilePage.Verify Accounts                 ${Username}     ${ACCOUNT_SUPERMOLA69690_EMAIL}      ${PHONE1}    ${DOB}      ${Gender}   ${Country}
    SettingsPage.Select Ubah button
    SettingsPage.Make some changes and Save     ${Username}    ${PHONE}
    SettingsPage.Button Simpan
    SettingsPage.User Successfully Ubah
    ProfilePage.Verify Accounts                 ${Username}     ${ACCOUNT_SUPERMOLA69690_EMAIL}     ${PHONE1}    ${DOB}      Female   Japan
    SettingsPage.Make changes to default value      ${PHONE1}
    Reload Page
    Go Back
    Open Profile Page
    ProfilePage.Verify Accounts                 ${Username}     ${ACCOUNT_SUPERMOLA69690_EMAIL}     ${PHONE1}    ${DOB}      ${Gender}   ${Country}
    Reload Page
    # Tambah yg diganti username, phone number      --> Fixed
    # TAMBAH Verifikasi Username , phone number , Gender , Country Pada saat Sebelum & Sesudah Perubahan


TC003 Edit Profile without saving it
    [Documentation]         Make a change at edit profile and don't save it
    ...                     User already have an account and sign in
    [Tags]                  Regression  Smoke   Verified

    # SignInPage.Login Using Credentials          ${ACCOUNT_SUPERMOLA69690_EMAIL}     ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SignInPage.Restore Existing Cookies Or Relogin          ${ACCOUNT_SUPERMOLA69690_EMAIL}     ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SettingsPage.Select User icon 01
    ProfilePage.Verify Accounts                 ${Username}     ${ACCOUNT_SUPERMOLA69690_EMAIL}     ${PHONE1}    ${DOB}      ${Gender}   ${Country}
    SettingsPage.Select Ubah button 01
    SettingsPage.Make some changes 01
    SettingsPage.Verify Bar Edit Profile
    SettingsPage.Click Back button
    SettingsPage.Verify Bar Account and picture
    ProfilePage.Verify Accounts                 ${Username}     ${ACCOUNT_SUPERMOLA69690_EMAIL}     ${PHONE1}    ${DOB}      ${Gender}   ${Country}
    Reload Page
    # Logout Account
    # Tambah Verify sebelum dan sesudah SettingsPage.Click Back button
    # TAMBAH Verifikasi Username , phone number , Gender , Country Pada saat Sebelum & Sesudah Perubahan
    # Pakai Email , Username , phone number , Gender , Country yang data nya lengkap

TC006 Atur Password without saving it
    [Documentation]        Make a password change and don't save it
    ...                    User already have an account and sign in
    [Tags]                 Skip

    Log                    Reason Can't Automated :       Because For Enter the OTP Code that has been sent to Email User's

TC008 Atur Password with different input at Password and Password Confirmation
    [Documentation]        User already have an account and sign in
    [Tags]                 Skip

    Log                    Reason Can't Automated :       Because For Enter the OTP Code that has been sent to Email User's

TC010 Subscription view
    [Documentation]         View subscription page
    ...                     User already have an account and sign in
    [Tags]                  Regression  Smoke   Verified

    SignInPage.Login Using Credentials          ${ACCOUNTS_HBO_EMAIL}        ${ACCOUNTS_HBO_PASSWORD}
    # SignInPage.Restore Existing Cookies Or Relogin          ${ACCOUNTS_HBO_EMAIL}     ${ACCOUNTS_HBO_PASSWORD}
    SettingsPage.Select User icon
    SettingsPage.Select Subscription
    SettingsPage.Select Verify Status
    Reload Page
    Go Back
    Logout Account
    Reload Page
    Open Profile Page
    SignInPage.Login Using Credentials          ${ACCOUNT_KAMAL_EMAIL}      ${ACCOUNT_KAMAL_PASSWORD}
    SettingsPage.Select User icon
    SettingsPage.Select Subscription
    Select Verify Status Account Free
    Reload Page
    Go Back
    Logout Account
    # Tambah check dan verify email free

TC011 Edit Profile change Date of Birth
    [Documentation]        User already have an account and sign in. Edit the DOB 1 times to get DOB blocker.
    ...                    Make DOB changes
    [Tags]                 Skip

    Log                    Reason Can't Automated :     Because For The Change Of Birth Date It Takes The Next 3 Months To Make The Next Change

TC012 Edit Profile change Phone Number
    [Documentation]         User already have an account and sign in
    ...                     Make phone number change, using phone number that already used for another account
    [Tags]                  Regression  Smoke   Verified    Skip


    # SignInPage.Login Using Credentials          ${ACCOUNT_SUPERMOLA69690_EMAIL}     ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SignInPage.Restore Existing Cookies Or Relogin          ${ACCOUNT_SUPERMOLA69690_EMAIL}     ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SettingsPage.Select User icon
    ProfilePage.Verify Accounts                 ${Username}     ${ACCOUNT_SUPERMOLA69690_EMAIL}     ${PHONE1}    ${DOB}      ${Gender}   ${Country}
    SettingsPage.Select Ubah button
    SettingsPage.Make phone number change               ${PHONE2}
    SettingsPage.Verify phone number Already Exist Message
    Reload Page
    Go Back
    ProfilePage.Verify Accounts                 ${Username}     ${ACCOUNT_SUPERMOLA69690_EMAIL}     ${PHONE1}    ${DOB}      ${Gender}   ${Country}
    Reload Page
    SettingsPage.Verify That Phone Number Hasn't Changed
    # Logout Account

    # pakai nomer telp yg udah di pakai
    # Verifikasi phone already exist
    # Bikin 1 Keyword Untuk Verify Bahwa Number Phone Belum berubah,

TC013 System Info
    [Documentation]         Check System page at My Account page
    [Tags]                  Regression  Smoke   Verified

    # SignInPage.Login Using Credentials          ${ACCOUNT_SUPERMOLA69_EMAIL}     ${ACCOUNT_SUPERMOLA69_PASSWORD}
    SignInPage.Restore Existing Cookies Or Relogin          ${ACCOUNT_SUPERMOLA69690_EMAIL}     ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SettingsPage.Select User icon
    SettingsPage.Select Pengaturan
    SettingsPage.Click System Info In Setting
    SettingsPage.Verify System Info Is Appear           ${URL_System_Info_Settings}
    SettingsPage.Verify Label System Info In Setting
    SettingsPage.Click System Info In Footer
    SettingsPage.Verify System Info Is Appear           ${URL_System_Info_Footer}
    SettingsPage.Verify Label System Info In Footer
    Reload Page
    # Logout Account
    # Check tulisan browser, os, location, isp, ip, date&time muncul
    # Tambah dari footer system info
    # Check tulisan browser, os, location, isp, ip, date&time muncul

TC024 Autoplay OFF
    [Documentation]         Check toggle button function to enable and disable autoplay
    ...                     Turn off Autoplay toggle button
    [Tags]                  Regression  Smoke   Verified

    # SignInPage.Login Using Credentials          ${ACCOUNT_SUPERMOLA69690_EMAIL}     ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SignInPage.Restore Existing Cookies Or Relogin          ${ACCOUNT_SUPERMOLA69690_EMAIL}     ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SettingsPage.Select User icon
    SettingsPage.Select Pengaturan
    SettingsPage.Turn on / off Autoplay toggle button
    SettingsPage.Verify Autoplay toggle button is turn off
    SignInPage.Select Special Asset                     ${URL_MOVIE_DETAIL}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Verify Auto Play Not Displayed
    Reload Page
    Go Back
    # Logout Account

TC014 Autoplay ON
    [Documentation]         Check toggle button function to enable and disable autoplay
    ...                     Turn on Autoplay toggle button
    [Tags]                  Regression  Smoke   Verified

    # SignInPage.Login Using Credentials          ${ACCOUNT_SUPERMOLA69690_EMAIL}     ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SignInPage.Restore Existing Cookies Or Relogin          ${ACCOUNT_SUPERMOLA69690_EMAIL}     ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SettingsPage.Select User icon
    SettingsPage.Select Pengaturan
    SettingsPage.Verify Autoplay toggle button is turn on
    SignInPage.Select Special Asset                     ${URL_MOVIE_DETAIL}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Auto Play Next Episode
    MovieDetailPage.Verify Autoplay Next Video Is Visible

    # Tambah click button skip, itu stay di video sampai habis tetap di content itu (Tetap di tempat yang sama)
    MovieDetailPage.Click Button Skip Auto Play
    MovieDetailPage.Verify Auto Play Is Not Displayed
    MovieDetailPage.Verify After Autoplay Stay At Current Video

    # Tambah autoplay di diamkan dan di verifikasi pindah ke content selanjutnya sesuai tulisan dan di verify movide detail judulnya sama seperti yg di auto play
    Reload Page
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Seek To Last 10s
    MovieDetailPage.Verify Autoplay Next Video Is Visible
    Sleep    10
    MovieDetailPage.Verify After Autoplay Play Next Video

    # Tambah click button Play Next Movie -> pindah ke content selanjutnya sesuai tulisan dan di verify movide detail judulnya sama seperti yg di auto play
    SignInPage.Select Special Asset                     ${URL_MOVIE_DETAIL}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Verify Content Is Playing In Default Mode
    MovieDetailPage.Seek To Last 10s
    MovieDetailPage.Verify Autoplay Next Video Is Visible
    MovieDetailPage.Click Button Play Next Auto Play
    MovieDetailPage.Verify After Autoplay Play Next Video
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Verify Content Is Playing In Default Mode

    # Tambah pengecekan countdown 10s
    # Kalau misal kondisi awal fullscreen ketika autoplay jadi tidak fullscreen
    SignInPage.Select Special Asset                     ${URL_MOVIE_DETAIL}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Verify Content Is Playing In Default Mode
    MovieDetailPage.Play a content in fullscreen mode
    MovieDetailPage.Verify Content Is Playing In Fullscreen Mode
    MovieDetailPage.Seek To Last 10s
    MovieDetailPage.Verify Autoplay Countdown Is Appear
    MovieDetailPage.Verify Autoplay Next Video Is Visible
    MovieDetailPage.Click Button Play Next Auto Play
    MovieDetailPage.Verify After Autoplay Play Next Video
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Verify Content Is Playing In Default Mode
    # Logout Account

TC015 Internet Speed Test
    [Documentation]         check the internet connection that is connected to mola tv
    [Tags]                  Regression  Smoke  Verified

    # SignInPage.Login Using Credentials          ${ACCOUNT_SUPERMOLA69690_EMAIL}     ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SignInPage.Restore Existing Cookies Or Relogin          ${ACCOUNT_SUPERMOLA69690_EMAIL}     ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SettingsPage.Select User icon
    SettingsPage.Select Pengaturan
    SettingsPage.Click Internet Speed Test              ${URL_mola_speed}
    Go Back
    SettingsPage.Verify After Back Confirm to Setting Page
    Reload Page
    Go Back
    Logout Account
    # Tambah verify ketika back balik ke halaman setting

TC016 Video Playback Test Non-DRM
    [Documentation]         Check device compatibility for Mola TV video formats
    ...                     User already login
    [Tags]                  Regression  Smoke   NeedVerify

    # SignInPage.Login Using Credentials          ${ACCOUNTS_HBO_EMAIL}      ${ACCOUNTS_HBO_PASSWORD}
    SignInPage.Restore Existing Cookies Or Relogin          ${ACCOUNTS_HBO_EMAIL}      ${ACCOUNTS_HBO_PASSWORD}
    SettingsPage.Select User icon
    SettingsPage.Select Pengaturan
    SettingsPage.Click Video Playback Test
    SettingsPage.Choose Non-DRM Playback
    MovieDetailPage.Play Content Video Or Play Video From Begining
#    MovieDetailPage.Change Video Quality
    MovieDetailPage.Verify VOD Is Playing And Time Is Elapsed

TC016 Video Playback Test DRM
    [Documentation]         Check device compatibility for Mola TV video formats
    ...                     User already login
    [Tags]                  Regression  Smoke   NeedVerify

    # SignInPage.Login Using Credentials          ${ACCOUNTS_HBO_EMAIL}      ${ACCOUNTS_HBO_PASSWORD}
    SignInPage.Restore Existing Cookies Or Relogin          ${ACCOUNTS_HBO_EMAIL}      ${ACCOUNTS_HBO_PASSWORD}
    SettingsPage.Select User icon
    SettingsPage.Select Pengaturan
    SettingsPage.Click Video Playback Test
    SettingsPage.Choose DRM Playback
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Verify VOD Is Playing And Time Is Elapsed
    MovieDetailPage.Verify The progress bar and elapsed time are updating when playing a content

TC017 Atur Password with user that login by email and password
    [Documentation]        User setting a new password with the new flow.
    ...                    User registered and logged-in with an account, registered using email+password (not SSO)
    [Tags]                 Skip

    Log                    Reason Can't Automated :     Because For Enter the OTP Code that has been sent to Email User's

TC018 Atur Password with user that login by Google, Facebook (have email) and Apple button
    [Documentation]        User setting a new password with the new flow.
    ...                    User registered and logged-in with an account, registered using Google, Facebook or Apple. (SSO)
    [Tags]                 Skip

    Log                    Reason Can't Automated :     Because For Enter the OTP Code that has been sent to Email User's

TC019 Atur Password with user that login by Facebook (don't have email)
    [Documentation]        User setting a new password with the new flow.
    ...                    User registered and logged-in with an account, registered using Facebook. (SSO)
    [Tags]                 Skip

    Log                    Reason Can't Automated :     Because For Enter the OTP Code that has been sent to Email User's

TC020 Atur Password input wrong OTP number code
    [Documentation]         Input wrong OTP number at Atur Password flow.
    [Tags]                  Regression  Smoke   Verified

    # SignInPage.Login Using Credentials                              ${ACCOUNT_SUPERMOLA69690_EMAIL}     ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SignInPage.Restore Existing Cookies Or Relogin                  ${ACCOUNT_SUPERMOLA69690_EMAIL}     ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SettingsPage.Select User icon
    SettingsPage.Select Pengaturan
    SettingsPage.Select Ubah Password
    SettingsPage.Verify OTP Change Password Is Appeared             ${ACCOUNT_SUPERMOLA69690_EMAIL}
    Go Back
    SettingsPage.Select Ubah Password
    SettingsPage.Verify OTP Message Please Wait 60s Is Appeared
    SettingsPage.Verify OTP Change Password Is Appeared             ${ACCOUNT_SUPERMOLA69690_EMAIL}
    RegistrationPage.Input OTP                                       1       2      3       4      5       6
    RegistrationPage.Click Verifikasi
    SettingsPage.Verify Input Wrong OTP Number Code

    # verifikasi halaman ganti password, email sesuai dengan email yang login       -> SettingsPage.Verify OTP Change Password Is Appeared
    # Verifkasi muncul Please wait 60 seconds to try again (back trus masuk lagi)

TC021 Atur Password resend OTP number code
    [Documentation]         countdown for 60 second
    [Tags]                  Regression  Smoke   NeedVerify

    # SignInPage.Login Using Credentials          ${ACCOUNTS_MOLA_TESTING21_EMAIL}         ${ACCOUNTS_MOLA_TESTING21_PASSWORD}
    SignInPage.Restore Existing Cookies Or Relogin                  ${ACCOUNTS_MOLA_TESTING21_EMAIL}     ${ACCOUNTS_MOLA_TESTING21_PASSWORD}
    SettingsPage.Select User icon
    SettingsPage.Select Pengaturan
    SettingsPage.Select Ubah Password
    SettingsPage.Verify Resend OTP Number Code 60 Second
    RegistrationPage.Input OTP                                       1       2      3       4      5       6
    RegistrationPage.Click Verifikasi
    SettingsPage.Verify Input Wrong OTP Number Code
    SettingsPage.Click Resend OTP Number Code
    SettingsPage.Verify OTP Message Is Appeared
    SettingsPage.Verify Resend OTP Number Code 60 Second
    # Tambah verifikasi 60s -> SettingsPage.Verify Resend OTP Number Code 60 Second -> fixed
    # Allert OTP code send  -> SettingsPage.Verify OTP Message Is Appeared

TC022 Atur Password add existing email address to Account
    [Documentation]        User cannot add email that has been previously registered.
    [Tags]                 Skip

    Log                    Reason Can't Automated :     Because For Enter the OTP Code that has been sent to Email User's

TC023 - Language
    [Documentation]         Setting language on Mola TV
    [Tags]                  Regression  Smoke   NeedVerify

    # SignInPage.Login Using Credentials          ${ACCOUNT_SUPERMOLA69690_EMAIL}     ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SignInPage.Restore Existing Cookies Or Relogin           ${ACCOUNT_SUPERMOLA69690_EMAIL}     ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SettingsPage.Select User icon
    SettingsPage.Select Pengaturan
    SettingsPage.Select Language for Change language Preference
    SettingsPage.Verify Language Preference Checking
    SettingsPage.Select Change Language To Indonesia
    SettingsPage.Verify Change Language To Indonesia
    SettingsPage.Select Change Language To English
    SettingsPage.Verify Change Language To English
    Reload Page
    Go Back
    # Logout Account

    # Perlu Adanya NeedVerify di bagian TabMenu css=._16YQ- dan    Menu Setting    css=._1KqoD Verify Text nya saja
    # Tambah Pengecekkan untuk Change Language nya itu gak pakai login ????