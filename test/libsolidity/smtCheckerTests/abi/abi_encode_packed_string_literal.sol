contract C {
	function abiencodePackedStringLiteral() public pure {
		bytes memory b1 = abi.encodePacked("");
		bytes memory b2 = abi.encodePacked("");
		// should hold, but currently fails due to string literal abstraction
		assert(b1.length == b2.length);

		bytes memory b3 = abi.encodePacked(bytes(""));
		assert(b1.length == b3.length); // should fail

		bytes memory b4 = abi.encodePacked(bytes24(""));
		// should hold, but currently fails due to string literal abstraction
		assert(b1.length == b4.length);

		bytes memory b5 = abi.encodePacked(string(""));
		assert(b1.length == b5.length); // should fail

		bytes memory b6 = abi.encode("");
		assert(b1.length == b6.length); // should fail
	}
}
// ====
// SMTEngine: all
// ----
// Warning 1218: (226-256='assert(b1.length == b2.length)'): CHC: Error trying to invoke SMT solver.
// Warning 1218: (310-340='assert(b1.length == b3.length)'): CHC: Error trying to invoke SMT solver.
// Warning 1218: (483-513='assert(b1.length == b4.length)'): CHC: Error trying to invoke SMT solver.
// Warning 1218: (568-598='assert(b1.length == b5.length)'): CHC: Error trying to invoke SMT solver.
// Warning 1218: (654-684='assert(b1.length == b6.length)'): CHC: Error trying to invoke SMT solver.
// Warning 6328: (226-256='assert(b1.length == b2.length)'): CHC: Assertion violation might happen here.
// Warning 6328: (310-340='assert(b1.length == b3.length)'): CHC: Assertion violation might happen here.
// Warning 6328: (483-513='assert(b1.length == b4.length)'): CHC: Assertion violation might happen here.
// Warning 6328: (568-598='assert(b1.length == b5.length)'): CHC: Assertion violation might happen here.
// Warning 6328: (654-684='assert(b1.length == b6.length)'): CHC: Assertion violation might happen here.
// Warning 4661: (226-256='assert(b1.length == b2.length)'): BMC: Assertion violation happens here.
// Warning 4661: (310-340='assert(b1.length == b3.length)'): BMC: Assertion violation happens here.
// Warning 4661: (483-513='assert(b1.length == b4.length)'): BMC: Assertion violation happens here.
// Warning 4661: (568-598='assert(b1.length == b5.length)'): BMC: Assertion violation happens here.
// Warning 4661: (654-684='assert(b1.length == b6.length)'): BMC: Assertion violation happens here.
