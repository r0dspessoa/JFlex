%%
%standalone
%class MiniJavaLexer

digit = [0-9]
letter = [A-Za-z]
digits = {digit} {digit}*
ident = {letter}({letter}|{digit})*

whitespace = [ \t\r\f]+

KW_IF = if
KW_ELSE = else
KW_WHILE = while
KW_RETURN = return
KW_FOR = for
KW_DO = do
KW_SWITCH = switch
KW_CASE = case
KW_BREAK = break
KW_BOOLEAN = boolean
KW_CHAR = char
KW_DOUBLE = double
KW_INT = int
KW_FLOAT = float
KW_LONG = long

OP_EQ = "=="
OP_NEQ = "!="
OP_PLUS = [+]
OP_MINUS = [-]
OP_MUL = [*]
OP_DIV = [/]
OP_ASSIGN = "="
OP_MIN = [<]
OP_MAX = [>]

DELIM_SEMI = [;]
DELIM_COMMA = [,]
DELIM_DOT = [.]
DELIM_COLON = [:]
DELIM_LBRACE = [{]
DELIM_RBRACE = [}]
DELIM_LPAR = [(]
DELIM_RPAR = [)]

COMMENT_SINGLE = \/\/.*
COMMENT_MULTI = \/\*([^*]|\*+[^/])*\*+\/

%%

{COMMENT_SINGLE} { System.out.print("<COMMENT_SINGLE> "); }
{COMMENT_MULTI}  { System.out.print("<COMMENT_MULTI> "); }

{KW_IF}       { System.out.print("<KW_IF> "); }
{KW_ELSE}     { System.out.print("<KW_ELSE> "); }
{KW_WHILE}    { System.out.print("<KW_WHILE> "); }
{KW_RETURN}   { System.out.print("<KW_RETURN> "); }
{KW_FOR}         { System.out.print("<KW_FOR> "); }
{KW_DO}          { System.out.print("<KW_DO> "); }
{KW_SWITCH}      { System.out.print("<KW_SWITCH> "); }
{KW_CASE}        { System.out.print("<KW_CASE> "); }
{KW_BREAK}       { System.out.print("<KW_BREAK> "); }
{KW_BOOLEAN}     { System.out.print("<KW_BOOLEAN> "); }
{KW_CHAR}        { System.out.print("<KW_CHAR> "); }
{KW_INT}         { System.out.print("<KW_INT> "); }
{KW_DOUBLE}      { System.out.print("<KW_DOUBLE> "); }
{KW_FLOAT}       { System.out.print("<KW_FLOAT> "); }
{KW_LONG}        { System.out.print("<KW_LONG> "); }

{OP_PLUS}     { System.out.print("<OP_PLUS> "); }
{OP_MINUS}    { System.out.print("<OP_MINUS> "); }
{OP_MUL}      { System.out.print("<OP_MUL> "); }
{OP_DIV}      { System.out.print("<OP_DIV> "); }
{OP_EQ}       { System.out.print("<OP_EQ> "); }
{OP_NEQ}      { System.out.print("<OP_NEQ> "); }
{OP_ASSIGN}   { System.out.print("<OP_ASSIGN> "); }
{OP_MIN}   { System.out.print("<OP_MIN> "); }
{OP_MAX}   { System.out.print("<OP_MAX> "); }

{DELIM_SEMI}  { System.out.print("<DELIM_SEMI> "); }
{DELIM_COMMA} { System.out.print("<DELIM_COMMA> "); }
{DELIM_LBRACE} { System.out.print("<DELIM_LBRACE> "); }
{DELIM_RBRACE} { System.out.print("<DELIM_RBRACE> "); }
{DELIM_LPAR}  { System.out.print("<DELIM_LPAR> "); }
{DELIM_RPAR}  { System.out.print("<DELIM_RPAR> "); }
{DELIM_DOT}  { System.out.print("<DELIM_DOT> "); }
{DELIM_COLON}  { System.out.print("<DELIM_COLON> "); }


{ident}       { System.out.print("<IDENT> "); }

{digits} { System.out.print("<INTEIRO> "); }
{digits}(\.{digits})? { System.out.print("<FLUTUANTE> "); }

{whitespace} { /* Ignorar */ }

. { System.out.print("<INVALID_CHAR> "+ yytext()); }

