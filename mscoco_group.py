# print pairs of captions that mean the same thing

import sys

bag = {}
for line in sys.stdin:
  parts = line.split("\t")
  id = parts[0]
  text = parts[1][0:-1]
  if not id in bag:
    bag[id] = []
  bag[id].append(text)

for id in bag.keys():
  for i in range(len(bag[id])):
    for j in range(i + 1, len(bag[id])):
      pair = bag[id][i] + "\t" + bag[id][j]
      print("{0}\t{1}".format(hash(pair), pair))
      pair = bag[id][j] + "\t" + bag[id][i]
      print("{0}\t{1}".format(hash(pair), pair))
