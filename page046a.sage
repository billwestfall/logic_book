#run as
#sage: load("page046a.sage")
#a     | b     | value |
#------------------------
#False | False | True  |
#False | True  | False |
#True  | False | False |
#True  | True  | True  |

log = SymbolicLogic()
s = log.statement("a<->b")
t = log.truthtable(s)
log.print_table(t)
