

import random


listA =[]
for i in range(10):
	listA.append(random.randint(1,100))
print(listA)

#--------------------------------------------------------

def reverselist():
	listB =[]
	for i in range(len(listA)):
		listB.append(listA[len(listA) - i -1])

	return(listB)
#---------------------------------------------------------
print('Please see below the reverse list: ')

print(reverselist())

