Build a simple, embeddable interpreter for a feature flag Domain-Specific Language (DSL) in Go.


Core Requirements:


1. The DSL: The language should evaluate a boolean expression against a JSON-like context. The grammar should support: Literals (strings, numbers, booleans), Identifiers (accessing properties from the context e.g., `user.country`), Operators (`==`, `!=`, `>`, `<`, `&&`, `||`), Grouping (`( ... )`).


2. An `Evaluate` Function: Design the primary function `Evaluate(expression string, context map[string]interface{}) (bool, error)`.


Example Usage:
 

```go

context := map[string]interface{}{

"user": map[string]interface{}{"country": "DE", "age": 35, "isBetaUser": true},

}

expression := `(user.country == "DE" && user.age > 30) || user.isBetaUser == true`

result, err := Evaluate(expression, context) // Should return true

```


Since I am also learning golang as part of this project, let us also compile this to a WASM binary and ship it.