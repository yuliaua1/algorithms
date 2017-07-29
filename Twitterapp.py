# this program is to connect to Twitter resources.

import twitter


taccountholderFriends = taccountholderapi.GetFriends()
print (taccountholderFriends)

status = taccountholderapi.PostUpdate('place holder')
print(status.text)