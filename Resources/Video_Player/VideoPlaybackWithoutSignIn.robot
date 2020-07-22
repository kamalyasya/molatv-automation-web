*** Settings ***
Library             SeleniumLibrary
Resource            ../../Frameworks/Routers.robot

*** Variables ***
${menu_movies}                      css=a[title='Movies'] > div[title='Movies']
${button_movies_categories}         css=a:nth-of-type(1) > ._1Ch51.css-tqv6h2.imageWrapper.loaded
${button_garsel}                    css=.css-1rwwe5j > div:nth-of-type(2) > div:nth-of-type(1) .css-11xe1ut.css-dzdbuq.slider > .slider-frame > .slider-list > .slide-current.slide-visible.slider-slide .css-tqv6h2.imageWrapper.loaded > .imageBorder
${title_garselep1}                  css=div:nth-of-type(1) > .css-g2tceo > .title
${button_select_movies_garselep1}   css=div:nth-of-type(1) > .css-g2tceo > .css-rh1xgi > .css-tqv6h2.imageWrapper.loaded > .imageBorder
${login_blocker_garselep1}          css=.css-2m3anb > p

*** Keywords ***
Select an asset for video playback (Live/Reply/Movie)
    Wait Until Element Is Visible   ${menu_movies}
    Click Element                   ${menu_movies}

    Wait Until element Is Visible   ${button_movies_categories}
    Click Element                   ${button_movies_categories}

    Wait Until Element Is Visible   ${button_garsel}
    Click Element                   ${button_garsel}

    Wait Until Element Is Visible   ${title_garselep1}
    Click Element                   ${button_select_movies_garselep1}

Start video playback
    Wait Until Element Is Visible   ${login_blocker_garselep1}