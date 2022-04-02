contract C {
	mapping (uint => uint[])[] public m;

	constructor() {
		m.push();
		m[0][1].push();
		m[0][1].push();
		m[0][1].push();
		m[0][1][2] = 42;
	}

	function f() public view {
		uint y = this.m(0,1,2);
		assert(y == m[0][1][2]); // should hold
		assert(y == 1); // should fail
	}
}
// ====
// SMTEngine: all
// SMTIgnoreCex: yes
// ----
// Warning 6328: (256-270='assert(y == 1)'): CHC: Assertion violation happens here.
// Info 1180: Contract invariant(s) for :C:\n!(m.length <= 0)\n!(m[0][1].length <= 2)\n
