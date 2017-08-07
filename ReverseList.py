
import random

assigned_length = 10

Random_list = []
for i in range(assigned_length):
	Random_list.append(random.randint(1, 100))
print(Random_list)

print("The list of random numbers is " + str(assigned_length))



def reverse_list(assigned_length):

	for i in range(assigned_length/2):
		tempBox = Random_list[i]
		Random_list[i] = Random_list[assigned_length - 1- i]
		Random_list[assigned_length-1-i] = tempBox
	print(Random_list)

reverse_list(assigned_length)