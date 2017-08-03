# This is a simple program to generate a random list of integers as stated below

import random

def genList(s):
    randomList = []

    for i in range(s):
        randomList.append(random.randint(1, 50))
    return randomList

print(genList(30))

#This is creating the list using list comprehensions
#randomList = [ random.randint(1, 50) for i in range(20) ]
#print(randomList)


