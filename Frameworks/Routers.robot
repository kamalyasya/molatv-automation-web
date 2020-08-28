*** Settings ***
Library             SeleniumLibrary

### Import Resource ###
# Frameworks
Resource            Configs.robot

# Resource
Resource            ../Resources/Accounts/ProfilePage.robot
Resource            ../Resources/Common/CommonKeywords.robot
Resource            ../Resources/Data/Accounts.robot
Resource            ../Resources/Homepage/HomePage.robot
Resource            ../Resources/Homepage/PrivacyPage.robot
Resource            ../Resources/Homepage/TermsConditionsPage.robot
Resource            ../Resources/Inbox/InboxPage.robot
Resource            ../Resources/Login/ForgotPasswordPage.robot
Resource            ../Resources/Login/LoginFacebookPage.robot
Resource            ../Resources/Login/LoginGooglePage.robot
Resource            ../Resources/Login/OtpPage.robot
Resource            ../Resources/Login/SignInPage.robot
Resource            ../Resources/Register/RegistrationPage.robot
Resource            ../Resources/Subscription/SubscriptionPackagePage.robot
Resource            ../Resources/Video_Player/MovieDetailPage.robot
Resource            ../Resources/Video_Player/VideoPlaybackWithoutSignIn.robot