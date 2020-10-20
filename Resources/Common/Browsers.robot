*** Settings ***
Library         	            SeleniumLibrary
Resource                        ../../Frameworks/Routers.robot

*** Keywords ***
Open Normal Browser
    [Arguments]     ${URL}
    Open Browser                ${URL_BLANK}      ${BROWSER}
    Maximize Browser Window
    Go To                       ${URL}

Open Mychrome Browser
    [Arguments]    ${URL}
    ${chrome_options}       Evaluate        sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${chrome_options}    add_argument    test-type
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --disable-popup-blocking
    Call Method    ${chrome_options}    add_argument    --ignore-certificate-errors
    Call Method    ${chrome_options}    add_argument    --disable-extensions
#    Optional using user profile
#    Call Method    ${chrome_options}    add_argument    --user-data-dir\=/Users/molatv/Library/Application Support/Google/Chrome/

    Run Keyword If    os.sep == '/'    Create Webdriver    Chrome    my_alias    chrome_options=${chrome_options}    executable_path=${CURDIR}/../../Webdrivers/chromedriver
    ...    ELSE                        Create Webdriver    Chrome    my_alias    chrome_options=${chrome_options}
    Maximize Browser Window
    Go To          ${URL}

Open Myheadlesschrome Browser
    [Arguments]    ${URL}
    ${chrome_options}       Evaluate        sys.modules['selenium.webdriver'].ChromeOptions()    sys
    ${window_size}          Set Variable    window-size=1366,1080
    Call Method    ${chrome_options}    add_argument    test-type
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --disable-popup-blocking
    Call Method    ${chrome_options}    add_argument    --ignore-certificate-errors
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    ${window_size}
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --headless

    Run Keyword If    os.sep == '/'    Create Webdriver    Chrome    my_alias    chrome_options=${chrome_options}    executable_path=${CURDIR}/../../Webdrivers/chromedriver
    ...    ELSE                        Create Webdriver    Chrome    my_alias    chrome_options=${chrome_options}
    Go To          ${URL}

Open Chromemobile Browser
    [Arguments]    ${URL}   ${mobile}=Galaxy S5
    [Documentation]         Starts a Chrome Browser in Mobile Emulation with specified device model
    ${options}              Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    &{mobile_emulation}     Create Dictionary    deviceName=${mobile}
    Call Method    ${options}    add_experimental_option    mobileEmulation    ${mobile_emulation}
    Create Webdriver    Chrome    chrome_options=${options}
    Go To          ${URL}

