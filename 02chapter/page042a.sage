#run as
#sage: load("page042a.sage")
#a     | b     | value |
#------------------------
#False | False | True  |
#False | True  | True  |
#True  | False | False |
#True  | True  | True  | 

log = SymbolicLogic()
s = log.statement("a->b")
t = log.truthtable(s)
log.print_table(t)
