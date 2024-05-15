%{
 int ccount=0,capcount=0,smallcount=0,lcount=0;
%}
cword [A-Z]+
sword [a-z]+
eol \n
%%
{cword} {capcount++;ccount+=yyleng;}
{sword} {smallcount++;ccount+=yyleng;}
{eol} {ccount++;lcount++;}
 .   {ccount++;}
%%
 
int main(void)
 {
   yylex();
   printf("\n Number of characters : %d",ccount);  
   printf("\n Number of capital case words : %d",capcount);  
   printf("\n Number of small case words : %d",smallcount);  
   printf("\n Number of lines : %d",lcount);
   return 0;  
 }

int yywrap()
{ 
  return 1;
}
