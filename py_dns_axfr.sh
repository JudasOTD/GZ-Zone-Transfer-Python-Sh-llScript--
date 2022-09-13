#!/usr/bin/python3
import sys
import os

print('[****]', "AXFR ZONE TRANSFER - script.py")
print('[**]', 'Usage: ', sys.argv[0], " + ", '[DOMAIN_NAME]')


if len(sys.argv) == 1:
    # Checks if domain name is supplied as parameter
    print('\nNO Arguments!')
else:
    # Command is limited to Linux environments  only
    cm = 'for sv in $(host -t ANY ' + sys.argv[1] + ' | cut -d " " -f4); do \nhost -l ' + sys.argv[1] + ' $sv |grep "has addr"\ndone'
    print('\nScript running for domain: ', sys.argv[1])
# Comment
    os.system(cm)
    os.system('echo $!')
