#ifndef _236360_1_
#define _236360_1_

#include <string>
extern int yylex();
extern int yyleng;
extern char* yytext;

namespace output {
    extern const std::string rules[];
    void printProductionRule(const int ruleno);
    void errorLex(const int lineno);
    void errorSyn(const int lineno);
};

#endif
