*** Settings ***
Resource                ../../Frameworks/Routers.robot

*** Variables ***
#Categories Page
${title_categories}                     css=.headTitle
${description_title_categories}         css=.headDescription
${button_favorite_categories}           css=.css-ohfwcq
${button_share_categories}              css=.shareButtonWrapper
${text_sort_categories}                 css=.sortHeadTitle
${button_sort_categories}               css=div#sortingContainer
${title_movie_season_categories}        css=.css-gitfem
${description_movie_season_categories}  css=.css-33djrx
${content_card_categories}              xpath=//div[contains(@class,'carouselWrapper')]//img[contains(@class,'bannerImage')]
${title_content_card_categories}        xpath=//p[contains(@class,'title')]
${description_content_card_categories}  xpath=//p[contains(@class,'shortDesc')]
${image_logo_molatv_categories}         css=.mWx3v

#Mola Hubs All Movies
${button_sub_mola_hub}                  xpath=//div[contains(@class,'css-1wegyzv')]
${content_card_mola_hub}                xpath=//img[contains(@class,'bannerImage')]

*** Keywords ***
Go To Homepage From Movie Detail Page
    Click Element                       ${image_logo_molatv_categories}
#    Wait Until Element Is Visible       ${image_logo_molatv_categories}

Verify User Navigate To Categories Page
    Wait Until Element Is Visible       ${title_categories}
    Wait Until Element Is Visible       ${content_card_categories}
    Element Should Be Visible           ${title_categories}
    Element Should Be Visible           ${description_title_categories}
    Element Should Be Visible           ${button_favorite_categories}
    Element Should Be Visible           ${button_share_categories}
    Element Should Be Visible           ${text_sort_categories}
    Element Should Be Visible           ${button_sort_categories}
    Element Should Be Visible           ${title_movie_season_categories}
    Element Should Be Visible           ${description_movie_season_categories}
    Element Should Be Visible           ${content_card_categories}
    Element Should Be Visible           ${title_content_card_categories}
    Element Should Be Visible           ${description_content_card_categories}

Choose Movie From Categories Page
    [Arguments]  ${URL_MOVIE_2}
    Go To Movie Detail      ${URL_MOVIE_2}

Verify Go To Mola Hub All Movies
    [Arguments]  ${URL}
    Wait Until Element Is Visible       ${title_categories}
    Sleep                               3
    Element Should Be Visible           ${title_categories}
    Element Should Be Visible           ${text_sort_categories}
    Element Should Be Visible           ${button_sort_categories}
    Element Should Be Visible           ${button_sub_mola_hub}
    Element Should Be Visible           ${content_card_mola_hub}
    Location Should Be                  ${URL}

Verify Go To Mola Hub All Series
    [Arguments]  ${URL}
    Wait Until Element Is Visible       ${title_categories}
    Sleep                               3
    Element Should Be Visible           ${title_categories}
    Element Should Be Visible           ${text_sort_categories}
    Element Should Be Visible           ${button_sort_categories}
    Element Should Be Visible           ${content_card_mola_hub}
    Location Should Be                  ${URL}

Verify Go To Mola Hub HBO GO
    [Arguments]  ${URL}
    Wait Until Element IS Visible       ${title_categories}
    Sleep                               3
    Element Should Be Visible           ${title_categories}
    Element Should Be Visible           ${text_sort_categories}
    Element Should Be Visible           ${button_sort_categories}
    Element Should Be Visible           ${button_sub_mola_hub}
    Element Should Be Visible           ${content_card_mola_hub}
    Location Should Be                  ${URL}

Go Back To The Previous Page
    Go Back