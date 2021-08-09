*** Settings ***
Resource                ../../../Frameworks/Routers.robot

Test Timeout            ${DEFAULT_TEST_TIMEOUT}
Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}				                                        ${HOST}

${URL_MOVIE_PLAYLIST}                                       ${HOST}/categories/HBOB208
${URL_MOVIE_PLAYLIST2}                                      ${HOST}/categories/KE
${URL_MOVIE_PLAYLIST3}                                      ${HOST}/categories/KE-S1
*** Test Cases ***
TC001 - Sort on Video Playlist
    [Documentation]  User can sorting video in Video Playlist
	[Tags]  Regression  Smoke   NeedReview

    MoviePlaylistPage.Open Movie Playlist               ${URL_MOVIE_PLAYLIST}
    MoviePlaylistPage.Click Sorting Button On Playlist
    MoviePlaylistPage.Verify Sorting Button Is Shown On Playlist

TC002 - Sort on Playlist section
    [Documentation]  User can sorting video in Playlist Section
	[Tags]  Regression  Smoke   NeedReview

    MoviePlaylistPage.Open Movie Playlist               ${URL_MOVIE_PLAYLIST2}
    MoviePlaylistPage.Click Sorting Button On Playlist
    MoviePlaylistPage.Verify Sorting Button Is Shown On Playlist

TC003 - Sort on Series Season List
    [Documentation]  User can sorting video in series section list
	[Tags]  Regression  Smoke   NeedReview

    Open Series Playlist                                ${URL_MOVIE_PLAYLIST3}
    Click Sorting Button On Series
    Verify Sorting Button Is Shown On Series

TC004 - Sort by Terbaru
    [Documentation]  User can sort video by newest realese date
    ...              Sorting option "Terbaru" just available on video list only (not have section inside)
	[Tags]  Regression  Smoke   NeedReview

    Open Series Playlist                                ${URL_MOVIE_PLAYLIST3}
    MovieSeriesSeasonPage.Sorting By Terbaru On Series
    MovieSeriesSeasonPage.Verify Sorting By Terbaru On Series

TC005 - Sort by Terlama
    [Documentation]  User can sort video by oldest release date
    ...              Sorting option "Terlama" just available on video list only (not have section inside)
    [Tags]  Regression  Smoke   NeedReview

    Open Series Playlist                                ${URL_MOVIE_PLAYLIST3}
    MovieSeriesSeasonPage.Sorting By Terlama On Series
    MovieSeriesSeasonPage.Verify Sorting By Terlama On Series

TC006 - Sort by A - Z
    [Documentation]  User can sort video by ascending
    [Tags]  Regression  NeedReview

    Open Series Playlist                                ${URL_MOVIE_PLAYLIST3}
    MovieSeriesSeasonPage.Sorting By A-Z On Series
    MovieSeriesSeasonPage.Verify Sorting By A-Z On Series

TC007 - Sort by Z - A
    [Documentation]  User can sort video by descending
    [Tags]  Regression  NeedReview

    MovieSeriesSeasonPage.Open Series Playlist          ${URL_MOVIE_PLAYLIST3}
    MovieSeriesSeasonPage.Sorting By Z-A On Series
    MovieSeriesSeasonPage.Verify Sorting By Z-A On Series

TC008 - Sort by Default
    [Documentation]  User can restore sorting by default condition
    [Tags]  Regression  NeedReview

    MovieSeriesSeasonPage.Open Series Playlist          ${URL_MOVIE_PLAYLIST3}
    MovieSeriesSeasonPage.Sorting By Z-A On Series
    MovieSeriesSeasonPage.Sorting By Default On Series
    MovieSeriesSeasonPage.Verify Sorting By Default On Series

TC009 - Cancel sorting video
    [Documentation]  User can cancel sorting / close bottom sheet
    [Tags]  Regression  NeedReview

    MovieSeriesSeasonPage.Open Series Playlist          ${URL_MOVIE_PLAYLIST3}
    MovieSeriesSeasonPage.Click Sorting Button On Series
    MovieSeriesSeasonPage.Cancel Sorting On Series
    MovieSeriesSeasonPage.Verify Sorting By Default On Series
