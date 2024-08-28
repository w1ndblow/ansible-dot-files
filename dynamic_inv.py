#!/usr/bin/env python
import sys


FILENAME='../ops-keys/README.md'
GROUP='local'
list_of_hosts = []
raw_list_of_hosts = []

with open(FILENAME) as fn:
   for i in fn:
      if i.startswith(GROUP):
         raw_list_of_hosts = i.split('|')[2].split(',')
         list_of_hosts = list(map(lambda x : x.strip(),
                                 raw_list_of_hosts))


print('{ "all": ')
print('''{"hosts": [''')
for n,i in enumerate(list_of_hosts):
  if n == len(list_of_hosts)-1:
    print('"{}"'.format(i))
  else:
    print('"{}",'.format(i))
print(''']}}''')
