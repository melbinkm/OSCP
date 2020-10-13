#!/usr/bin/python

import subprocess 
print "Starting ping sweep on 10.11.1.0/24"
print "These IPs are up"

for i in range(1, 254):
        ip = "10.11.1." + str(i)
        result = subprocess.call(['ping', '-c', '1', ip], stdout=subprocess.PIPE)
        if result == 0:
            print ip
