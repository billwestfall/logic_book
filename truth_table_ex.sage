#run as
#sage: load("truth_table_ex.sage")
#a     | b     | c     | value | 
#--------------------------------
#False | False | False | True  | 
#False | False | True  | False | 
#False | True  | False | True  | 
#False | True  | True  | False | 
#True  | False | False | False | 
#True  | False | True  | False | 
#True  | True  | False | True  | 
#True  | True  | True  | True  | 

log = SymbolicLogic()
s = log.statement("a&b|!(c|a)")
t = log.truthtable(s)
log.print_table(t)
