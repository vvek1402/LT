%{
    int count =0;
%}
%%
[0-9]+          {printf("%s - is number\n",yytext);count++;}
[U]             {printf("%s - is Union\n",yytext);count++;}
[V]             {printf("%s - is Intersect\n",yytext);count++;}
[()]|[)]        {printf("%s - is braces\n",yytext);count++;}
[,]             {printf("%s - is comma\n",yytext);count++;}
[\n]|[\t]|[\b]  {printf("%s - is whitespaces\n",yytext);count++;}
.               {printf("%s - is invalid\n",yytext);count++;}
%%

int yywrap(){};

int main(){
    yytext();
    {
        printf("No of Tokens: %",count);
        return 0;
    }
}