contract C {
    function f() public pure {
        revert();
        uint a = 0; a;
    }
}
// ----
// Warning 5740: (70-83='uint a = 0; a'): Unreachable code.
