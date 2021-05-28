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
${ACCOUNT_WITHDOB_HBO_EMAIL}                hbouat+2@mola.tv
${ACCOUNT_WITHDOB_HBO_PASSWORD}             crypt:jun7a7aO5luuiiW7Tokc1bo1nisb4I01+32nwKph1gm9WhryJ6L5JLQXCXHeqFaeSvJNVTky
${ACCOUNT_WITHOUTDOB_HBO_EMAIL}             hbouat+3@mola.tv
${ACCOUNT_WITHOUTDOB_HBO_PASSWORD}          crypt:jun7a7aO5luuiiW7Tokc1bo1nisb4I01+32nwKph1gm9WhryJ6L5JLQXCXHeqFaeSvJNVTky
${ACCOUNT_WITHOUTDOB_EMAIL}                 tiafathiahesty1@gmail.com
${ACCOUNT_WITHOUTDOB_PASSWORD}              crypt:eLI28vmqKS4EWz78O2F84cX9l9PtFDzM53tUrD+u9UVVW4Pgj6NYMEtkmQxg8mKAsepTmODJnhI=
${ACCOUNT_WITHOUTDOB1_EMAIL}                20187279169reza@gmail.com
${ACCOUNT_WITHOUTDOB1_PASSWORD}             crypt:i7TxWA2Y7iJBkMCPyo7rTpFAvNOykjqXaroYcPT0C2DCegtzgqECjPR6Vhi0TJ+9UFndbOZcsvH1gg==
${ACCOUNT_WITHDOB101_EMAIL}                 jerry.hartono+101@mola.tv
${ACCOUNT_WITHDOB101_PASSWORD}              crypt:k/sZy5o0MQU6mxaKYA7k/juh03frtJrsW1esMOwHimfanwRPlQVi3m6t93korXM6+z0FQejF
${ACCOUNT_WITHOUTDOB102_EMAIL}              jerry.hartono+102@mola.tv
${ACCOUNT_WITHOUTDOB102_PASSWORD}           crypt:k/sZy5o0MQU6mxaKYA7k/juh03frtJrsW1esMOwHimfanwRPlQVi3m6t93korXM6+z0FQejF

