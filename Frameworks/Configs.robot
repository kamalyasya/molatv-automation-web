#*** Variables ***
#${BROWSER}              chrome
#${DEFAULT_TIMEOUT}      20
#${DELAY}                0.2

#Tempel Disini Untuk Privet Key Nya

#*** Settings ***
#Resource    imports.resource
#Library     CryptoLibrary    %{private_key_password}    variable_decryption=False
##private key which should be secret, should also be protected by a password

*** Variables ***
${BROWSER}              chrome
${DEFAULT_TIMEOUT}      20
${DELAY}                0.2

${secret}=     KILL ALL HUMANS!!!
#${enc_user}=   crypt:nkpEPOVKfOko3t04XxOupA+F/ANTEuR9aQuPaPeMBGBQenwYf6UNESEl9MWRKGuj60ZWd10=
${enc_pwd}=    crypt:42VnLrYMMI6e1g8UEJlkFwwPdt0wU4xrsSV7bJ5XvSOpPhW2nxgtJzqoiTHrYobR4wx1fEgrGK8=

#*** Test Cases ***
#Valid Login
#    Open Browser    ${BASE-URL}
#    Suppress Logging                                  #disable Robot Framework logging
#    ${var}=    set Variable   ${secret}
#    Log    ${var}
#    Unsuppress Logging                                #enable Robot Framework logging
#    ${user}=    Get Decrypted Text    ${enc_user}     #decrypts cipher text and returns plain text
#    Input Text      id:input_username    ${user}
#    ${password}=    Get Decrypted Text    ${enc_pwd}  #decrypts cipher text and returns plain text
#    Input Password    id:input_password    ${password}
#    Click Button    id:button_login
#    Page Should Contain Element    //a[text()='Logout']
#    [Teardown]   Close Browser