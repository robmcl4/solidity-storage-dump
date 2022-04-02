contract C {
	function abiEncodeStringLiteral(bytes4 sel) public pure {
		bytes memory b1 = abi.encodeWithSelector(sel, "");
		bytes memory b2 = abi.encodeWithSelector(sel, "");
		// should hold, but currently fails due to string literal abstraction
		assert(b1.length == b2.length);

		bytes memory b3 = abi.encodeWithSelector(sel, bytes(""));
		assert(b1.length == b3.length); // should fail

		bytes memory b4 = abi.encodeWithSelector(sel, bytes24(""));
		// should hold, but currently fails due to string literal abstraction
		assert(b1.length == b4.length);

		bytes memory b5 = abi.encodeWithSelector(sel, string(""));
		assert(b1.length == b5.length); // should fail

		bytes memory b6 = abi.encodeWithSelector(0xcafecafe, bytes24(""));
		assert(b4.length == b6.length); // should fail
	}
}
// ====
// SMTEngine: all
// ----
// Warning 1218: (252-282='assert(b1.length == b2.length)'): CHC: Error trying to invoke SMT solver.
// Warning 1218: (347-377='assert(b1.length == b3.length)'): CHC: Error trying to invoke SMT solver.
// Warning 1218: (531-561='assert(b1.length == b4.length)'): CHC: Error trying to invoke SMT solver.
// Warning 1218: (627-657='assert(b1.length == b5.length)'): CHC: Error trying to invoke SMT solver.
// Warning 1218: (746-776='assert(b4.length == b6.length)'): CHC: Error trying to invoke SMT solver.
// Warning 6328: (252-282='assert(b1.length == b2.length)'): CHC: Assertion violation might happen here.
// Warning 6328: (347-377='assert(b1.length == b3.length)'): CHC: Assertion violation might happen here.
// Warning 6328: (531-561='assert(b1.length == b4.length)'): CHC: Assertion violation might happen here.
// Warning 6328: (627-657='assert(b1.length == b5.length)'): CHC: Assertion violation might happen here.
// Warning 6328: (746-776='assert(b4.length == b6.length)'): CHC: Assertion violation might happen here.
// Warning 4661: (252-282='assert(b1.length == b2.length)'): BMC: Assertion violation happens here.
// Warning 4661: (347-377='assert(b1.length == b3.length)'): BMC: Assertion violation happens here.
// Warning 4661: (531-561='assert(b1.length == b4.length)'): BMC: Assertion violation happens here.
// Warning 4661: (627-657='assert(b1.length == b5.length)'): BMC: Assertion violation happens here.
// Warning 4661: (746-776='assert(b4.length == b6.length)'): BMC: Assertion violation happens here.
