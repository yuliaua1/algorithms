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

# variable to connect to Twitter API
myT = Twitter(auth = myoauth)
#------------------------ function to search hashtag --------------------------
def searchHashtag(hashtagX):
# variable to hold results of the search by hashtag
    X = myT.search.tweets(q = hashtagX)

# iterate through the statuses to capture description for each user
    print(100 * '=')
    print(15*'=' + '  The list of the user description for the hashtag {} is: '.format(hashtagX) + '     ' + 15 * "=")
    print(100 * '=')
    counter = 0
    for e in X['statuses']:
        counter += 1
        userDictionary = e['user']
        userDescription = userDictionary['description']
        print(str(counter)+'\t\t' + userDescription)
#------------------------------- End of Function --------------------------------


#searchHashtag('#Fashion')
#searchHashtag('#Apollo11')
searchHashtag('#Kids')







