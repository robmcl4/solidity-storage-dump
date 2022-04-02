contract A {
    function f() external {}
    function g() external pure {}
}

contract B is A {
    function h() external {
        function() external f = A.f;
        function() external pure g = A.g;
    }
}
// ----
// TypeError 9574: (133-160='function() external f = A.f'): Type function A.f() is not implicitly convertible to expected type function () external. Special functions can not be converted to function types.
// TypeError 9574: (170-202='function() external pure g = A.g'): Type function A.g() pure is not implicitly convertible to expected type function () pure external. Special functions can not be converted to function types.
