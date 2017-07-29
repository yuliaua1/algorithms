# This is a simple program to generate a random list of integers as stated below

import random

randomList = []

for i in range(20):
    randomList.append(random.randint(1, 50))
print(randomList)

#This is creating the list using list comprehensions
randomList = [ random.randint(1, 50) for i in range(20) ]

print(randomList)
