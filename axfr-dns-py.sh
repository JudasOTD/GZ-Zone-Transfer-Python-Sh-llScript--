#!/usr/bin/python3
import sys
import os


print('[*****]', "AXFR Zone Transfer - Script.py")
print('[*]', "Usage: ", sys.argv[0], ' + ', "[DOMAIN_NAME]")

if len(sys.argv) == 1:
    # Checks if domain name is supplied as parameter
    print('N\\A')
    print('\nNo arguments!')
else:
    cm = 'for sv in $(host -t ANY ' +sys.argv[1] + ' | cut -d " " -f4); do \nhost -l ' +sys.argv[1] + ' $sv |grep "has addr"\ndone'
    print("\nRunning for domain: ", sys.argv[1])
    # Command is limited to Linux environments  only
    os.system(cm)
    os.system('echo $?')

