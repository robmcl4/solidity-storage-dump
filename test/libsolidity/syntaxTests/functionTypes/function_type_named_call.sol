contract C {
    function f() pure public {
        function(uint a) returns (uint) x;
        x({a:2});
    }
}
// ----
// Warning 6162: (61-67='uint a'): Naming function type parameters is deprecated.
// TypeError 4974: (95-103='x({a:2})'): Named argument "a" does not match function declaration.
