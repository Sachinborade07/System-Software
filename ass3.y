%{
   #include<stdio.h>
   int yylex();
   int yyerror();
%}
%token ID TYPE SC NL COMA
%%
start:TYPE varlist SC     {printf("\n valid decclarative statement");}
;
varlist:varlist COMA ID
       |ID
       ;
%%
int yyerror()
{
 printf("\n Invalid decclarative statement");
}
int yywrap()
{
 return 1;
 }
 int main()
 {
 yyparse();
}
