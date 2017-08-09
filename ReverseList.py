

import random


originalList =[]
for i in range(10):
	originalList.append(random.randint(1,100))
print(originalList)

#--------------------------------------------------------

def revfunction():
	reverseList =[]
	for i in range(len(originalList)):
		reverseList.append(originalList[len(originalList) - i -1])

	return(reverseList)
#---------------------------------------------------------
print('Please see below the reverse list: ')

ModifList = revfunction()

print(ModifList)

