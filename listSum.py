# This assignment is to:
#
# create a list of random numbers between 1 to 20
# Size of the list is 10
# print the list
# print the sum of numbers
# write the program as listSum.py and check in to github.

import random

randomList = []
sumNumbers = 0

for i in range(10):
    randomList.append(random.randint(1,20))
    sumNumbers = sumNumbers + randomList[i]

print(randomList)
print(sumNumbers)