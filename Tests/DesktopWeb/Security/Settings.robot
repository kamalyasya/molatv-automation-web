*** Settings ***
Resource                ../../../Frameworks/Routers.robot
Library         	    SeleniumLibrary
Library 				String

Test Timeout            ${DEFAULT_TEST_TIMEOUT}
Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing


*** Variables ***
${URL}                          https://mola.tv/accounts/profile

${PHONE}                            6281297186666

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

${ACCOUNT_HBO_EMAIL}                t.hbo@mola.tv
${ACCOUNT_HBO_PASSWORD}             M0L4h8o!

${URL_MOVIE_DETAIL}                 https://mola.tv/watch?v=vd93496274
${EXPECTED_URL_MOVIE_DETAIL}        ${URL_MOVIE_DETAIL}

${URL_mola_speed}                   https://mola.tv/diag/speed

*** Test Cases ***
TC001 Edit Profile view
    [Documentation]         View edit profile page
    ...                     User already have an account and sign in
    [Tags]                  Regression  Smoke

    SignInPage.Login Using Credentials              ${ACCOUNT_SUPERMOLA69690_EMAIL}  ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SettingsPage.Show Status Berlangganan
    SettingsPage.The account information is shown in Profile page
    SettingsPage.The Ubah button is shown under user info

TC002 Edit Profile
    [Documentation]         Make a change at edit profile
    ...                     User already have an account and sign in
    [Tags]                  Regression  Smoke

	${RANDOM_NUMBER}        Generate random string      10      0123456789
    ${PHONE}			    Catenate 	        62${RANDOM_NUMBER}

    SignInPage.Login Using Credentials              ${ACCOUNT_SUPERMOLA69690_EMAIL}  ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SettingsPage.Select User icon
    SettingsPage.Select Ubah button
    SettingsPage.Make some changes and Save
    SettingsPage.Button Simpan
    SettingsPage.User Successfully Ubah
    SettingsPage.Make changes to default value

TC003 Edit Profile without saving it
    [Documentation]         Make a change at edit profile and don't save it
    ...                     User already have an account and sign in
    [Tags]                  Regression  Smoke

    SignInPage.Login Using Credentials              ${ACCOUNT_SUPERMOLA69690_EMAIL}     ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SettingsPage.Select User icon 01
    SettingsPage.Select Ubah button 01
    SettingsPage.Make some changes 01
    SettingsPage.Click Back button

TC004 Change Password with user that login by email and password
    [Documentation]         Make a password change
    ...                     User already have an account and sign in
    [Tags]                  Regression  Smoke   Pending

    ${RANDOM_NUMBER}    Generate random string    5    123456789
    ${PASSWORD}			Catenate	sapisuper${RANDOM_NUMBER}

    SignInPage.Login Using Credentials              ${ACCOUNT_SUPERMOLA69690_EMAIL}  ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    HomePage.Open Login Page
    SettingsPage.Select Pengaturan
    SettingsPage.Select Ubah Password
    SettingsPage.Input Old, New and Confirm Password at the field       ${PASSWORD_SEKARANG}    ${PASSWORD_BARU}    ${ULANG_PASSWORD}
    SettingsPage.Select Simpan button
    SettingsPage.User Successfully Ubah Password
    SettingsPage.Changes To Default Input Old, New and Confirm Password at the field    ${PASSWORD_SEKARANG01}    ${PASSWORD_BARU01}    ${ULANG_PASSWORD01}

TC006 Change Password without saving it
    [Documentation]         Make a password change and don't save it
    ...                     User already have an account and sign in
    [Tags]                  Regression  Smoke   Pending

    SignInPage.Login Using Credentials              ${ACCOUNT_SUPERMOLA69690_EMAIL}  ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SettingsPage.Select User icon
    SettingsPage.Select Pengaturan
    SettingsPage.Select Ubah Password
    SettingsPage.Input Old, New and Confirm Password at the field       ${PASSWORD_SEKARANG}    ${PASSWORD_BARU}    ${ULANG_PASSWORD}
    SettingsPage.Unselected Simpan button

TC007 Change Password with wrong Old Password
    [Documentation]         User already have an account and sign in
    [Tags]                  Regression  Smoke   Pending

    SignInPage.Login Using Credentials              ${ACCOUNT_SUPERMOLA69690_EMAIL}  ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SettingsPage.Select User icon
    SettingsPage.Select Pengaturan
    SettingsPage.Select Ubah Password
    SettingsPage.Input wrong Old Password               ${PASSWORD_LAMA_SALAH}  ${PASSWORD_BARU01}    ${ULANG_PASSWORD01}
    SettingsPage.User Unsuccessfully Ubah Password

TC008 Change Password with different input at New Password and Password Confirmation
    [Documentation]         User already have an account and sign in
    [Tags]                  Regression  Smoke   Pending

    SignInPage.Login Using Credentials              ${ACCOUNT_SUPERMOLA69690_EMAIL}  ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SettingsPage.Select User icon
    SettingsPage.Select Pengaturan
    SettingsPage.Select Ubah Password
    SettingsPage.Input different case at New Password and Password Confirmation     ${PASSWORD_SEKARANG}    ${PASSWORD_BARU}    ${ULANG_PASSWORD02}
    SettingsPage.User Konfirmasi password salah

TC009 Change Password with same input at Old and New Password
    [Documentation]         User already have an account and sign in
    [Tags]                  Regression  Smoke   Pending

    SignInPage.Login Using Credentials              ${ACCOUNT_SUPERMOLA69690_EMAIL}  ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SettingsPage.Select User icon
    SettingsPage.Select Pengaturan
    SettingsPage.Select Ubah Password
    SettingsPage.Input same case at Old and New Password        ${PASSWORD_SEKARANG}    ${PASSWORD_BARU02}    ${ULANG_PASSWORD03}
    SettingsPage.Select Simpan button
    SettingsPage.User Successfully Ubah Password

