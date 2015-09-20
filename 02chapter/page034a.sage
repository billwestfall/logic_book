#run as
#sage: load("page034a.sage")
#a     | b     | value |
#------------------------
#False | False | False |
#False | True  | True  |
#True  | False | True  |
#True  | True  | True  |

log = SymbolicLogic()
s = log.statement("a|b")
t = log.truthtable(s)
log.print_table(t)
