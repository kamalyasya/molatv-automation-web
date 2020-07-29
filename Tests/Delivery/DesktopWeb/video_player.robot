*** Settings ***
Resource                        ../../../Frameworks/Routers.robot
Library                         SeleniumLibrary

Test Setup                      CommonKeywords.Start Testing        ${URL}
Test Teardown                   CommonKeywords.End Testing

*** Variables ***
${URL}                          https://mola.tv

*** Test Cases ***
Delivery - Video Player: Video playback without sign in
    [Documentation]     Select an asset for video playback (Live/Reply/Movie)
    [Tags]              Regression Smoke

    VideoPlaybackWithoutSignIn.Select an asset for video playback (Live/Reply/Movie)
    VideoPlaybackWithoutSignIn.Start video playback