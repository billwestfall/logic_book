# MacBook-Air:github billw$ python page336b.py 
# all x y.(Ex & Ey)
# Exy
# False

from nltk import *
from nltk.sem.drt import DrtParser
from nltk.sem import logic
logic._counter._value = 0

from nltk.sem import Expression
read_expr = Expression.fromstring
p1 = read_expr('(all x all y (Ex & Ey))')
d  = read_expr('Exy')
print p1
print d

print Prover9().prove(d, [p1])
