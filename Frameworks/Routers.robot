*** Settings ***
Library             SeleniumLibrary

### Import Resource ###
# Frameworks
Resource            Configs.robot


# Resource
Resource            ../Resources/Common/CommonKeywords.robot
Resource            ../Resources/Homepage/HomePage.robot
Resource            ../Resources/Login/SignInPage.robot
Resource            ../Resources/Login/ForgotPasswordPage.robot
Resource            ../Resources/Register/RegisterPage.robot