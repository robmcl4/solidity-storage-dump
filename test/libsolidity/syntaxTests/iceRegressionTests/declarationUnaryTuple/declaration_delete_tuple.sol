contract C
{
    function f() public
    {
        int x = delete (,0);
    }
}
// ----
// TypeError 4247: (68-69='0'): Expression has to be an lvalue.
// TypeError 9767: (59-70='delete (,0)'): Unary operator delete cannot be applied to type tuple(,int_const 0)
