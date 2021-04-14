# molatv-automation-web
#### Mola TV Web Browser Automation Test 
### Installation
```sh
pip3 install robotframework==4.0
pip3 install robotframework-pabot==1.11
pip3 install robotframework-seleniumlibrary
pip3 install robotframework-crypto
pip3 install robotframework-jsonlibrary
pip3 install robotframework-requests
pip3 install pyotp
```

##### Configure robotframework-crypto
```sh
python3 -m CryptoLibrary
Open config > Configure key pair > Set key pair from string > Input JSON of key (Check pinned message at slack team-te)
Open config > Configure public key > Set public key from string > Input public key (Check pinned message at slack team-te)

```

### Running Test
```sh
cd molatv-automation-web
robot -d Results Tests/DesktopWeb
```

### Running In Parallel Test
```sh
cd molatv-automation-web
pabot --processes 3 --testlevelsplit -d Results Tests/DesktopWeb/
```

### Full Commands
```sh
cd molatv-automation-web
pabot --processes 3 --testlevelsplit -d Results Tests/DesktopWeb/

pabot --processes 3 --testlevelsplit --variable BROWSER:mychrome -d Results -o output.xml -l log.html -r report.html Tests/DesktopWeb/

pabot --processes 3 --testlevelsplit --variable BROWSER:mychrome --rerunfailed Results/output.xml -d Results -o output2.xml -l log2.html -r report2.html Tests/DesktopWeb/

rebot --merge -d Results -o output.xml -l log.html -r report.html Results/output.xml Results/output2.xml
```

### Verified Suites :
```sh
Security
    - About.robot
    - LoginWithoutPhoneNumber.robot

Delivery
    - ?

Engagement
    - ?

Commercial
    - ?
```
