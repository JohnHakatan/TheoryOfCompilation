17: Type -> BYTE
5: Statement -> Type ID SC
2: Statements -> Statement
21: Exp -> ID
26: Exp -> TRUE
14: Statement -> CONTINUE SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
10: Statement -> IF LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
21: Exp -> ID
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
14: Statement -> CONTINUE SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
9: Statement -> RETURN SC
2: Statements -> Statement
25: Exp -> STRING
16: Type -> INT
23: Exp -> NUM
32: Exp -> LPAREN Type RPAREN Exp
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
2: Statements -> Statement
25: Exp -> STRING
13: Statement -> BREAK SC
21: Exp -> ID
9: Statement -> RETURN SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
11: Statement -> IF LPAREN Exp RPAREN Statement ELSE Statement
3: Statements -> Statements Statement
23: Exp -> NUM
25: Exp -> STRING
20: Exp -> Exp BINOP Exp
26: Exp -> TRUE
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
10: Statement -> IF LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
18: Type -> BOOL
5: Statement -> Type ID SC
3: Statements -> Statements Statement
4: Statement -> LBRACE Statements RBRACE
2: Statements -> Statement
21: Exp -> ID
16: Type -> INT
24: Exp -> NUM B
32: Exp -> LPAREN Type RPAREN Exp
13: Statement -> BREAK SC
10: Statement -> IF LPAREN Exp RPAREN Statement
10: Statement -> IF LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
23: Exp -> NUM
27: Exp -> FALSE
20: Exp -> Exp BINOP Exp
19: Exp -> LPAREN Exp RPAREN
14: Statement -> CONTINUE SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
16: Type -> INT
5: Statement -> Type ID SC
3: Statements -> Statements Statement
24: Exp -> NUM B
26: Exp -> TRUE
20: Exp -> Exp BINOP Exp
26: Exp -> TRUE
24: Exp -> NUM B
28: Exp -> NOT Exp
20: Exp -> Exp BINOP Exp
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
26: Exp -> TRUE
31: Exp -> Exp RELOP Exp
31: Exp -> Exp RELOP Exp
9: Statement -> RETURN SC
10: Statement -> IF LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
13: Statement -> BREAK SC
3: Statements -> Statements Statement
4: Statement -> LBRACE Statements RBRACE
10: Statement -> IF LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
9: Statement -> RETURN SC
3: Statements -> Statements Statement
25: Exp -> STRING
7: Statement -> ID ASSIGN Exp SC
3: Statements -> Statements Statement
4: Statement -> LBRACE Statements RBRACE
3: Statements -> Statements Statement
26: Exp -> TRUE
23: Exp -> NUM
20: Exp -> Exp BINOP Exp
21: Exp -> ID
14: Statement -> CONTINUE SC
2: Statements -> Statement
4: Statement -> LBRACE Statements RBRACE
9: Statement -> RETURN SC
11: Statement -> IF LPAREN Exp RPAREN Statement ELSE Statement
21: Exp -> ID
26: Exp -> TRUE
23: Exp -> NUM
20: Exp -> Exp BINOP Exp
31: Exp -> Exp RELOP Exp
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
27: Exp -> FALSE
31: Exp -> Exp RELOP Exp
13: Statement -> BREAK SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
11: Statement -> IF LPAREN Exp RPAREN Statement ELSE Statement
3: Statements -> Statements Statement
23: Exp -> NUM
25: Exp -> STRING
21: Exp -> ID
20: Exp -> Exp BINOP Exp
24: Exp -> NUM B
20: Exp -> Exp BINOP Exp
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
10: Statement -> IF LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
18: Type -> BOOL
5: Statement -> Type ID SC
3: Statements -> Statements Statement
9: Statement -> RETURN SC
3: Statements -> Statements Statement
14: Statement -> CONTINUE SC
3: Statements -> Statements Statement
18: Type -> BOOL
5: Statement -> Type ID SC
3: Statements -> Statements Statement
26: Exp -> TRUE
21: Exp -> ID
18: Type -> BOOL
5: Statement -> Type ID SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
10: Statement -> IF LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
16: Type -> INT
5: Statement -> Type ID SC
3: Statements -> Statements Statement
26: Exp -> TRUE
27: Exp -> FALSE
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
18: Type -> BOOL
25: Exp -> STRING
25: Exp -> STRING
27: Exp -> FALSE
19: Exp -> LPAREN Exp RPAREN
20: Exp -> Exp BINOP Exp
23: Exp -> NUM
28: Exp -> NOT Exp
20: Exp -> Exp BINOP Exp
29: Exp -> Exp AND Exp
24: Exp -> NUM B
30: Exp -> Exp OR Exp
6: Statement -> Type ID ASSIGN Exp SC
3: Statements -> Statements Statement
24: Exp -> NUM B
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
3: Statements -> Statements Statement
14: Statement -> CONTINUE SC
3: Statements -> Statements Statement
23: Exp -> NUM
19: Exp -> LPAREN Exp RPAREN
26: Exp -> TRUE
20: Exp -> Exp BINOP Exp
19: Exp -> LPAREN Exp RPAREN
14: Statement -> CONTINUE SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
25: Exp -> STRING
9: Statement -> RETURN SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
18: Type -> BOOL
21: Exp -> ID
25: Exp -> STRING
30: Exp -> Exp OR Exp
6: Statement -> Type ID ASSIGN Exp SC
3: Statements -> Statements Statement
23: Exp -> NUM
26: Exp -> TRUE
20: Exp -> Exp BINOP Exp
21: Exp -> ID
24: Exp -> NUM B
29: Exp -> Exp AND Exp
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
30: Exp -> Exp OR Exp
26: Exp -> TRUE
24: Exp -> NUM B
19: Exp -> LPAREN Exp RPAREN
20: Exp -> Exp BINOP Exp
30: Exp -> Exp OR Exp
24: Exp -> NUM B
24: Exp -> NUM B
20: Exp -> Exp BINOP Exp
24: Exp -> NUM B
26: Exp -> TRUE
20: Exp -> Exp BINOP Exp
31: Exp -> Exp RELOP Exp
30: Exp -> Exp OR Exp
14: Statement -> CONTINUE SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
16: Type -> INT
5: Statement -> Type ID SC
2: Statements -> Statement
24: Exp -> NUM B
19: Exp -> LPAREN Exp RPAREN
17: Type -> BYTE
24: Exp -> NUM B
32: Exp -> LPAREN Type RPAREN Exp
24: Exp -> NUM B
26: Exp -> TRUE
20: Exp -> Exp BINOP Exp
20: Exp -> Exp BINOP Exp
21: Exp -> ID
24: Exp -> NUM B
20: Exp -> Exp BINOP Exp
20: Exp -> Exp BINOP Exp
27: Exp -> FALSE
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
17: Type -> BYTE
23: Exp -> NUM
32: Exp -> LPAREN Type RPAREN Exp
23: Exp -> NUM
29: Exp -> Exp AND Exp
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
20: Exp -> Exp BINOP Exp
30: Exp -> Exp OR Exp
27: Exp -> FALSE
27: Exp -> FALSE
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
29: Exp -> Exp AND Exp
27: Exp -> FALSE
23: Exp -> NUM
20: Exp -> Exp BINOP Exp
29: Exp -> Exp AND Exp
27: Exp -> FALSE
29: Exp -> Exp AND Exp
30: Exp -> Exp OR Exp
17: Type -> BYTE
27: Exp -> FALSE
25: Exp -> STRING
31: Exp -> Exp RELOP Exp
6: Statement -> Type ID ASSIGN Exp SC
10: Statement -> IF LPAREN Exp RPAREN Statement
12: Statement -> WHILE LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
26: Exp -> TRUE
17: Type -> BYTE
5: Statement -> Type ID SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
2: Statements -> Statement
9: Statement -> RETURN SC
2: Statements -> Statement
17: Type -> BYTE
5: Statement -> Type ID SC
3: Statements -> Statements Statement
4: Statement -> LBRACE Statements RBRACE
3: Statements -> Statements Statement
18: Type -> BOOL
26: Exp -> TRUE
32: Exp -> LPAREN Type RPAREN Exp
24: Exp -> NUM B
28: Exp -> NOT Exp
20: Exp -> Exp BINOP Exp
24: Exp -> NUM B
29: Exp -> Exp AND Exp
13: Statement -> BREAK SC
10: Statement -> IF LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
4: Statement -> LBRACE Statements RBRACE
3: Statements -> Statements Statement
4: Statement -> LBRACE Statements RBRACE
2: Statements -> Statement
26: Exp -> TRUE
14: Statement -> CONTINUE SC
9: Statement -> RETURN SC
11: Statement -> IF LPAREN Exp RPAREN Statement ELSE Statement
3: Statements -> Statements Statement
26: Exp -> TRUE
7: Statement -> ID ASSIGN Exp SC
3: Statements -> Statements Statement
26: Exp -> TRUE
16: Type -> INT
5: Statement -> Type ID SC
2: Statements -> Statement
4: Statement -> LBRACE Statements RBRACE
13: Statement -> BREAK SC
11: Statement -> IF LPAREN Exp RPAREN Statement ELSE Statement
3: Statements -> Statements Statement
4: Statement -> LBRACE Statements RBRACE
3: Statements -> Statements Statement
21: Exp -> ID
21: Exp -> ID
16: Type -> INT
24: Exp -> NUM B
25: Exp -> STRING
29: Exp -> Exp AND Exp
6: Statement -> Type ID ASSIGN Exp SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
25: Exp -> STRING
19: Exp -> LPAREN Exp RPAREN
26: Exp -> TRUE
19: Exp -> LPAREN Exp RPAREN
26: Exp -> TRUE
16: Type -> INT
25: Exp -> STRING
27: Exp -> FALSE
19: Exp -> LPAREN Exp RPAREN
29: Exp -> Exp AND Exp
6: Statement -> Type ID ASSIGN Exp SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
10: Statement -> IF LPAREN Exp RPAREN Statement
10: Statement -> IF LPAREN Exp RPAREN Statement
11: Statement -> IF LPAREN Exp RPAREN Statement ELSE Statement
2: Statements -> Statement
9: Statement -> RETURN SC
3: Statements -> Statements Statement
26: Exp -> TRUE
9: Statement -> RETURN SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
24: Exp -> NUM B
line 64: syntax error
