%{
#include<stdio.h>
#include"y.tab.h"
%}
letter  [A-Za-z]
keyword int|float|char
digit [0-9]
identifier {letter}({letter}|{digit})*
%%
{keyword} return TYPE;
","  return COMA;
";"  return SC;
{identifier} return ID;
"\n" NL;
%%
