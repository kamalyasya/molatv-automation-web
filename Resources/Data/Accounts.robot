*** Settings ***
Resource                ../../Frameworks/Routers.robot

*** Variables ***
# MOLATV TESTER
${ACCOUNT_CINCIN_EMAIL}                     cincin.jati@mola.tv
${ACCOUNT_CINCIN_PASSWORD}                  crypt:eLI28vmqKS4EWz78O2F84cX9l9PtFDzM53tUrD+u9UVVW4Pgj6NYMEtkmQxg8mKAsepTmODJnhI=
${ACCOUNT_PUTRA_EMAIL}                      putra.pratama@mola.tv
${ACCOUNT_PUTRA_PASSWORD}                   crypt:eLI28vmqKS4EWz78O2F84cX9l9PtFDzM53tUrD+u9UVVW4Pgj6NYMEtkmQxg8mKAsepTmODJnhI=
${ACCOUNT_KAMAL_EMAIL}                      kamal.yasha@mola.tv
${ACCOUNT_KAMAL_PASSWORD}                   crypt:gYbeIMt3uRodrQpdJ5RNtSOhhpoPlNMuX3FdnSqxoSTDbii7kThhCp1Sz+cIe04lwBUiNKDlz9Fs+g==
${ACCOUNT_KAMAL_USERID}                     pwFSHwlYciO9cN8unZAvdZRWcTIKZf
${ACCOUNT_JERRY_EMAIL}                      jerry.hartono@mola.tv
${ACCOUNT_JERRY_PASSWORD}                   crypt:5IEnYsHc2CKFfYvXC95/c8PtaybQjpPbylRf1nE/nG7C0PL1cPSYDQDxnOdL1azIkHPB2c9UTx8=
${ACCOUNT_MIA_EMAIL}                        testmiaakun1+18a@gmail.com
${ACCOUNT_MIA_VALID_PASSWORD}               crypt:k/sZy5o0MQU6mxaKYA7k/juh03frtJrsW1esMOwHimfanwRPlQVi3m6t93korXM6+z0FQejF
${ACCOUNT_MIA_WRONG_PASSWORD}               crypt:W4U1hKCJUF1jLFjT9Krhu3P5fRynJnVGWwDWUJJKFwTBSXGsFdSHF2cDHlpLmoYXQ0ydx+Vpw7Md
${ACCOUNT_MIA2_EMAIL}                       yeremia.ayunda@mola.tv
${ACCOUNT_MIA2_PASSWORD}                    crypt:k/sZy5o0MQU6mxaKYA7k/juh03frtJrsW1esMOwHimfanwRPlQVi3m6t93korXM6+z0FQejF
${ACCOUNT_GANGGA_EMAIL}                     reza.gangga@mola.tv
${ACCOUNT_GANGGA_PASSWORD}                  crypt:i7TxWA2Y7iJBkMCPyo7rTpFAvNOykjqXaroYcPT0C2DCegtzgqECjPR6Vhi0TJ+9UFndbOZcsvH1gg==
${ACCOUNT_ZAKI_EMAIL}                       zaki@mola.tv
${ACCOUNT_ZAKI_PASSWORD}                    crypt:aea7D1yrfcNxS7lYdfDkh9fPnXntGJvHxhCQO8oe7i6k7fx1IbBCxHXBTZABRyAIxbfcHB33nMk40w==
${ACCOUNT_UNREGISTERED}                     cincincin@mola.tv
${ACCOUNT_UNREGISTERED_PASSWORD}            crypt:JQMRvNqbGergBgQDA86cqSs8K7ZlOTyvY1edJASF6z3bvvxfJtXFtgZ5lmt+Ib3uHCQQlO+w
${ACCOUNT_WITHDOB_EMAIL}                    tiafathiahesty@gmail.com
${ACCOUNT_WITHDOB_PASSWORD}                 crypt:eLI28vmqKS4EWz78O2F84cX9l9PtFDzM53tUrD+u9UVVW4Pgj6NYMEtkmQxg8mKAsepTmODJnhI=
${ACCOUNT_WITHOUTDOB_EMAIL}                 tiafathiahesty1@gmail.com
${ACCOUNT_WITHOUTDOB_PASSWORD}              crypt:eLI28vmqKS4EWz78O2F84cX9l9PtFDzM53tUrD+u9UVVW4Pgj6NYMEtkmQxg8mKAsepTmODJnhI=
${ACCOUNT_WITHDOB101_EMAIL}                 jerry.hartono+101@mola.tv
${ACCOUNT_WITHDOB101_PASSWORD}              crypt:k/sZy5o0MQU6mxaKYA7k/juh03frtJrsW1esMOwHimfanwRPlQVi3m6t93korXM6+z0FQejF
${ACCOUNT_WITHOUTDOB102_EMAIL}              jerry.hartono+102@mola.tv
${ACCOUNT_WITHOUTDOB102_PASSWORD}           crypt:k/sZy5o0MQU6mxaKYA7k/juh03frtJrsW1esMOwHimfanwRPlQVi3m6t93korXM6+z0FQejF

