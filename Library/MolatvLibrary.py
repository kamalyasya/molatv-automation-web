from robot.api.deco import keyword
import pyotp

ROBOT_AUTO_KEYWORDS = False

class MolatvLibrary :

    @keyword
    def get_totp(self, Secret):
        digits  = 8
        period  = 30
        totp    = pyotp.TOTP(s=Secret, digits=digits, interval=period)
        key     = totp.now()
        return key
        """
        Required -> https://pypi.org/project/pyotp/
        Install  -> pip install pyotp
        
        This keyword is used for generated xtotp for watermark in Video Player.
        Its require secret, digits, interval.
        Default configs :
         - digits = 8
         - period = 30
         
         Usage :
         Variable       Keyword         SecretKey
         ${TOTP}        GET TOTP        ${KEY}
         """