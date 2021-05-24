*** Settings ***
Resource                        ../../Frameworks/Routers.robot

*** Keywords ***
Open Normal Browser
    [Arguments]     ${URL}
    Open Browser                ${URL_BLANK}      ${BROWSER}
    Maximize Browser Window
    Go To                       ${URL}

Open Mychrome Browser
    [Arguments]    ${URL}
    ${chrome_options}       Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    ${window_size}          Set Variable    window-size=1920,1080
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chrome_options}    add_argument    test-type
    Call Method    ${chrome_options}    add_argument    --disable-dev-shm-usage
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --disable-popup-blocking
    Call Method    ${chrome_options}    add_argument    --ignore-certificate-errors
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --disable-notifications
    Call Method    ${chrome_options}    add_argument    --disable-infobars
    Call Method    ${chrome_options}    add_argument    ${window_size}
#    Optional using user profile
#    Call Method    ${chrome_options}    add_argument    --user-data-dir\=/Users/molatv/Library/Application Support/Google/Chrome/

    ${OS}          Evaluate             platform.system()       platform
    ${chrometype}  Set Variable If
    ...	           '${OS}' == 'Darwin'	chromedriver_mac64/chromedriver
    ...	           '${OS}' == 'Linux'	chromedriver_linux64/chromedriver
    ...	           '${OS}' == 'Windows'	chromedriver_win32/chromedriver.exe

    Run Keyword If    os.sep == '/'    Create Webdriver    Chrome    my_alias    chrome_options=${chrome_options}    executable_path=${CURDIR}/../../Webdrivers/${chrometype}
#    ...    ELSE                        Create Webdriver    Chrome    my_alias    chrome_options=${chrome_options}
#    Maximize Browser Window
    Go To          ${URL}

Open Myheadlesschrome Browser
    [Arguments]    ${URL}
    ${chrome_options}       Evaluate        sys.modules['selenium.webdriver'].ChromeOptions()    sys
    ${window_size}          Set Variable    window-size=1920,1080
    Call Method    ${chrome_options}    add_argument    test-type
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --disable-popup-blocking
    Call Method    ${chrome_options}    add_argument    --ignore-certificate-errors
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    ${window_size}
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --headless

    ${OS}          Evaluate             platform.system()       platform
    ${chrometype}  Set Variable If
    ...	           '${OS}' == 'Darwin'	chromedriver_mac64/chromedriver
    ...	           '${OS}' == 'Linux'	chromedriver_linux64/chromedriver
    ...	           '${OS}' == 'Windows'	chromedriver_win32/chromedriver.exe

    Run Keyword If    os.sep == '/'    Create Webdriver    Chrome    my_alias    chrome_options=${chrome_options}    executable_path=${CURDIR}/../../Webdrivers/${chrometype}
    ...    ELSE                        Create Webdriver    Chrome    my_alias    chrome_options=${chrome_options}
    Go To          ${URL}

Open Chromemobile Browser
    [Arguments]    ${URL}   ${mobile}=Galaxy S5
    [Documentation]         Starts a Chrome Browser in Mobile Emulation with specified device model
    ${options}              Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    &{mobile_emulation}     Create Dictionary    deviceName=${mobile}
    Call Method    ${options}    add_experimental_option    mobileEmulation    ${mobile_emulation}
    ${OS}          Evaluate             platform.system()       platform
    ${chrometype}  Set Variable If
    ...	           '${OS}' == 'Darwin'	chromedriver_mac64/chromedriver
    ...	           '${OS}' == 'Linux'	chromedriver_linux64/chromedriver
    ...	           '${OS}' == 'Windows'	chromedriver_win32/chromedriver.exe
    Create Webdriver    Chrome      chrome_options=${options}       executable_path=${CURDIR}/../../Webdrivers/${chrometype}
    Go To          ${URL}

Open Myfirefox Browser
    [Arguments]    ${URL}
#    ${firefox options}      Evaluate    sys.modules['selenium.webdriver'].firefox.webdriver.Options()    sys, selenium.webdriver
#    ${firefox_path}         Evaluate    sys.modules['selenium.webdriver'].firefox.firefox_binary.FirefoxBinary(firefox_path='${CURDIR}/../../Webdrivers/geckodriver_0270_mac', log_file=None)   sys

    Open Browser	    ${URL}	    Firefox	    ff_profile_dir=/Users/te3/Library/Application Support/Firefox/Profiles/4xoqzcu6.default-release
    Maximize Browser Window
    Go To          ${URL}

Open Myheadlessfirefox Browser
    [Arguments]    ${URL}
    ${firefox options}      Evaluate    sys.modules['selenium.webdriver'].firefox.webdriver.Options()    sys, selenium.webdriver
    ${firefox_path}         Evaluate    sys.modules['selenium.webdriver'].firefox.firefox_binary.FirefoxBinary(firefox_path='${CURDIR}/../../Webdrivers/geckodriver_0270_mac', log_file=None)   sys

    Call Method             ${firefox options}   add_argument    -headless

    Create Webdriver    Firefox    firefox_options=${firefox options}
    Set Window Size    1920    1080
    Go To          ${URL}