# MOLATV SUPERMOLA
${ACCOUNT_SUPERMOLA1_EMAIL}                 supermola1@sapisuper.com
${ACCOUNT_SUPERMOLA1_PASSWORD}              sapisuper1
${ACCOUNT_SUPERMOLA1_WRONG_PASSWORD}        sapisuper
${ACCOUNT_SUPERMOLA2_EMAIL}                 supermola2@sapisuper.com
${ACCOUNT_SUPERMOLA2_PASSWORD}              sapisuper2
${ACCOUNT_SUPERMOLA2_WRONG_PASSWORD}        sapisuper
${ACCOUNT_SUPERMOLA3_EMAIL}                 supermola3@sapisuper.com
${ACCOUNT_SUPERMOLA3_PASSWORD}              sapisuper3
${ACCOUNT_SUPERMOLA3_WRONG_PASSWORD}        sapisuper
${ACCOUNT_SUPERMOLA4_EMAIL}                 supermola4@sapisuper.com
${ACCOUNT_SUPERMOLA4_PASSWORD}              sapisuper4
${ACCOUNT_SUPERMOLA5_EMAIL}                 supermola5@sapisuper.com
${ACCOUNT_SUPERMOLA5_PASSWORD}              sapisuper5
${ACCOUNT_SUPERMOLA21_EMAIL}                supermola21@sapisuper.com
${ACCOUNT_SUPERMOLA21_PASSWORD}             sapisuper21
${ACCOUNT_SUPERMOLA31_EMAIL}                supermola31@sapisuper.com
${ACCOUNT_SUPERMOLA31_PASSWORD}             sapisuper31
${ACCOUNT_SUPERMOLA32_EMAIL}                supermola32@sapisuper.com
${ACCOUNT_SUPERMOLA32_PASSWORD}             sapisuper32
${ACCOUNT_SUPERMOLA50_EMAIL}                supermola50@sapisuper.com
${ACCOUNT_SUPERMOLA50_PASSWORD}             sapisuper50
${ACCOUNT_SUPERMOLA69_EMAIL}                supermola69@sapisuper.com
${ACCOUNT_SUPERMOLA69_PASSWORD}             sapisuper69
${ACCOUNT_SUPERMOLA690_EMAIL}               supermola690@sapisuper.com
${ACCOUNT_SUPERMOLA690_PASSWORD}            sapisuper690
${ACCOUNT_SUPERMOLA690_USERID}              molasuper690
${ACCOUNT_SUPERMOLA6969_EMAIL}              supermola6969@sapisuper.com
${ACCOUNT_SUPERMOLA6969_PASSWORD}           sapisuper6969
${ACCOUNT_SUPERMOLA6969_USERID}             molasuper6969
${ACCOUNT_SUPERMOLA69690_EMAIL}             supermola69690@sapisuper.com
${ACCOUNT_SUPERMOLA69690_PASSWORD}          sapisuper69690
${ACCOUNT_SUPERMOLA69690_USERID}            molasuper69690


# BANNED ACCOUNTS
${ACCOUNT_BANNED_EMAIL}                     supermola100@sapisuper.com
${ACCOUNT_BANNED_PASSWORD}                  sapisuper100

# GOOGLE ACCOUNTS
${ACCOUNT_GOOGLE_EMAIL}                     molatv.tester@gmail.com
${ACCOUNT_GOOGLE_PASSWORD}                  crypt:sIbMIdtAYFhUQyBrHEuPQW/vj6NbrWKfnytDfWgQLVZdGW1q1XxBQ2B7wk5gzcYHH0etBQPZWtk=

