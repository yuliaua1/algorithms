# this program is to connect to Twitter resources.

import twitter
from os.path import expanduser

home = expanduser("~")
l = []
x = home + '/Documents/Development/Y.txt'

with open( x, 'r') as f:
    l = f.readlines()

tapi = twitter.Api(consumer_key=l[0].strip(),
                      consumer_secret=l[1].strip(),
                      access_token_key=l[2].strip(),
                      access_token_secret=l[3].strip())


taccountholderFriends = tapi.GetFriends()
print (taccountholderFriends)

#status = taccountholderapi.PostUpdate('place holder')
#print(status.text)