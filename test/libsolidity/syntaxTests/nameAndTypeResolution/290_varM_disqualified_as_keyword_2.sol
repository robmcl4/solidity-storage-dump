contract test {
    function f() public {
        intM should = 4;
    }
}
// ----
// DeclarationError 7920: (50-54='intM'): Identifier not found or not unique.
