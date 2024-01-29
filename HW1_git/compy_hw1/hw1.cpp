#include "tokens.hpp"
#include <iostream>
#include <string>
#include <cstring>

using std::cout;
using std::endl;
std::string total_str;
bool null_terminated=false;

void showToken(std::string str)
{
	cout << yylineno << " " << str << " " << yytext << endl;
}

int main()
{
	int token;
	while ((token = yylex())) {
		switch (token) {
			case VOID:
				showToken("VOID");
				break;
			case INT:
				showToken("INT");
				break;
			case BYTE:
				showToken("BYTE");
				break;
			case B:
				showToken("B");
				break;
			case BOOL:
				showToken("BOOL");
				break;
			case AND:
				showToken("AND");
				break;
			case OR:
				showToken("OR");
				break;
			case NOT:
				showToken("NOT");
				break;
			case TRUE:
				showToken("TRUE");
				break;
			case FALSE:
				showToken("FALSE");
				break;
			case RETURN:
				showToken("RETURN");
				break;
			case IF:
				showToken("IF");
				break;
			case ELSE:
				showToken("ELSE");
				break;
			case WHILE:
				showToken("WHILE");
				break;
			case BREAK:
				showToken("BREAK");
				break;
			case CONTINUE:
				showToken("CONTINUE");
				break;
			case SC:
				showToken("SC");
				break;
			case LPAREN:
				showToken("LPAREN");
				break;
			case RPAREN:
				showToken("RPAREN");
				break;
			case LBRACE:
				showToken("LBRACE");
				break;
			case RBRACE:
				showToken("RBRACE");
				break;
			case ASSIGN:
				showToken("ASSIGN");
				break;
			case RELOP:
				showToken("RELOP");
				break;
			case COMMENT:
				cout << yylineno << " COMMENT //" << endl;
				break;
			case BINOP:
				showToken("BINOP");
				break;
			case ID:
				showToken("ID");
				break;
			case NUM:
				showToken("NUM");
				break;
			case STRING:
				std::cout<<yylineno <<" STRING " <<total_str<<std::endl;
				total_str="";
				null_terminated=false;
				break;
			case HEXERROR:
				std::cout<<"Error undefined escape sequence x"<<yytext<<std::endl;
				exit(0);
			case ERROR:
				std::cout<<"Error undefined escape sequence 123"<<yytext<<std::endl;
				exit(0);
			default:
				cout << "Error " << yytext << endl;
				exit(0);
		}
	  /*if (token==ERROR)
	  {
		std::cout<<"undefined escape sequence "<<yytext<<std::endl;
	  }
	  else if (token==HEXERROR)
	  {
		std::cout<<"undefined escape sequence "<<yytext<<std::endl;
	  }
	  else if(token==STRING)
	  {
		std::cout<<yylineno <<total_str <<yytext<<std::endl;
		total_str="";
	  }
	  else if (token==COMMENT)
	  {
		std::cout<<yylineno <<"COMMENT //" <<yytext<<std::endl;
	  }
	  else
	  {
		std::cout<<yylineno <<token <<" "<< yytext<<std::endl;
	  }*/
	}
	return 0;
}

/*void parseString (std::string str)
{
	std::string output="";
	for (int i=0;i<str.length(),i++)
	{
		if (str[i]=='\\')
		{
			if (i+1==str.length())
			{
				cout<< "Error unclosed string"<<endl;
				exit(0);
			}
		}
		switch (str[i+1])
		{
			case 'n':
			{
				output+='\n';
				break;
			}
			case '"':
			{
				output+='\"';
				break;
			}
			case '\\':
			{
				output+='\\';
				break;
			}
			case 't':
			{
				output+='\t';
				break;
			}
			case 'r':
			{
				output+='\r';
				break;
			}
			case '0':
			{
				
			}
		}

}
*/
void incString (char* yytext)
{
	if(!null_terminated)
	{
		std::string str=std::string(yytext);
		total_str+=str;
	}
}

void incHex(char* yytext)
{
	if (yytext[0]=='0' && yytext[1]=='0')
	{
		null_terminated=true;
	}
	if(!null_terminated)
	{
		int hexValue = std::stoul(yytext, nullptr, 16);
   	 	total_str+= static_cast<char>(hexValue);
	}
}

void checkString(char* yytext)
{
	std::string str=std::string(yytext);
	if(!str[1])
	{
		//error of some kind
		exit(0);
	}
	if(null_terminated)
		return;
	switch (str[1])
		{
			case 'n':
			{
				total_str+='\n';
				break;
			}
			case '"':
			{
				total_str+='\"';
				break;
			}
			case '\\':
			{
				total_str+='\\';
				break;
			}
			case 't':
			{
				total_str+='\t';
				break;
			}
			case 'r':
			{
				total_str+='\r';
				break;
			}
			case '0':
			{
				null_terminated=true;
				break;
			}
			default:
			{
				std::cout<<"Error undefined escape sequence "<<yytext[1]<<std::endl;
				exit(0);
			}
		}
}
