contract C {

function f() public pure { int[][]; }

}
// ====
// SMTEngine: all
// ----
// Warning 6133: (41-48='int[][]'): Statement has no effect.
// Warning 8364: (41-46='int[]'): Assertion checker does not yet implement type type(int256[] memory)
// Warning 8364: (41-48='int[][]'): Assertion checker does not yet implement type type(int256[] memory[] memory)
