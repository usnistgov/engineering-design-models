# include "stdio.h"
# define U(x) x
# define NLSTATE yyprevious=YYNEWLINE
# define BEGIN yybgin = yysvec + 1 +
# define INITIAL 0
# define YYLERR yysvec
# define YYSTATE (yyestate-yysvec-1)
# define YYOPTIM 1
# define YYLMAX BUFSIZ
# define output(c) putc(c,yyout)
# define input() (((yytchar=yysptr>yysbuf?U(*--yysptr):getc(yyin))==10?(yylineno++,yytchar):yytchar)==EOF?0:yytchar)
# define unput(c) {yytchar= (c);if(yytchar=='\n')yylineno--;*yysptr++=yytchar;}
# define yymore() (yymorfg=1)
# define ECHO fprintf(yyout, "%s",yytext)
# define REJECT { nstr = yyreject(); goto yyfussy;}
int yyleng; extern char yytext[];
int yymorfg;
extern char *yysptr, yysbuf[];
int yytchar;
FILE *yyin = {stdin}, *yyout = {stdout};
extern int yylineno;
struct yysvf { 
	struct yywork *yystoff;
	struct yysvf *yyother;
	int *yystops;};
struct yysvf *yyestate;
extern struct yysvf yysvec[], *yybgin;
# define YYNEWLINE 10
yylex(){
int nstr; extern int yyprevious;
   int k;
while((nstr = yylook()) >= 0)
yyfussy: switch(nstr){
case 0:
if(yywrap()) return(0); break;
case 1:
;
break;
case 2:
printf("\n");
break;
case 3:
;
break;
case 4:
;
break;
case 5:
{               /* change single quotes to double quotes, but */
    printf("\"");       /* leave characters between them as is */
    for (k=1; k < yyleng-1 ; k++)
         putchar(yytext[k]);
    printf("\"");
    }
break;
case 6:
{             /* change #123 to (ref 123) and similar */
    printf("(ref ");
    for (k=1; k < yyleng; k++)
         putchar(yytext[k]);
    printf(")");
   }
break;
case 7:
 {  /* If name, paren, commas */
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
break;
case 8:
;
break;
case 9:
;
break;
case 10:
printf(" ");
break;
case 11:
printf("\"");
break;
case 12:
printf("true");
break;
case 13:
printf("false");
break;
case 14:
printf(" nil)");
break;
case 15:
printf(" nil nil)");
break;
case 16:
printf(" nil ");
break;
case 17:
printf(" nil nil ");
break;
case 18:
printf("(setf (symbol-plist 'step-in) '(\n");
break;
case 19:
printf("\nheader (\n");
break;
case 20:
printf(")\n");
break;
case 21:
printf("\ndata (\n");
break;
case 22:
printf("))\n");
break;
case 23:
putchar(yytext[0]+'a'-'A');
break;
case -1:
break;
default:
fprintf(yyout,"bad switch yylook %d",nstr);
} return(0); }
/* end of yylex */
int yyvstop[] = {
0,

1,
0,

11,
0,

10,
0,

2,
0,

3,
0,

4,
0,

23,
0,

23,
0,

23,
0,

23,
0,

23,
0,

6,
0,

5,
0,

14,
0,

16,
0,

7,
0,

15,
0,

17,
0,

13,
0,

12,
0,

8,
0,

9,
0,

21,
0,

18,
0,

20,
0,

19,
0,

22,
0,
0};
# define YYTYPE char
struct yywork { YYTYPE verify, advance; } yycrank[] = {
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	1,3,	1,3,	
0,0,	0,0,	0,0,	29,29,	
29,29,	0,0,	37,37,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	1,3,	1,4,	0,0,	
1,5,	35,46,	29,29,	0,0,	
1,6,	37,37,	0,0,	4,19,	
9,28,	1,7,	29,30,	1,8,	
1,9,	5,20,	5,20,	5,20,	
5,20,	5,20,	5,20,	5,20,	
5,20,	5,20,	5,20,	26,38,	
1,10,	27,39,	1,11,	40,47,	
0,0,	1,12,	1,13,	1,13,	
1,13,	1,14,	1,15,	1,13,	
1,13,	1,16,	1,13,	1,13,	
1,13,	1,13,	1,13,	1,13,	
1,13,	1,13,	1,13,	1,13,	
1,17,	1,13,	1,13,	1,13,	
1,13,	1,13,	1,13,	1,13,	
14,31,	15,32,	16,33,	17,34,	
31,42,	32,43,	1,18,	1,18,	
1,18,	1,18,	1,18,	1,18,	
1,18,	1,18,	1,18,	1,18,	
1,18,	1,18,	1,18,	1,18,	
1,18,	1,18,	1,18,	1,18,	
1,18,	1,18,	1,18,	1,18,	
1,18,	1,18,	1,18,	1,18,	
6,21,	7,23,	8,26,	33,44,	
30,41,	25,25,	34,45,	42,48,	
6,21,	6,21,	43,49,	13,29,	
13,29,	44,50,	45,51,	49,53,	
8,27,	50,55,	53,57,	54,58,	
55,59,	58,61,	0,0,	0,0,	
7,23,	0,0,	0,0,	30,41,	
25,25,	0,0,	49,54,	0,0,	
6,21,	7,24,	13,29,	0,0,	
7,25,	25,36,	6,22,	30,30,	
25,37,	6,21,	13,30,	0,0,	
0,0,	0,0,	6,21,	6,21,	
0,0,	0,0,	13,18,	13,18,	
13,18,	13,18,	13,18,	13,18,	
13,18,	13,18,	13,18,	13,18,	
0,0,	0,0,	0,0,	0,0,	
6,21,	0,0,	0,0,	13,18,	
13,18,	13,18,	13,18,	13,18,	
13,18,	13,18,	13,18,	13,18,	
13,18,	13,18,	13,18,	13,18,	
13,18,	13,18,	13,18,	13,18,	
13,18,	13,18,	13,18,	13,18,	
13,18,	13,18,	13,18,	13,18,	
13,18,	0,0,	6,21,	0,0,	
6,21,	13,18,	0,0,	13,18,	
13,18,	13,18,	13,18,	13,18,	
13,18,	13,18,	13,18,	13,18,	
13,18,	13,18,	13,18,	13,18,	
13,18,	13,18,	13,18,	13,18,	
13,18,	13,18,	13,18,	13,18,	
13,18,	13,18,	13,18,	13,18,	
13,18,	19,19,	0,0,	0,0,	
0,0,	28,28,	0,0,	0,0,	
0,0,	19,19,	19,19,	0,0,	
0,0,	28,28,	28,28,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	19,19,	0,0,	0,0,	
0,0,	28,28,	0,0,	19,19,	
0,0,	0,0,	19,35,	28,28,	
0,0,	0,0,	28,40,	19,19,	
19,19,	0,0,	0,0,	28,28,	
28,28,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	19,19,	0,0,	0,0,	
0,0,	28,28,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	19,19,	
0,0,	19,19,	0,0,	28,28,	
0,0,	28,28,	48,0,	48,0,	
48,0,	48,0,	48,0,	48,0,	
48,0,	48,0,	48,29,	48,29,	
48,0,	48,0,	48,0,	48,0,	
48,0,	48,0,	48,0,	48,0,	
48,0,	48,0,	48,0,	48,0,	
48,0,	48,0,	48,0,	48,0,	
48,0,	48,0,	48,0,	48,0,	
48,0,	0,0,	48,0,	48,0,	
48,0,	48,0,	48,0,	48,0,	
48,0,	48,30,	48,0,	48,0,	
48,0,	48,0,	48,0,	48,0,	
48,0,	48,18,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	48,0,	
48,52,	48,0,	48,0,	48,0,	
48,0,	48,0,	48,18,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
48,0,	48,0,	48,0,	48,0,	
48,18,	48,0,	48,18,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
48,0,	48,0,	48,0,	48,0,	
48,0,	51,0,	51,0,	51,0,	
51,0,	51,0,	51,0,	51,0,	
51,0,	0,0,	0,0,	51,0,	
51,0,	51,0,	51,0,	51,0,	
51,0,	51,0,	51,0,	51,0,	
51,0,	51,0,	51,0,	51,0,	
51,0,	51,0,	51,0,	51,0,	
51,0,	51,0,	51,0,	51,0,	
0,0,	51,0,	51,0,	51,0,	
51,0,	51,0,	51,0,	51,0,	
51,30,	51,0,	51,0,	51,0,	
51,0,	51,0,	51,0,	51,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	51,0,	51,56,	
51,0,	51,0,	51,0,	51,0,	
51,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	51,0,	
51,0,	51,0,	51,0,	0,0,	
51,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	51,0,	
51,0,	51,0,	51,0,	51,0,	
57,0,	57,0,	57,0,	57,0,	
57,0,	57,0,	57,0,	57,0,	
0,0,	0,0,	57,0,	57,0,	
57,0,	57,0,	57,0,	57,0,	
57,0,	57,0,	57,0,	57,0,	
57,0,	57,0,	57,0,	57,0,	
57,0,	57,0,	57,0,	57,0,	
57,0,	57,0,	57,0,	0,0,	
57,0,	57,0,	57,0,	57,0,	
57,0,	57,0,	57,0,	57,30,	
57,0,	57,0,	57,0,	57,0,	
57,0,	57,0,	57,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	57,0,	57,60,	57,0,	
57,0,	57,0,	57,0,	57,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	57,0,	57,0,	
57,0,	57,0,	0,0,	57,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	57,0,	57,0,	
57,0,	57,0,	57,0,	59,0,	
59,0,	59,0,	59,0,	59,0,	
59,0,	59,0,	59,0,	0,0,	
0,0,	59,0,	59,0,	59,0,	
59,0,	59,0,	59,0,	59,0,	
59,0,	59,0,	59,0,	59,0,	
59,0,	59,0,	59,0,	59,0,	
59,0,	59,0,	59,0,	59,0,	
59,0,	59,0,	0,0,	59,0,	
59,0,	59,0,	59,0,	59,0,	
59,0,	59,0,	59,30,	59,0,	
59,0,	59,0,	59,0,	59,0,	
59,0,	59,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
59,0,	59,62,	59,0,	59,0,	
59,0,	59,0,	59,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	59,0,	59,0,	59,0,	
59,0,	0,0,	59,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	59,0,	59,0,	59,0,	
59,0,	59,0,	61,0,	61,0,	
61,0,	61,0,	61,0,	61,0,	
61,0,	61,0,	0,0,	0,0,	
61,0,	61,0,	61,0,	61,0,	
61,0,	61,0,	61,0,	61,0,	
61,0,	61,0,	61,0,	61,0,	
61,0,	61,0,	61,0,	61,0,	
61,0,	61,0,	61,0,	61,0,	
61,0,	0,0,	61,0,	61,0,	
61,0,	61,0,	61,0,	61,0,	
61,0,	61,30,	61,0,	61,0,	
61,0,	61,0,	61,0,	61,0,	
61,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	61,0,	
61,63,	61,0,	61,0,	61,0,	
61,0,	61,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
61,0,	61,0,	61,0,	61,0,	
0,0,	61,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
0,0,	0,0,	0,0,	0,0,	
61,0,	61,0,	61,0,	61,0,	
61,0,	0,0,	0,0,	0,0,	
0,0};
struct yysvf yysvec[] = {
0,	0,	0,
yycrank+1,	0,		0,	
yycrank+0,	yysvec+1,	0,	
yycrank+0,	0,		yyvstop+1,
yycrank+1,	0,		0,	
yycrank+1,	0,		0,	
yycrank+-123,	0,		yyvstop+3,
yycrank+116,	0,		yyvstop+5,
yycrank+56,	0,		0,	
yycrank+2,	0,		0,	
yycrank+0,	0,		yyvstop+7,
yycrank+0,	0,		yyvstop+9,
yycrank+0,	0,		yyvstop+11,
yycrank+126,	0,		yyvstop+13,
yycrank+27,	yysvec+13,	yyvstop+15,
yycrank+15,	yysvec+13,	yyvstop+17,
yycrank+25,	yysvec+13,	yyvstop+19,
yycrank+11,	yysvec+13,	yyvstop+21,
yycrank+0,	yysvec+13,	0,	
yycrank+-248,	0,		0,	
yycrank+0,	yysvec+5,	yyvstop+23,
yycrank+0,	yysvec+6,	0,	
yycrank+0,	0,		yyvstop+25,
yycrank+0,	yysvec+7,	0,	
yycrank+0,	0,		yyvstop+27,
yycrank+120,	0,		yyvstop+29,
yycrank+13,	0,		0,	
yycrank+15,	0,		0,	
yycrank+-252,	0,		0,	
yycrank+6,	0,		0,	
yycrank+119,	0,		yyvstop+31,
yycrank+12,	yysvec+13,	0,	
yycrank+29,	yysvec+13,	0,	
yycrank+62,	yysvec+13,	0,	
yycrank+61,	yysvec+13,	0,	
yycrank+-4,	yysvec+19,	0,	
yycrank+0,	0,		yyvstop+33,
yycrank+9,	0,		yyvstop+35,
yycrank+0,	0,		yyvstop+37,
yycrank+0,	0,		yyvstop+39,
yycrank+-16,	yysvec+28,	0,	
yycrank+0,	yysvec+30,	0,	
yycrank+66,	yysvec+13,	0,	
yycrank+51,	yysvec+13,	0,	
yycrank+69,	yysvec+13,	0,	
yycrank+58,	yysvec+13,	0,	
yycrank+0,	0,		yyvstop+41,
yycrank+0,	0,		yyvstop+43,
yycrank+-349,	0,		0,	
yycrank+70,	yysvec+13,	0,	
yycrank+72,	yysvec+13,	0,	
yycrank+-476,	yysvec+48,	0,	
yycrank+0,	0,		yyvstop+45,
yycrank+75,	yysvec+13,	0,	
yycrank+74,	yysvec+13,	0,	
yycrank+62,	yysvec+13,	0,	
yycrank+0,	0,		yyvstop+47,
yycrank+-603,	yysvec+48,	0,	
yycrank+65,	yysvec+13,	0,	
yycrank+-730,	yysvec+48,	0,	
yycrank+0,	0,		yyvstop+49,
yycrank+-857,	yysvec+48,	0,	
yycrank+0,	0,		yyvstop+51,
yycrank+0,	0,		yyvstop+53,
0,	0,	0};
struct yywork *yytop = yycrank+984;
struct yysvf *yybgin = yysvec+1;
char yymatch[] = {
00  ,01  ,01  ,01  ,01  ,01  ,01  ,01  ,
01  ,011 ,012 ,01  ,01  ,01  ,01  ,01  ,
01  ,01  ,01  ,01  ,01  ,01  ,01  ,01  ,
01  ,01  ,01  ,01  ,01  ,01  ,01  ,01  ,
011 ,'!' ,01  ,01  ,01  ,01  ,01  ,047 ,
01  ,01  ,'*' ,01  ,01  ,01  ,01  ,'/' ,
'0' ,'0' ,'0' ,'0' ,'0' ,'0' ,'0' ,'0' ,
'0' ,'0' ,01  ,01  ,01  ,01  ,01  ,01  ,
01  ,'A' ,'A' ,'A' ,'A' ,'A' ,'A' ,'A' ,
'A' ,'A' ,'A' ,'A' ,'A' ,'A' ,'A' ,'A' ,
'A' ,'A' ,'A' ,'A' ,'A' ,'A' ,'A' ,'A' ,
'A' ,'A' ,'A' ,01  ,01  ,01  ,01  ,'_' ,
01  ,'a' ,'a' ,'a' ,'a' ,'a' ,'a' ,'a' ,
'a' ,'a' ,'a' ,'a' ,'a' ,'a' ,'a' ,'a' ,
'a' ,'a' ,'a' ,'a' ,'a' ,'a' ,'a' ,'a' ,
'a' ,'a' ,'a' ,01  ,01  ,01  ,01  ,01  ,
0};
char yyextra[] = {
0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,
0};
#ifndef lint
static	char ncform_sccsid[] = "@(#)ncform 1.2 86/10/08 SMI"; /* from S5R2 1.2 */
#endif

int yylineno =1;
# define YYU(x) x
# define NLSTATE yyprevious=YYNEWLINE
char yytext[YYLMAX];
struct yysvf *yylstate [YYLMAX], **yylsp, **yyolsp;
char yysbuf[YYLMAX];
char *yysptr = yysbuf;
int *yyfnd;
extern struct yysvf *yyestate;
int yyprevious = YYNEWLINE;
yylook(){
	register struct yysvf *yystate, **lsp;
	register struct yywork *yyt;
	struct yysvf *yyz;
	int yych, yyfirst;
	struct yywork *yyr;
# ifdef LEXDEBUG
	int debug;
# endif
	char *yylastch;
	/* start off machines */
# ifdef LEXDEBUG
	debug = 0;
# endif
	yyfirst=1;
	if (!yymorfg)
		yylastch = yytext;
	else {
		yymorfg=0;
		yylastch = yytext+yyleng;
		}
	for(;;){
		lsp = yylstate;
		yyestate = yystate = yybgin;
		if (yyprevious==YYNEWLINE) yystate++;
		for (;;){
# ifdef LEXDEBUG
			if(debug)fprintf(yyout,"state %d\n",yystate-yysvec-1);
# endif
			yyt = yystate->yystoff;
			if(yyt == yycrank && !yyfirst){  /* may not be any transitions */
				yyz = yystate->yyother;
				if(yyz == 0)break;
				if(yyz->yystoff == yycrank)break;
				}
			*yylastch++ = yych = input();
			yyfirst=0;
		tryagain:
# ifdef LEXDEBUG
			if(debug){
				fprintf(yyout,"char ");
				allprint(yych);
				putchar('\n');
				}
# endif
			yyr = yyt;
			if ( (int)yyt > (int)yycrank){
				yyt = yyr + yych;
				if (yyt <= yytop && yyt->verify+yysvec == yystate){
					if(yyt->advance+yysvec == YYLERR)	/* error transitions */
						{unput(*--yylastch);break;}
					*lsp++ = yystate = yyt->advance+yysvec;
					goto contin;
					}
				}
# ifdef YYOPTIM
			else if((int)yyt < (int)yycrank) {		/* r < yycrank */
				yyt = yyr = yycrank+(yycrank-yyt);
# ifdef LEXDEBUG
				if(debug)fprintf(yyout,"compressed state\n");
# endif
				yyt = yyt + yych;
				if(yyt <= yytop && yyt->verify+yysvec == yystate){
					if(yyt->advance+yysvec == YYLERR)	/* error transitions */
						{unput(*--yylastch);break;}
					*lsp++ = yystate = yyt->advance+yysvec;
					goto contin;
					}
				yyt = yyr + YYU(yymatch[yych]);
# ifdef LEXDEBUG
				if(debug){
					fprintf(yyout,"try fall back character ");
					allprint(YYU(yymatch[yych]));
					putchar('\n');
					}
# endif
				if(yyt <= yytop && yyt->verify+yysvec == yystate){
					if(yyt->advance+yysvec == YYLERR)	/* error transition */
						{unput(*--yylastch);break;}
					*lsp++ = yystate = yyt->advance+yysvec;
					goto contin;
					}
				}
			if ((yystate = yystate->yyother) && (yyt= yystate->yystoff) != yycrank){
# ifdef LEXDEBUG
				if(debug)fprintf(yyout,"fall back to state %d\n",yystate-yysvec-1);
# endif
				goto tryagain;
				}
# endif
			else
				{unput(*--yylastch);break;}
		contin:
# ifdef LEXDEBUG
			if(debug){
				fprintf(yyout,"state %d char ",yystate-yysvec-1);
				allprint(yych);
				putchar('\n');
				}
# endif
			;
			}
# ifdef LEXDEBUG
		if(debug){
			fprintf(yyout,"stopped at %d with ",*(lsp-1)-yysvec-1);
			allprint(yych);
			putchar('\n');
			}
# endif
		while (lsp-- > yylstate){
			*yylastch-- = 0;
			if (*lsp != 0 && (yyfnd= (*lsp)->yystops) && *yyfnd > 0){
				yyolsp = lsp;
				if(yyextra[*yyfnd]){		/* must backup */
					while(yyback((*lsp)->yystops,-*yyfnd) != 1 && lsp > yylstate){
						lsp--;
						unput(*yylastch--);
						}
					}
				yyprevious = YYU(*yylastch);
				yylsp = lsp;
				yyleng = yylastch-yytext+1;
				yytext[yyleng] = 0;
# ifdef LEXDEBUG
				if(debug){
					fprintf(yyout,"\nmatch ");
					sprint(yytext);
					fprintf(yyout," action %d\n",*yyfnd);
					}
# endif
				return(*yyfnd++);
				}
			unput(*yylastch);
			}
		if (yytext[0] == 0  /* && feof(yyin) */)
			{
			yysptr=yysbuf;
			return(0);
			}
		yyprevious = yytext[0] = input();
		if (yyprevious>0)
			output(yyprevious);
		yylastch=yytext;
# ifdef LEXDEBUG
		if(debug)putchar('\n');
# endif
		}
	}
yyback(p, m)
	int *p;
{
if (p==0) return(0);
while (*p)
	{
	if (*p++ == m)
		return(1);
	}
return(0);
}
	/* the following are only used in the lex library */
yyinput(){
	return(input());
	}
yyoutput(c)
  int c; {
	output(c);
	}
yyunput(c)
   int c; {
	unput(c);
	}
