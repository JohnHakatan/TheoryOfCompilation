%{
#include <stdio.h>
#include "tokens.hpp"
void incString(char*);
void checkString(char*);
void incHex(char*);
%}
%option yylineno
%option noyywrap

digit       ([0-9])
letter      ([a-zA-Z])
signs       ([a-zA-Z0-9])
illegal_standalone      ([^\"\n\r])
escape      ([\"\n\r\t\0\\])
hex         ([0-9a-fA-F])
whitespace  ([\r\n\t\ ])

%x STRING_QUETOS
%x HEX
%%

void                                    return VOID;
int                                     return INT;
byte                                    return BYTE;
b                                       return B;
bool                                    return BOOL;
and                                     return AND;
or                                      return OR;
not                                     return NOT;
true                                    return TRUE;
false                                   return FALSE;
return                                  return RETURN;
if                                      return IF;
else                                    return ELSE;
while                                   return WHILE;
break                                   return BREAK;
continue                                return CONTINUE;
;                                       return SC;
\(                                      return LPAREN;
\)                                      return RPAREN;
\{                                      return LBRACE;
\}                                      return RBRACE;
=                                       return ASSIGN;
[<>=!]=|>|<                            return RELOP;
[\+\-\*\/]                              return BINOP;
\/\/[^\n\r]*                            return COMMENT;
{letter}{signs}*                        return ID;
0|[1-9]{digit}*                         return NUM;
\"                                      BEGIN(STRING_QUETOS);
<STRING_QUETOS>[\t !#-\[\]-~]*          incString(yytext);
<STRING_QUETOS>\\x[0-9a-fA-F]+         incHex(yytext);
<STRING_QUETOS>\\.                      checkString(yytext);
<STRING_QUETOS>\r\n|\r|\n               printf("Error unclosed string\n"); exit(0);
<STRING_QUETOS>\"                       BEGIN(INITIAL); return STRING;             
<STRING_QUETOS><<EOF>>                  printf("Error unclosed string\n"); exit(0);
<HEX>\"[^0-9a-fA-F]*                    printf("Error undefined escape sequence x%s\n", yytext + 2);exit(0);
<HEX>.\"                                printf ("Error undefined escape sequence x%c\n", yytext[0]);exit(0);
<HEX>.{2}                               return HEXERROR;
{whitespace}                            ;
.                                       printf("Error %s\n",yytext);exit(0);
%%
