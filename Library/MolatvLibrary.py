from robot.api.deco import keyword
from datetime import datetime
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

    @keyword
    def get_time_to_seconds(self, time_str):
        """Get Seconds from time."""

        type_str = time_str.split(':')
        length = len(type_str)

        if length == 3:
            h, m, s = time_str.split(':')
            total_seconds = int(h) * 3600 + int(m) * 60 + int(s)
            return total_seconds
        elif length == 2:
            m, s = time_str.split(':')
            total_seconds = int(m) * 60 + int(s)
            return total_seconds

    def get_time_type(self, time_str):
        """Get Time type, '%H:%M:%S' or '%M:%S'"""
        type_str = time_str.split(':')
        length = len(type_str)

        if length == 3:
            fmt = '%H:%M:%S'
            return fmt
        elif length == 2:
            fmt = '%M:%S'
            return fmt
        else:
            print("Invalid type time")

    @keyword
    def compare_time(self, time_1, time_2):
        type_time_1 = self.get_time_type(time_1)
        type_time_2 = self.get_time_type(time_2)

        time1 = datetime.strptime(time_1, type_time_1).time()
        time2 = datetime.strptime(time_2, type_time_2).time()

        if time1 > time2:
            status = "time_decreased"
            time_diff = datetime.strptime(time_1, type_time_1) - datetime.strptime(time_2, type_time_2)
        elif time1 < time2:
            status = "time_increased"
            time_diff = datetime.strptime(time_2, type_time_2) - datetime.strptime(time_1, type_time_1)
        elif time1 == time2:
            status = "time_equal"
            time_diff = datetime.strptime(time_1, type_time_1) - datetime.strptime(time_2, type_time_2)

        return status, time_diff