# MOLATV SUPERMOLA
${ACCOUNT_SUPERMOLA1_EMAIL}                 supermola1@sapisuper.com
${ACCOUNT_SUPERMOLA1_PASSWORD}              crypt:KmT6WjgIHVEUS62MqrD4fbJ6twkBsxTfnifEvCC4vSgihqjhFqW1LE66njNvsOISjLjN+OZzUM9GYg==
${ACCOUNT_SUPERMOLA1_WRONG_PASSWORD}        crypt:bBKtcguqXCl6C4DpoGhdNuRUTwgpufaU0GaDdbM9tgvcL4lc4rdlNOOpDra0C+vFKMK59Ov2ndcw
${ACCOUNT_SUPERMOLA2_EMAIL}                 supermola2@sapisuper.com
${ACCOUNT_SUPERMOLA2_PASSWORD}              crypt:cD3mLjfsRrTLe0KqXv8Y0Qcc9TNiO2qqr57Jrbr1tXxz5J/BnAVQiFIlX9sVG0Zqp5q7T7Mvr7J+lQ==
${ACCOUNT_SUPERMOLA2_WRONG_PASSWORD}        crypt:bBKtcguqXCl6C4DpoGhdNuRUTwgpufaU0GaDdbM9tgvcL4lc4rdlNOOpDra0C+vFKMK59Ov2ndcw
${ACCOUNT_SUPERMOLA3_EMAIL}                 supermola3@sapisuper.com
${ACCOUNT_SUPERMOLA3_PASSWORD}              crypt:/zRizVxbl0Bqg4dutt+Yl/dthOpG5YscXBnEYEh/KBD5etyhyO0TYFiI7KnThRbSxTHSToileQPegw==
${ACCOUNT_SUPERMOLA3_WRONG_PASSWORD}        crypt:bBKtcguqXCl6C4DpoGhdNuRUTwgpufaU0GaDdbM9tgvcL4lc4rdlNOOpDra0C+vFKMK59Ov2ndcw
${ACCOUNT_SUPERMOLA4_EMAIL}                 supermola4@sapisuper.com
${ACCOUNT_SUPERMOLA4_PASSWORD}              crypt:gr7+yHNWpO1ytSGJ20QdTxmeZK4/0ZRi+zsN66Q7vEQljdI4UVu80zA5t6Z4C1xzHuATWae7dmrSzA==
${ACCOUNT_SUPERMOLA5_EMAIL}                 supermola5@sapisuper.com
${ACCOUNT_SUPERMOLA5_PASSWORD}              crypt:qxlEhNGkXrG05nCPwaFpM4cI5yZzewETiu7cpAwTBXbY4XXc09Q7Dm+HH3POp0+uz+8ZUrkvN7KFtQ==
${ACCOUNT_SUPERMOLA21_EMAIL}                supermola21@sapisuper.com
${ACCOUNT_SUPERMOLA21_PASSWORD}             crypt:WH26vXuYaQg3qtpPmGRQYX+Xk+1wvuAp4mfRY5Um3Vb/vPUslWv1+Ygq7vddtdXhB+XgP9Ffjfi0Y60=
${ACCOUNT_SUPERMOLA31_EMAIL}                supermola31@sapisuper.com
${ACCOUNT_SUPERMOLA31_PASSWORD}             crypt:yhOIS7mbH0fjBj0JBg2IWbV9v4fL0FGWrF4LZHyFCDMU/twMpUpCghiOV63p3cyOJyYpNxvpipQyi5k=
${ACCOUNT_SUPERMOLA32_EMAIL}                supermola32@sapisuper.com
${ACCOUNT_SUPERMOLA32_PASSWORD}             crypt:srDVTS4vW5NVEovv5cbn3OO5tY30ZAg28pNqXA1/9BFXMJ58i730BcT//Ns4zrpY5mt2AoM5tqCWOns=
${ACCOUNT_SUPERMOLA50_EMAIL}                supermola50@sapisuper.com
${ACCOUNT_SUPERMOLA50_PASSWORD}             crypt:c1kkCyaNkWfVK8qtqEZkUbYdZmPkv3uXRUSYtrt4wQXeh5lt2WY75W8JfpcJUkUCWjPmP7ZyT5ABPH0=
${ACCOUNT_SUPERMOLA69_EMAIL}                supermola69@sapisuper.com
${ACCOUNT_SUPERMOLA69_PASSWORD}             crypt:MM+vec3KbD0W9BEd4zqk7iKinbex3BbgKmEzPJqZ+gFFQmgiOZFlrOVcdCYFH1zr8lRkud2Ip1PnyJY=
${ACCOUNT_SUPERMOLA690_EMAIL}               supermola690@sapisuper.com
${ACCOUNT_SUPERMOLA690_PASSWORD}            crypt:ZL6sMTcvOQFqRNw5ZKpz+Kl1K2zYJrnqy2AZndwu7G5oeDa1AGS5kUBxVe/8v1hjdOid7Eebo7gHiX6q
${ACCOUNT_SUPERMOLA690_USERID}              molasuper690
${ACCOUNT_SUPERMOLA6969_EMAIL}              supermola6969@sapisuper.com
${ACCOUNT_SUPERMOLA6969_PASSWORD}           crypt:4VFxBwnOOQw3sxnUQME8nb+59erir4kXLmT05maGLUVWAQ/u1BeTQ0OXalgAjHWf9rxmsEeyClIMxHXAtQ==
${ACCOUNT_SUPERMOLA6969_USERID}             molasuper6969
${ACCOUNT_SUPERMOLA69690_EMAIL}             supermola69690@sapisuper.com
${ACCOUNT_SUPERMOLA69690_PASSWORD}          crypt:GaMkyH2cgto+0tDgZ6hoUQEmz84sWIwK9Xzt1VC0mE06+XfukwYvvA1Fr+UUw4aYpAu5a7DwEJWyGVLWnH8=
${ACCOUNT_SUPERMOLA69690_USERID}            molasuper69690


# BANNED ACCOUNTS
${ACCOUNT_BANNED_EMAIL}                     supermola100@sapisuper.com
${ACCOUNT_BANNED_PASSWORD}                  crypt:XQwEwrK/5N8QGhGRg+heC5ZYKUuQ8UnicRmFEyF9uhQW6mJqF32fPqKZdtWrXQCLh/Zx8nEx45oSYkO2

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
${ACCOUNTS_MOLA_TESTING4_PASSWORD}          crypt:uVUCP5W8rBl3lD0Y9hbDQVyeSIV2CpClxSai+eejTjRxGKakZzrWZAP5R3KkGOYZYSAPijlW/U9J2JsN
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