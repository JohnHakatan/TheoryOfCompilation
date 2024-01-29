#include "tokens.hpp"
#include <iostream>
#include <string>
#include <stdio.h>
#include <sstream>


using namespace std;

void handle_COMMENT(){
    cout << yylineno << " " << "COMMENT" << " " << "//" << "\n";
}

/*
void handle_STRING(){
    std::string s(yytext);
    cout << yylineno << " STRING " ;
    for(int i = 0; i < s.size(); i++){
        char ch = s[i];
        char next_ch = s[i + 1];
        if(ch == '"') continue;
        else if(ch == '\\' && next_ch == 'x'){
            std::stringstream ss;
            ss << std::hex << s.substr(i+2, 2);
            int x;
            ss >> x;
            cout << char(x);
            i += 3; // skip next three characters
        } else if(ch == '\\' && next_ch == 'n'){
            cout << '\n';
            i++;
        } else if(ch == '\\' && next_ch == 'r') {
            cout << '\r';
            i++;
        } else if(ch == '\\' && next_ch == 't'){
            cout << '\t';
            i++;
        }
        else if(ch == '\\' && next_ch == '\"'){
            cout << '\"';
            i++;
        } else if(ch == '\\'){
            cout << '\\';
            i++;
        } else if(ch == 0 || ch == '\0'){
            cout << '\0';
            exit(0);
            i++;
        } 
        else {
            cout << ch;
        }
    }
    cout << endl;
}

*/

void handle_STRING(){
    string s = yytext;
    cout << yylineno << " " << "STRING" << " ";
    /*cout << endl << "-----" << yytext << "-----" << endl;*/
    for (std::string::size_type i = 1; i < s.length()-1; i++) {
        char c = s[i];
        if (c != '\\') {
            std::cout << c;
        } else {
            char next_c = s[i+1];
            switch (next_c) {
                case 't':
                    std::cout << '\t';
                    i++; // skip next char
                    continue;
                case 'n':
                    std::cout << '\n';
                    i++; // skip next char
                    continue;
                case 'r':
                    std::cout << '\r';
                    i++; // skip next char
                    continue;
                case '0':
                    //std::cout << '\0';
                    i = s.length() - 1; // go to the end of the string
                    continue;
                case '\\':
                    std::cout << '\\';
                    i++; // skip next char
                    continue;
                case '\"':
                    std::cout << '\"';
                    i++; // skip next char
                    continue;
                case 'x': {
                    std::string hex_str = s.substr(i+2, 2);
                    char sub[3];
                    sub[0] = hex_str[0];
                    sub[1] = hex_str[1];
                    sub[2] = '\0';
                    int hex_val = std::strtol(sub, nullptr, 16); // convert the hex string to an integer value
                    //char c = static_cast<char>(hex_val);
                    if(hex_val == 0)
                    {
                        i = s.length() - 1;
                        continue;
                    }
                    string ascii_string;
                    ascii_string.push_back((char)(hex_val));
                    std::cout << ascii_string;
                    i += 3; // skip next three characters
                    continue;
                }
                default:
                    std::cout << c;
                    continue;
            }
        }
    }
    cout << endl;
}



void handle_INVALID_CLOSE(){
    cout << "Error\n";
}

void handle_INVALID_ESCAPE(){
    string str = yytext;
    char s = str[str.size() - 1];
    cout << "Error undefined escape sequence " << s << "\n";
}

void handle_INVALID_HEX(){
    string s = yytext;
    int size = s.size();
    if(s[size - 3] == 'x'){
        if(s[size - 1] != '"'){
            cout << "Error undefined escape sequence x" << s[size - 2] << s[size-1] << "\n";
            return;
        }
        else{
            cout << "Error undefined escape sequence x" << s[size - 2] << "\n";
            return;
        }
    }
    if(s[size - 2] == 'x'){
        if(s[size - 1] != '"'){ 
            cout << "Error undefined escape sequence x" << s[size - 1] << "\n";
            return;
        }
        else{
            cout << "Error undefined escape sequence x" << "\n";
            return;
        }
    }
    cout << "Error undefined escape sequence x" << "\n";
}

int main()
{
    int token;
    while ((token = yylex())) {
        switch(token){
            case VOID:
                cout << yylineno << " " << "VOID" << " " << yytext << "\n";
                break;
            case INT:
                cout << yylineno << " " << "INT" << " " << yytext << "\n";
                break;
            case BYTE:
                cout << yylineno << " " << "BYTE" << " " << yytext << "\n";
                break;
            case B:
                cout << yylineno << " " << "B" << " " << yytext << "\n";
                break;
            case BOOL:
                cout << yylineno << " " << "BOOL" << " " << yytext << "\n";
                break;
            case OVERRIDE:
                cout << yylineno << " " << "OVERRIDE" << " " << yytext << "\n";
                break;
            case AND:
                cout << yylineno << " " << "AND" << " " << yytext << "\n";
                break;
            case OR:
                cout << yylineno << " " << "OR" << " " << yytext << "\n";
                break;
            case NOT:
                cout << yylineno << " " << "NOT" << " " << yytext << "\n";
                break;
            case TRUE:
                cout << yylineno << " " << "TRUE" << " " << yytext << "\n";
                break;
            case FALSE:
                cout << yylineno << " " << "FALSE" << " " << yytext << "\n";
                break;
            case RETURN:
                cout << yylineno << " " << "RETURN" << " " << yytext << "\n";
                break;
            case IF:
                cout << yylineno << " " << "IF" << " " << yytext << "\n";
                break;
            case ELSE:
                cout << yylineno << " " << "ELSE" << " " << yytext << "\n";
                break;
            case WHILE:
                cout << yylineno << " " << "WHILE" << " " << yytext << "\n";
                break;
            case BREAK:
                cout << yylineno << " " << "BREAK" << " " << yytext << "\n";
                break;
            case CONTINUE:
                cout << yylineno << " " << "CONTINUE" << " " << yytext << "\n";
                break;
            case SC:
                cout << yylineno << " " << "SC" << " " << yytext << "\n";
                break;
            case COMMA:
                cout << yylineno << " " << "COMMA" << " " << yytext << "\n";
                break;
            case LPAREN:
                cout << yylineno << " " << "LPAREN" << " " << yytext << "\n";
                break;
            case RPAREN:
                cout << yylineno << " " << "RPAREN" << " " << yytext << "\n";
                break;
            case LBRACE:
                cout << yylineno << " " << "LBRACE" << " " << yytext << "\n";
                break;
            case RBRACE:
                cout << yylineno << " " << "RBRACE" << " " << yytext << "\n";
                break;
            case ASSIGN:
                cout << yylineno << " " << "ASSIGN" << " " << yytext << "\n";
                break;
            case RELOP:
                cout << yylineno << " " << "RELOP" << " " << yytext << "\n";
                break;
            case BINOP:
                cout << yylineno << " " << "BINOP" << " " << yytext << "\n";
                break;
            case COMMENT:
                handle_COMMENT();
                break;
            case ID:
                cout << yylineno << " " << "ID" << " " << yytext << "\n";
                break;
            case NUM:
                cout << yylineno << " " << "NUM" << " " << yytext << "\n";
                break;
            case STRING:
                handle_STRING();
                break;
            case INVALID_CLOSE:
                cout << "Error\n";
                exit(0);
                break;
            case INVALID_ESCAPE:
                handle_INVALID_ESCAPE();
                exit(0);
                break;
            case INVALID_HEX:
                handle_INVALID_HEX();
                exit(0);
                break;
            default:
                cout << "ERROR: " << yytext << "\n";
                exit(0);
                break;

        }
    }
    return 0;
}