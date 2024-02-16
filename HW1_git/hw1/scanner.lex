%{
/* Declaration Section */
#include <stdio.h>
#include "tokens.hpp"
%}

%option yylineno
%option noyywrap

digit ([0-9])
digitwithoutzero ([1-9])
letter ([a-zA-Z])
whitespace ([\t\n\r ])
relop (==|!=|<|>|<=|>=)
binop (\+|\-|\*|\/)
comment (\/\/[^\r\n]*)
id ([a-zA-Z][a-zA-Z0-9]*)
num ([1-9]([0-9]*)|0)
hex (\\x[0-7][0-9a-fA-F])
escape ([0tnr\"\\])
purestring ([#-\[ \]-~\t!])
string (\"({purestring}|{hex}|\\{escape})*\")
badclosure (\"({purestring}|{hex}|\\{escape})*)
badescape (\"({purestring}|{hex}|\\{escape})*\\[^{escape}])
badhex (\"({purestring}|{hex}|\\{escape})*\\x([^0-7][0-9A-Fa-f]|[0-7][^0-9A-Fa-f]|[^0-7][^0-9A-Fa-f]|[^0-9A-Fa-f]))


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
{relop} return RELOP;
{binop} return BINOP;
{comment} return COMMENT;
{id} return ID;
{num} return NUM;
{string} return STRING;
{badclosure} return INVALID_CLOSE;
{badescape} return INVALID_ESCAPE;
{badhex} return INVALID_HEX;
{whitespace} ;
. return INVALID_CHAR;
