*** Settings ***
Library         	    SeleniumLibrary
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${logo_homepage_molatv}                 css=._3v45A .fadeIn
${menu_homepage_featured}               css=a[title='Featured'] > div[title='Featured']
${menu_homepage_movies}                 css=a[title='Movies'] > div[title='Movies']
${menu_homepage_living}                 css=a[title='Living'] > div[title='Living']
${menu_homepage_sports}                 css=a[title='Sports'] > div[title='Sports']
${menu_homepage_kids}                   css=a[title='Kids'] > div[title='Kids']
${menu_homepage_games}                  css=a[title='Games'] > div[title='Games']
${menu_homepage_live_schedule}          css=a[title='Live Schedule'] > div[title='Live Schedule']
${menu_homepage_beli_paket}             css=a[title='Beli Paket Berlangganan'] > div[title='Beli Paket Berlangganan']
${button_homepage_account}              css=.ncb37
${text_homepage_account_email}          css=.lQ9ux

*** Keywords ***
