
# Write a new program in a new file to search for the following hashtags:
# Apollo11
# Fashion
# Print the type of search result
# Based on the type of the search result (list or dict), iterate through the results and print them in a human readable form.
# Checkin the new program into Github.


from twitter import Twitter, OAuth
from os.path import expanduser
import pprint
home = expanduser("~")
l = []
x = home + '/Documents/Development/Y.txt'

with open( x, 'r') as f:
    l = f.readlines()


myoauth = OAuth (l[2].strip(), l[3].strip(), l[0].strip(), l[1].strip())

myT = Twitter(auth = myoauth)
X = myT.search.tweets(q = "#Apollo11")
Y = myT.search.tweets(q = "#Fassion")

print('-' *40)

print(type(X))
print(type(Y))

print('-' *40)


for key, value in X.iteritems():
    print(key, value)
print('-'*40)


for key, value in Y.iteritems():
    print(key, value)
print('-'*40)
