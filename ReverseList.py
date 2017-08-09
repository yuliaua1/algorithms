

import random


originalList =[]
for i in range(10):
	originalList.append(random.randint(1,100))


#--------------------------------------------------------
def revfunction():
	tempRevList =[]
	for i in range(len(originalList)):
		tempRevList.append(originalList[len(originalList) - i -1])

	return(tempRevList)
#----------------------------------------------------------

reverseList = revfunction()

print('Please see below the original list: ')
print(originalList)
print('Please see below the reverse list: ')
print(reverseList)

