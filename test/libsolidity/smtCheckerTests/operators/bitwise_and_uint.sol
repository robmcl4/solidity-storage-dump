contract C {
	function f() public pure {
		uint8 x = 1;
		uint16 y = 0;
		assert(x & y != 0);
		x = 0xff;
		y = 0xffff;
		assert(x & y == 0xff);
		assert(x & y == 0xffff);
		assert(x & y == 0x0000);
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (74-92='assert(x & y != 0)'): CHC: Assertion violation happens here.\nCounterexample:\n\nx = 1\ny = 0\n\nTransaction trace:\nC.constructor()\nC.f()
// Warning 6328: (147-170='assert(x & y == 0xffff)'): CHC: Assertion violation happens here.\nCounterexample:\n\nx = 255\ny = 65535\n\nTransaction trace:\nC.constructor()\nC.f()
// Warning 6328: (174-197='assert(x & y == 0x0000)'): CHC: Assertion violation happens here.\nCounterexample:\n\nx = 255\ny = 65535\n\nTransaction trace:\nC.constructor()\nC.f()
