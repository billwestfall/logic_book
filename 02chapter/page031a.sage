#run as
#sage: load("page031.sage")
#a     | b     | value |
#------------------------
#False | False | False |
#False | True  | False |
#True  | False | False |
#True  | True  | True  | 

log = SymbolicLogic()
s = log.statement("a&b")
t = log.truthtable(s)
log.print_table(t)
