
import random
import string

L  = []
for i in range(20):
	L.append(random.choice(string.ascii_lowercase))

print(L)


letterOccured = {}

for myLetter in L:
	if myLetter not in letterOccured:
		letterOccured[myLetter] = 0
	letterOccured[myLetter] = letterOccured[myLetter] + 1



print(letterOccured)


myRandomLetter = []
for key, value in letterOccured.iteritems():

    if value == 1:
        myRandomLetter.append(key)
print(str(myRandomLetter) + '>>>>>> letters occurring one time.')
