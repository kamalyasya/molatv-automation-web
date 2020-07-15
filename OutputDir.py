import datetime
import os

time = datetime.datetime.now().strftime("%Y-%m-%d_%H-%M-%S")

dirpath = str(time)

if not os.path.exists(dirpath):
    os.makedirs(dirpath)

print('--outputdir ' + dirpath)

# robot -d Results/$(date +%Y%m%d-%H-%M-%S) Tests/