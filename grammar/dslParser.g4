grammar dslParser;

options {
    tokenVocab = dslLexer;
}

// Parser Rules
expression
    : orExpression
    ;

orExpression
    : andExpression ('||' andExpression)*
    ;

andExpression
    : comparisonExpression ('&&' comparisonExpression)*
    ;

comparisonExpression
    : left=primaryExpression (comparisonOperator right=primaryExpression)?
    ;

comparisonOperator
    : '=='
    | '!='
    | '>'
    | '<'
    | '>='
    | '<='
    ;

primaryExpression
    : literal
    | identifier
    | '(' expression ')'
    ;

literal
    : STRING
    | NUMBER
    | BOOLEAN
    ;

identifier
    : IDENTIFIER ('.' IDENTIFIER)*
    ;

// Lexer Rules
