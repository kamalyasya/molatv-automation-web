*** Settings ***
Resource                ../../../Frameworks/Routers.robot
Library         	    SeleniumLibrary

Test Timeout            ${DEFAULT_TEST_TIMEOUT}
Test Setup              CommonKeywords.Start Testing       ${URL}
Test Teardown           CommonKeywords.End Testing

*** Variables ***
${URL}				                     https://mola.tv/

${EMAIL_INVALID_FORMAT}                  @xxx.com
${EMPTY_PASSWORD}

*** Test Cases ***
TC001 Email Format
    [Documentation]  Email validity check
	[Tags]  Regression  Smoke

	HomePage.Open Login Page
    SignInPage.Login Using Credentials             ${EMAIL_INVALID_FORMAT}                  ${EMPTY_PASSWORD}
    Verify Format Email Salah Message is show up
