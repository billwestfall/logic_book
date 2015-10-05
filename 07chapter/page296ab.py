# MacBook-Air:github billw$ python page296ab.py
# exists x.(Px | Qx)
# (exists x.Px | exists x.Qx)
# True

from nltk import *
from nltk.sem.drt import DrtParser
from nltk.sem import logic
logic._counter._value = 0

from nltk.sem import Expression
read_expr = Expression.fromstring
p1 = read_expr('(exists x (Px | Qx))')
d  = read_expr('(exists x (Px)) | (exists x (Qx))')
print p1
print d

print Prover9().prove(d, [p1])
