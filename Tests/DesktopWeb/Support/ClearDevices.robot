*** Settings ***
Resource                ../../../Frameworks/Routers.robot

Test Timeout            ${LONG_TEST_TIMEOUT}
Test Teardown           Close All Browsers

*** Variables ***
${URL}				                                        ${HOST}

*** Test Cases ***
Clear Device On HBO Account
    [Documentation]  Clear Device Management
	[Tags]  Smoke
    Clear Devices On Device Management      ${ACCOUNTS_HBO_EMAIL}       ${ACCOUNTS_HBO_PASSWORD}
    Skip

Clear Device On Cincin Account
    [Documentation]  Clear Device Management
	[Tags]  Smoke
    Clear Devices On Device Management      ${ACCOUNT_CINCIN_EMAIL}     ${ACCOUNT_CINCIN_PASSWORD}
    Skip

Clear Device On Kamal Account
    [Documentation]  Clear Device Management
	[Tags]  Smoke
    Clear Devices On Device Management      ${ACCOUNT_KAMAL_EMAIL}      ${ACCOUNT_KAMAL_PASSWORD}
    Skip

Clear Device On Putra Account
    [Documentation]  Clear Device Management
	[Tags]  Smoke
    Clear Devices On Device Management      ${ACCOUNT_PUTRA_EMAIL}      ${ACCOUNT_PUTRA_PASSWORD}
    Skip