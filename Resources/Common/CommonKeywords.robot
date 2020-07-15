*** Settings ***
Library         	    SeleniumLibrary
Resource                ../../Frameworks/Routers.robot

*** Variables ***

*** Keywords ***
Start Testing
    [Arguments]     ${URL}
    Open Mola TV                ${URL}
    Set Selenium Timeout        ${DEFAULT_TIMEOUT}

End Testing
    Close Browser

Open Mola TV
    [Arguments]     ${URL}
    Open Browser                ${URL}      ${BROWSER}
    Maximize Browser Window