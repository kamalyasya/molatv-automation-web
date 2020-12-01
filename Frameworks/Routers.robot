*** Settings ***
Library     SeleniumLibrary     plugins=CryptoLibrary.Plugin

### Import Resource ###
# Frameworks
Resource            Configs.robot

# Resource
Resource            ../Resources/Accounts/FavoritePage.robot
Resource            ../Resources/Accounts/ProfilePage.robot
Resource            ../Resources/AgeRestriction/AgeRestrictionPage.robot
Resource            ../Resources/Browse/MovieSeriesPage.robot
Resource            ../Resources/Common/Browsers.robot
Resource            ../Resources/Common/CommonKeywords.robot
Resource            ../Resources/Data/Accounts.robot
Resource            ../Resources/Hbo/HboContentRestriction.robot
Resource            ../Resources/Hbo/HboPlayback.robot
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
Resource            ../Resources/Search/SearchPage.robot
Resource            ../Resources/SessionRestriction/SessionRestrictionPage.robot
Resource            ../Resources/Settings/SettingsPage.robot
Resource            ../Resources/Subscription/SubscriptionPackagePage.robot
Resource            ../Resources/Subscriptions/SubscriptionPage.robot
Resource            ../Resources/UserBanning/UserBanningPage.robot
Resource            ../Resources/Video_Player/MovieDetailPage.robot