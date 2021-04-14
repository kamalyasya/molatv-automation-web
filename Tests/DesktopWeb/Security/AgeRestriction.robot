*** Settings ***
Resource                        ../../../Frameworks/Routers.robot

Test Timeout                    ${DEFAULT_TEST_TIMEOUT}
Test Setup                      CommonKeywords.Start Testing        ${URL}
Test Teardown                   CommonKeywords.End Testing

*** Variables ***
${URL}                                      ${HOST}

${URL_MOVIE_DETAIL_18+_MOLA}                ${HOST}/watch?v=vd94027041
${URL_MOVIE_DETAIL1_18+_MOLA}               ${HOST}/watch?py_id=py57813852&v=vd08380827
${URL_MOVIE_DETAIL_NON18+}                  ${HOST}/watch?v=vd71414281
${URL_MOVIE_DETAIL_18+_HBO}                 ${HOST}/watch?py_id=HBO-All-Movies&v=HBO017814X0
${URL_MOVIE_DETAIL_NON18+_HBO}              ${HOST}/watch?py_id=HBO014459X0&v=HBO014459X0

${EXPECTED_URL_MOVIE_DETAIL_18+_MOLA}       ${URL_MOVIE_DETAIL_18+_MOLA}
${EXPECTED_URL_MOVIE_DETAIL1_18+_MOLA}      ${URL_MOVIE_DETAIL1_18+_MOLA}
${EXPECTED_URL_MOVIE_DETAIL_NON18+}         ${URL_MOVIE_DETAIL_NON18+}
${EXPECTED_URL_MOVIE_DETAIL_18+_HBO}        ${URL_MOVIE_DETAIL_18+_HBO}
${EXPECTED_URL_MOVIE_DETAIL_NON18+_HBO}     ${URL_MOVIE_DETAIL_NON18+_HBO}

*** Test Cases ***
TC001 Access 18+ content without login
    [Documentation]     Account not already had a package and login
    [Tags]              Regression  Smoke   Verified

    AgeRestrictionPage.Select 18+ Movie Content         ${URL_MOVIE_DETAIL_18+_MOLA}
    MovieDetailPage.Verify Direct To Login Page
    Reload Page

    AgeRestrictionPage.Select 18+ Movie Content HBO         ${URL_MOVIE_DETAIL_18+_HBO}
    MovieDetailPage.Verify Direct To Login Page
    Reload Page


TC002 Access non 18+ content
    [Documentation]     Account already had a package and login
    ...                 Play the non 18+ content
    [Tags]              Regression  Smoke   Verified

    HomePage.Open Login Page
    SignInPage.Login Using Credentials              ${ACCOUNT_PUTRA_EMAIL}      ${ACCOUNT_PUTRA_PASSWORD}
    AgeRestrictionPage.Select NON18+ Movie Content          ${URL_MOVIE_DETAIL_NON18+}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${EXPECTED_URL_MOVIE_DETAIL_NON18+}
    Reload Page
    Logout Account
    HomePage.Open Login Page
    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}    ${ACCOUNTS_HBO_PASSWORD}
    AgeRestrictionPage.Select NON18+ Movie Content          ${URL_MOVIE_DETAIL_NON18+_HBO}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${EXPECTED_URL_MOVIE_DETAIL_NON18+_HBO}
    Reload Page
    Logout Account

