contract C {
	function f() public {
		now;
	}
}
// ----
// TypeError 7359: (38-41='now'): "now" has been deprecated. Use "block.timestamp" instead.
