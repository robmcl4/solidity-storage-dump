contract C {
    struct S { uint a; }
    /// @inheritdoc S
    function f() internal {
    }
}
// ----
// DocstringParsingError 1430: (42-59='/// @inheritdoc S'): Documentation tag @inheritdoc reference "S" is not a contract.
