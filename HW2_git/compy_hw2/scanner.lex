%{
#include <stdio.h>
#include "output.hpp"
#include "parser.tab.hpp"
%}

/* flex configuration */
%option yylineno
%option noyywrap


digit   		        ([0-9])
letter  		        ([a-zA-Z])
nextLine                \n
tabSpacing              \t
lineBeginning           \r
whiteSpace		        ([ \t\n\r])
hexcharacter            ([0-9a-fA-F])
quote                   (\")
Ignore                  \/\/[^\r\n]*[\r|\n|\r\n]?
String                  \"([^\n\r\"\\]|\\[rnt"\\])+\"



%x STRING_STATE
%%

int                                                                             return INT;
byte                                                                            return BYTE;
b                                                                               return B;
bool                                                                            return BOOL;
and                                                                             return AND;
or                                                                              return OR;
not                                                                             return NOT;
true                                                                            return TRUE;
false                                                                           return FALSE;
return                                                                          return RETURN;
if                                                                              return IF;
else                                                                            return ELSE;
while                                                                           return WHILE;
break                                                                           return BREAK;
continue                                                                        return CONTINUE;
;                                                                               return SC;
\(                                                                              return LPAREN;
\)                                                                              return RPAREN;
\{                                                                              return LBRACE;
\}                                                                              return RBRACE;
=                                                                               return ASSIGN;
(<=|>=|<|>)                                                                     return RELATIONAL_OP;
(==|!=)                                                                         return EQUALITY_OP;
[\+\-]                                                                          return ADDITIVE_OP;
[\*\/]                                                                          return MULTIPLICATIVE_OP;
{letter}({letter}|{digit})*                                                     return ID;
([1-9]({digit})*)|0                                                             return NUM;
{String}                                                                        return STRING;
{whiteSpace}				                                                    ;
{Ignore}                                                                        ;
.                                                                               {output::errorLex(yylineno); exit(0);}
%%
  