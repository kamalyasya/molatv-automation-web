*** Settings ***
Library         	            SeleniumLibrary
Resource                        ../../Frameworks/Routers.robot

*** Variables ***
${URL_BLANK}                    about:blank

*** Keywords ***
Start Testing
    [Arguments]     ${URL}
    Open Mola TV                ${URL}
    Set Selenium Timeout        ${DEFAULT_TIMEOUT}
    Set Selenium Speed	        0.25

End Testing
    Close Browser

Open Mola TV
    [Arguments]     ${URL}
    Open Browser                ${URL_BLANK}      ${BROWSER}
    Maximize Browser Window
    Go To                       ${URL}