TC010 Subscription view
    [Documentation]         View subscription page
    ...                     User already have an account and sign in
    [Tags]                  Regression  Smoke

    SignInPage.Login Using Credentials              ${ACCOUNT_HBO_EMAIL}        ${ACCOUNT_HBO_PASSWORD}
    SettingsPage.Select User icon
    SettingsPage.Select Subscription
    SettingsPage.Select Status

TC012 Edit Profile change Phone Number
    [Documentation]         User already have an account and sign in
    ...                     Make phone number change, using phone number that already used for another account
    [Tags]                  Regression  Smoke

	${RANDOM_NUMBER}        Generate random string      10      0123456789
    ${PHONE}			    Catenate 	        62${RANDOM_NUMBER}

    SignInPage.Login Using Credentials              ${ACCOUNT_SUPERMOLA69690_EMAIL}  ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SettingsPage.Select User icon
    SettingsPage.Select Ubah button
    SettingsPage.Make phone number change               ${PHONE}

TC013 System Info
    [Documentation]         Check System page at My Account page
    [Tags]                  Regression  Smoke

    SignInPage.Login Using Credentials          ${ACCOUNT_SUPERMOLA69_EMAIL}     ${ACCOUNT_SUPERMOLA69_PASSWORD}
    SettingsPage.Select User icon
    SettingsPage.Select Pengaturan
    SettingsPage.Click System Info

TC014 Autoplay off
    [Documentation]         Check toggle button function to enable and disable autoplay
    [Tags]                  Regression  Smoke

    SignInPage.Login Using Credentials          ${ACCOUNT_SUPERMOLA69690_EMAIL}     ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SettingsPage.Select User icon
    SettingsPage.Select Pengaturan
    SettingsPage.Turn on / off Autoplay toggle button
    SettingsPage.Verify Autoplay toggle button is turn off
    SignInPage.Select Special Asset                     ${URL_MOVIE_DETAIL}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Verify Auto Play Not Displayed

TC014 Autoplay on
    [Documentation]         Check toggle button function to enable and disable autoplay
    [Tags]                  Regression  Smoke

    SignInPage.Login Using Credentials              ${ACCOUNT_SUPERMOLA69690_EMAIL}  ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SettingsPage.Select User icon
    SettingsPage.Select Pengaturan
    SettingsPage.Verify Autoplay toggle button is turn on
    SignInPage.Select Special Asset                     ${URL_MOVIE_DETAIL}
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Auto Play Next Episode
    MovieDetailPage.Verify Auto Play Next Episode

TC015 Internet Speed Test
    [Documentation]         check the internet connection that is connected to mola tv
    [Tags]                  Regression  Smoke

    SignInPage.Login Using Credentials          ${ACCOUNT_SUPERMOLA69690_EMAIL}     ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SettingsPage.Select User icon
    SettingsPage.Select Pengaturan
    SettingsPage.Click Internet Speed Test              ${URL_mola_speed}

TC016 Video Playback Test Non-DRM
    [Documentation]         Check device compatibility for Mola TV video formats
    ...                     User already login
    [Tags]                  Regression  Smoke

    SignInPage.Login Using Credentials          ${ACCOUNTS_HBO_EMAIL}      ${ACCOUNTS_HBO_PASSWORD}
    SettingsPage.Select User icon
    SettingsPage.Select Pengaturan
    SettingsPage.Click Video Playback Test
    SettingsPage.Choose Non-DRM Playback
    MovieDetailPage.Change Video Quality

TC016 Video Playback Test DRM
    [Documentation]         Check device compatibility for Mola TV video formats
    ...                     User already login
    [Tags]                  Regression  Smoke

    SignInPage.Login Using Credentials          ${ACCOUNTS_HBO_EMAIL}      ${ACCOUNTS_HBO_PASSWORD}
    SettingsPage.Select User icon
    SettingsPage.Select Pengaturan
    SettingsPage.Click Video Playback Test
    SettingsPage.Choose DRM Playback
    MovieDetailPage.Play Content Video Or Play Video From Begining
    MovieDetailPage.Change Video Quality
    MovieDetailPage.Verify The progress bar and elapsed time are updating when playing a content

TC020 Atur Password input wrong OTP number code
    [Documentation]         Input wrong OTP number at Atur Password flow.
    [Tags]                  Regression  Smoke

    SignInPage.Login Using Credentials              ${ACCOUNT_SUPERMOLA69690_EMAIL}  ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SettingsPage.Select User icon
    SettingsPage.Select Pengaturan
    SettingsPage.Select Ubah Password
    RegistrationPage.Input OTP                                       1       2      3       4      5       6
    RegistrationPage.Click Verifikasi
    SettingsPage.Verify Input Wrong OTP Number Code

TC021 TC021 Atur Password resend OTP number code
    [Documentation]         countdown for 60 second
    [Tags]                  Regression  Smoke

    SignInPage.Login Using Credentials              ${ACCOUNT_SUPERMOLA69690_EMAIL}  ${ACCOUNT_SUPERMOLA69690_PASSWORD}
    SettingsPage.Select User icon
    SettingsPage.Select Pengaturan
    SettingsPage.Select Ubah Password
    RegistrationPage.Input OTP                                       1       2      3       4      5       6
    RegistrationPage.Click Verifikasi
    SettingsPage.Verify Input Wrong OTP Number Code
    SettingsPage.Click Resend OTP Number Code
    SettingsPage.Verify Resend OTP Number Code 60 Second