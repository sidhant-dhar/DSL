lexer grammar dslLexer;

STRING
    : '"' (~["\r\n])* '"'
    ;

NUMBER
    : '-'? [0-9]+ ('.' [0-9]+)?
    ;

BOOLEAN
    : 'true'
    | 'false'
    ;

IDENTIFIER
    : [a-zA-Z_][a-zA-Z0-9_]*
    ;

WS
    : [ \t\r\n]+ -> skip
    ;

// Skip single line comments
LINE_COMMENT
    : '//' ~[\r\n]* -> skip
    ;