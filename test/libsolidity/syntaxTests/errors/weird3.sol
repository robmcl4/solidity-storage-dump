error E();

contract C {
    E x;
}
// ----
// TypeError 5172: (29-30='E'): Name has to refer to a struct, enum or contract.
