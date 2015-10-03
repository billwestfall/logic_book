

print ("1=A->B")
print ("2=C->D")
x = Set([1,2])
print x
print list(x.subsets())

y = "C|~D"
print ("1=C|~D")
print ("2=~D|C")
print ("3=C|C")
x = Set([y,2,3])
print x
print list(x.subsets())

