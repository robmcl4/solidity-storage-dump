contract C {
	function foo() public pure { type(D); }
}
contract D {
	function foo() public pure { type(C); }
}
// ----
// Warning 6133: (43-50='type(D)'): Statement has no effect.
// Warning 6133: (99-106='type(C)'): Statement has no effect.