# FACEBOOK ACCOUNTS
${ACCOUNT_FACEBOOK_EMAIL}                   cincin.jati+fb@tokopedia.com
${ACCOUNT_FACEBOOK_PASSWORD}                crypt:mSCthBUwOKDxh0bx5qEUfG4udyT2gYZFOtqcMITwBU1uP+KMLJ/VLz2MxOhZYZPzRbbYEv8YuAu1

# HBO SHARING ACCOUNTS
${ACCOUNTS_HBO_EMAIL}                       t.hbo@mola.tv
${ACCOUNTS_HBO_PASSWORD}                    crypt:MT2ktPPC4mb4OvqnoJdxIgFUveOX6DUVvV7qlO9pjnYwxii8JicVUfj+1mL8oPs7T91wryNP7NU=
${ACCOUNTS_HBO_USERID}                      oh3LPpxcczo0n6V7P5hHZ9MvfAv3xJ
${ACCOUNTS_MOLA_TESTING14_EMAIL}            molatesting14@gmail.com
${ACCOUNTS_MOLA_TESTING14_PASSWORD}         crypt:6E+hXB4+6Qsy7OvJuX6HT1mdgu/6ZiW72FIMWITFdy5r1JwLZlzf5XWrApuHNg11IaWaUS0wrzTVUVPj

# HBO TE ACCOUNTS
${ACCOUNTS_MOLA_TESTING4_EMAIL}             molatesting4@gmail.com
${ACCOUNTS_MOLA_TESTING4_PASSWORD}          12345678test
${ACCOUNTS_MOLA_TESTING15_EMAIL}            molatesting15@gmail.com
${ACCOUNTS_MOLA_TESTING15_PASSWORD}         crypt:6E+hXB4+6Qsy7OvJuX6HT1mdgu/6ZiW72FIMWITFdy5r1JwLZlzf5XWrApuHNg11IaWaUS0wrzTVUVPj
${ACCOUNTS_MOLA_TESTING16_EMAIL}            molatesting16@gmail.com
${ACCOUNTS_MOLA_TESTING16_PASSWORD}         crypt:BLkUV1PfLXucFrnDILNUS0YoSDpA+DsCGPz4iQ7d0Qg4XOOqLnmi9DjFcWE3EgGc8Jfx3lVQM+Cc9e8=
${ACCOUNTS_MOLA_TESTING17_EMAIL}            molatesting17@gmail.com
${ACCOUNTS_MOLA_TESTING17_PASSWORD}         crypt:6E+hXB4+6Qsy7OvJuX6HT1mdgu/6ZiW72FIMWITFdy5r1JwLZlzf5XWrApuHNg11IaWaUS0wrzTVUVPj
${ACCOUNTS_MOLA_TESTING18_EMAIL}            molatesting18@gmail.com
${ACCOUNTS_MOLA_TESTING18_PASSWORD}         crypt:6E+hXB4+6Qsy7OvJuX6HT1mdgu/6ZiW72FIMWITFdy5r1JwLZlzf5XWrApuHNg11IaWaUS0wrzTVUVPj
${ACCOUNTS_MOLA_TESTING19_EMAIL}            molatesting19@gmail.com
${ACCOUNTS_MOLA_TESTING19_PASSWORD}         crypt:6E+hXB4+6Qsy7OvJuX6HT1mdgu/6ZiW72FIMWITFdy5r1JwLZlzf5XWrApuHNg11IaWaUS0wrzTVUVPj
${ACCOUNTS_MOLA_TESTING20_EMAIL}            molatesting20@gmail.com
${ACCOUNTS_MOLA_TESTING20_PASSWORD}         crypt:6E+hXB4+6Qsy7OvJuX6HT1mdgu/6ZiW72FIMWITFdy5r1JwLZlzf5XWrApuHNg11IaWaUS0wrzTVUVPj
${ACCOUNTS_MOLA_TESTING21_EMAIL}            molatesting21@gmail.com
${ACCOUNTS_MOLA_TESTING21_PASSWORD}         crypt:6E+hXB4+6Qsy7OvJuX6HT1mdgu/6ZiW72FIMWITFdy5r1JwLZlzf5XWrApuHNg11IaWaUS0wrzTVUVPj