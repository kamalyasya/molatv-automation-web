*** Settings ***
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${button_device_management_edit}                xpath=//input[@name='edit']/parent::div
${button_device_management_remove_device}       id=react-select-2-option-0
${button_device_management_delete}              xpath=//button[normalize-space()='Delete']

*** Keywords ***
Remove Device
        Run Keyword And Continue On Failure          Wait Until Element Is Visible               ${button_device_management_edit}
        Run Keyword And Continue On Failure          Click Element                               ${button_device_management_edit}

        Run Keyword And Continue On Failure          Wait Until Element Is Visible               ${button_device_management_remove_device}
        Run Keyword And Continue On Failure          Click Element                               ${button_device_management_remove_device}

        Run Keyword And Continue On Failure          Wait Until Element Is Visible               ${button_device_management_delete}
        Run Keyword And Continue On Failure          Click Element                               ${button_device_management_delete}

        Sleep    1