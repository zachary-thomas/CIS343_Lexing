// zjs.lex by Zachary Thomas

%{
#include<stdio.h>
%}

%%

(END)                       {printf("END\n");}
;                           {printf("END STATEMENT\n");}
(POINT)                     {printf("POINT\n");}
(LINE)                      {printf("LINE\n");}
(CIRCLE)                    {printf("CIRCLE\n");}
(RECTANGLE)                 {printf("RECTANGLE\n");}
(SET_COLOR)                 {printf("SET_COLOR\n");}
[+-]?([0-9]+)               {printf("INT: %s\n", yytext);}
[+-]?([0-9]*[.])?[0-9]+     {printf("FLOAT: %s\n", yytext);}
.                           {printf("What is %s? Line: %d.\n", yytext, yylineno);}
[ \t\n]+                    //Ignore tabs and newlines.

%%

int main(int argc, char** argv){
	yylex();
}