TC003 Access 18+ content using 18+ account
    [Documentation]     Account already had a package and login
    ...                 Play the 18+ content
    [Tags]              Regression  Smoke   NeedReview  Fixed

    HomePage.Open Login Page
    SignInPage.Login Using Credentials              ${ACCOUNT_KAMAL_EMAIL}      ${ACCOUNT_KAMAL_PASSWORD}
    AgeRestrictionPage.Verify Show Age Blocker 3 18+         ${URL_MOVIE_DETAIL_18+_MOLA}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail          ${EXPECTED_URL_MOVIE_DETAIL_18+_MOLA}
    MovieDetailPage.Click Button Watch Now On Video Player
    MovieDetailPage.Verify VOD Is Playing
    Reload Page
    Logout Account

    HomePage.Open Login Page
    SignInPage.Login Using Credentials              ${ACCOUNT_JERRY_EMAIL}      ${ACCOUNT_JERRY_PASSWORD}
    AgeRestrictionPage.Verify Show Age Blocker 3 18+ Button "X"        ${URL_MOVIE_DETAIL_18+_MOLA}
    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail          ${EXPECTED_URL_MOVIE_DETAIL_18+_MOLA}
    MovieDetailPage.Play Content From Movie Detail
    AgeRestrictionPage.Verify Show Age Blocker 4 18+ Button "X"
    Reload Page
    Logout Account

#    Ditambahkan     >> tambah text yang ada di dalam Frame Ini = This content is only provided for adult. By clicking "Agree", you make sure that you are:  18 years old or older     Being legally responsible with all risk that might emerge from watching this programme.
#    Ditambahkan     >> Verify Click X For close frame age blocker "Adult Content (18+)"
#    Ditambahkan     >> Login Dulu Baru Play Content , Login Melalui Profile Page

#    AgeRestrictionPage.Select 18+ Movie Content HBO         ${URL_MOVIE_DETAIL_18+_HBO}
#    SignInPage.Login Using Credentials              ${ACCOUNTS_HBO_EMAIL}    ${ACCOUNTS_HBO_PASSWORD}
#    AgeRestrictionPage.Verify Show Age Blocker 1 Hbo
#    MovieDetailPage.Verify Is Redirected Back To The Same Movie Detail              ${EXPECTED_URL_MOVIE_DETAIL_18+_HBO}
#    MovieDetailPage.Click Button Watch Now On Video Player
#    MovieDetailPage.Verify VOD Is Playing
#    Reload Page
#    Logout Account

TC004 Access 18+ content using under 18+ account
    [Documentation]     Account already had a package and login
    ...                 Play the 18+ content
    [Tags]              Regression  Smoke   Prod_Sync   NeedReview

    HomePage.Open Login Page
    SignInPage.Login Using Credentials              ${ACCOUNT_WITHDOB_EMAIL}        ${ACCOUNT_WITHDOB_PASSWORD}
    AgeRestrictionPage.Select 18+ Movie Content         ${URL_MOVIE_DETAIL_18+_MOLA}
#    AgeRestrictionPage.Verify Show Age blocker "CLOSE or TUTUP" button      ${URL_MOVIE_DETAIL_18+_MOLA}
    AgeRestrictionPage.Can't Play Button
    Reload Page
    Logout Account

#    Ditambahkan     >> tambah text yang ada di dalam Frame Ini = You are not allowed to watch this age-restricted video. Let's find another content that suitable with your age.
#    Ditambahkan     >> Verify Click X For close frame age blocker "Adult Content (18+)"
#    Ditambahkan     >> Login Dulu Baru Play Content , Login Melalui Profile Page

#    AgeRestrictionPage.Select 18+ Movie Content HBO         ${URL_MOVIE_DETAIL_18+_HBO}
#    SignInPage.Login Using Credentials              ${ACCOUNT_WITHDOB_EMAIL}        ${ACCOUNT_WITHDOB_PASSWORD}
#    AgeRestrictionPage.Verify Show Age blocker "CLOSE or TUTUP" button
#    AgeRestrictionPage.Can't Play Button
#    Reload Page
#    Logout Account

