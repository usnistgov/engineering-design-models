%%
    int k;              /* declare counter k as an integer */
[ \t\n] ;		/* delete all spaces, tabs, and newlines */
";" printf("\n");	/* replace semicolons with newlines */
"=" ;               	/* delete = */
"@" ;			/* delete @ */

'[^']*' {               /* change single quotes to double quotes, but */
    printf("\"");       /* leave characters between them as is */
    for (k=1; k < yyleng-1 ; k++)
         putchar(yytext[k]);
    printf("\"");
    }

"#"[0-9]+ {             /* change #123 to (ref 123) and similar */
    printf("(ref ");
    for (k=1; k < yyleng; k++)
         putchar(yytext[k]);
    printf(")");
   }

[A-Za-z][A-Za-z0-9_]*[ \t\n]*"("([ \t]*",")*  {  /* If name, paren, commas */
    printf(" (");                  /* print left paren then name downcased */
    for (k=0; yytext[k] != '('; k++) {
       if ( 'A' <= yytext[k] && yytext[k] <= 'Z')
          putchar(yytext[k]+'a'-'A');
       else
          putchar(yytext[k]);
       }
    for (k++; k < yyleng; k++) {   /* change commas at head of list to nil */
       if (',' == yytext[k])
          printf(" nil ");
       }   
    printf(" ");
   }

"!*"([^*]|"*"+[^!*])*"*"+"!" ;  /* delete comments in old format*/
"/*"([^*]|"*"+[^/*])*"*"+"/" ;  /* delete comments in new format*/
"," printf(" ");	        /* change commas to spaces */
"'" printf("\"");	        /* change single quotes to double quotes */
".T." printf("true");           /* change .T. to true */
".F." printf("false");	        /* change .F. to false */
\,[ \t]*\) printf(" nil)");		      /* Change missing item commas  */
\,[ \t]*\,[ \t]*\) printf(" nil nil)");	      /* at middle or end of a list */
\,[ \t]*\,[ \t]* printf(" nil ");	      /* to nil. These 4 lines deal */
\,[ \t]*\,[ \t]*\,[ \t]* printf(" nil nil "); /* with 1 or 2 missing items. */
STEP\; printf("(setf (symbol-plist 'step-in) '(\n"); /* cha STEP to setf etc */
HEADER\; printf("\nheader (\n");        /* change HEADER to newl header par */
ENDSEC\; printf(")\n");			/* change ENDSEC to right paren */
DATA\; printf("\ndata (\n");		/* change DATA to newl, data, paren */
ENDSTEP\; printf("))\n");		/* change ENDSTEP to 2 right parens */
[A-Z] putchar(yytext[0]+'a'-'A');       /* change upper case to lower */
