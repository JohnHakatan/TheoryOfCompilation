%{
    #include <stdio.h>
    #include "parser.tab.hpp"
    #include "output.hpp"
%}

%option yylineno
%option noyywrap

digit ([0-9])
digitwithoutzero ([1-9])
letter ([a-zA-Z])
whitespace ([\t\n\r ])
equality (==|!=)
relational (<|>|<=|>=)
addsub (\+|\-)
muldiv (\*|\/)
id ([a-zA-Z][a-zA-Z0-9]*)
num ([1-9]([0-9]*)|0)
string (\"([^\n\r\"\\]|\\[rnt"\\])+\")
comment (\/\/[^\r\n]*[\r|\n|\r\n]?)

%%

void return VOID;
int return INT;
byte return BYTE;
b return B;
bool return BOOL;
override return OVERRIDE;
and return AND;
or return OR;
not return NOT;
true return TRUE;
false return FALSE;
return return RETURN;
if return IF;
else return ELSE;
while return WHILE;
break return BREAK;
continue return CONTINUE;
; return SC;
, return COMMA;
\( return LPAREN;
\) return RPAREN;
\{ return LBRACE;
\} return RBRACE;
= return ASSIGN;
{equality} return EQUALITY;
{relational} return RELATIONAL;
{muldiv} return MULDIV;
{addsub} return ADDSUB;
{id} return ID;
{num} return NUM;
{string} return STRING;
{comment} ;
{whitespace} ;
. {output::errorLex(yylineno); exit(0);}
