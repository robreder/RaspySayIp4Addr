#!/usr/bin/env python3

from time import sleep
from espeak import espeak  # apt install python3-espeak

def sayChar(word):
    ''' say a number word or dot '''

    if isinstance(word, str) and len(word) > 0:    
        c = word[0]
        if ord(c) >= ord('0') and ord(c) <= ord('9'):
            # output of digit
            espeak.synth(c)
        elif c == '.':
            espeak.synth('dot')
        else:
            print("")
        sleep(1)

def sayWord(word):
    if isinstance(word, str):
        for c in word:
            sayChar(c)

try:
    
    import netifaces
    for interface in netifaces.interfaces():
        if netifaces.AF_INET in netifaces.ifaddresses(interface):
            for link in netifaces.ifaddresses(interface)[netifaces.AF_INET]:
               if link['addr'] != None:
                   print (link['addr']) 
                   sayWord("...")
                   sayWord(link['addr'])
           
    
    print("Okay")

finally:
    print('Ende')
    