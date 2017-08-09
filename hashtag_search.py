

import pprint
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

print('-' *40)

print(type(X))

print('-' *40)


for key, value in X.iteritems():
    print('\t' + str(key))
    #print(type(value))
print('-'*40)
print("just for the sake of my happiness {}\n", type(X['statuses']))
for e in X['statuses']:
        pprint.pprint( e )
        print(50* '=')


for key, value in e['user'].iteritems():
    print('\t' + str(key))