TC005 Access 18+ content using account didn't have date of birth
    [Documentation]     Account already had a package and login
    [Tags]              Regression  Smoke   Prod_Sync   NeedVerify  NeedReview

    Reset Mola DOB          ${UID}
    HomePage.Open Login Page
    SignInPage.Login Using Credentials          ${ACCOUNT_WITHOUTDOB1_EMAIL}     ${ACCOUNT_WITHOUTDOB1_PASSWORD}
    AgeRestrictionPage.using account didn't have DOB       ${URL_MOVIE_DETAIL_18+_MOLA}
    AgeRestrictionPage.Verify Show Age blocker DOB
    AgeRestrictionPage.Click Button Tutup
    Reload Page
    Logout Account

        #    Ditambahkan     >> tambah text yang ada di dalam Frame Ini = This content is only provided for adult. By clicking "Agree", you make sure that you are:  18 years old or older     Being legally responsible with all risk that might emerge from watching this programme.
        #    Ditambahkan     >> Verify Click X For close frame age blocker "Adult Content (18+)"
        #    Ditambahkan     >> Verify Kalau Sudah Click   Close Or X Pada Frame Click Play Button For ShowUP "Age Verification"

#    HomePage.Open Login Page
#    SignInPage.Login Using Credentials          ${ACCOUNT_WITHOUTDOB1_EMAIL}     ${ACCOUNT_WITHOUTDOB1_PASSWORD}
#    AgeRestrictionPage.using account didn't have DOB       ${URL_MOVIE_DETAIL_18+_HBO}
#    AgeRestrictionPage.Verify Show Age blocker DOB
#    AgeRestrictionPage.Click Button Tutup
#    Reload Page
#    Logout Account

TC006 Reset DOB from Misty for Desktop Web
    [Documentation]         Have 1 user_id
    ...                     That user_id already inputted the incorrect DOB, user want to change.
	[Tags]                  Regression  Smoke   Prod_Sync

	Reset Mola DOB          ${UID}


TC007 Access 18+ content from continue blocker
    [Documentation]         Watch content that has been watched before
    ...                     Untuk VOD yang ada di Movie Detail "Pilih Continue Watch" dari Akun 18+ Dirubah Menjadi Akun Dibawah 18+
	[Tags]                  Skip
	Log                     Reason Can't Automated : Substitution of new autonomous regions can be replaced after 3 months

TC008 Access 18+ content from continue watching list
    [Documentation]         Watch content that has been watched before
    ...                     Untuk VOD yang ada di Home div:nth-of-type(1) > .css-5jjjwv.undefined > div > h3 "Continue Watching" dari Akun 18+ Dirubah Menjadi Akun Dibawah 18+
	[Tags]                  Skip
	Log                     Reason Can't Automated : Substitution of new autonomous regions can be replaced after 3 months

TC009 Login from 18+ content using 18+ account
    [Documentation]         Watch content that has been watched before
    ...                     Ini Sama kaya Nomor 3
	[Tags]                  Skip
	Log                     Reason Can't Automated : Substitution of new autonomous regions can be replaced after 3 months

TC010 Login from 18+ content using under 18+ account
    [Documentation]         Watch content that has been watched before
    ...                     Ini Sama kaya Nomor 4
	[Tags]                  Skip

	AgeRestrictionPage.Select 18+ Movie Content         ${URL_MOVIE_DETAIL_18+_MOLA}
    SignInPage.Login Using Credentials              ${ACCOUNT_WITHDOB_EMAIL}        ${ACCOUNT_WITHDOB_PASSWORD}
    AgeRestrictionPage.Verify Show Age blocker "CLOSE or TUTUP" button
    AgeRestrictionPage.Can't Play Button
    Reload Page
    Logout Account

TC011 Login from 18+ content using account didn't have date of birth
    [Documentation]         Watch content that has been watched before
    ...                     Ini Sama kaya Nomor 5
	[Tags]                  Skip
    HomePage.Open Login Page
    SignInPage.Login Using Credentials          ${ACCOUNT_WITHOUTDOB1_EMAIL}     ${ACCOUNT_WITHOUTDOB1_PASSWORD}
    AgeRestrictionPage.using account didn't have DOB       ${URL_MOVIE_DETAIL_18+_MOLA}
    AgeRestrictionPage.Verify Show Age blocker DOB
    AgeRestrictionPage.Click Button Tutup
    Reload Page
    Logout Account
