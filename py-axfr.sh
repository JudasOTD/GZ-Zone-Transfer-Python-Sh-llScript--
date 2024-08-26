#!/usr/bin/python3
import os
import sys



print('[*]', "  Zone Transfer [AXFR]")
print('[*]', "  Usage: ", sys.argv[0], ' + ', "DOMAIN")

if len(sys.argv) == 1:
    # Checks if domain name is supplied as parameter
    print("\nNo arguments!")
else:
    cm = 'for sv in $(host -t ANY ' +sys.argv[1] + ' | cut -d " " -f4); do \nhost -l ' +sys.argv[1] + ' $sv | grep "has addr"\ndone'
    print('[!]', "Searching records for domain: ", sys.argv[1], "\n")

    
    #  Command limited to Linux $ENV
    os.system(cm)
    os.system('echo $?')

