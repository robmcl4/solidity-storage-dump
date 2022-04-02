interface D { function e() external; }

contract C {
	bool locked = true;

	function call(address target) public {
		assert(locked);
		locked = false;
		D(target).e();
		locked = true;
	}
}
// ====
// SMTEngine: all
// ----
// Warning 1218: (117-131='assert(locked)'): CHC: Error trying to invoke SMT solver.
// Warning 6328: (117-131='assert(locked)'): CHC: Assertion violation might happen here.
// Warning 4661: (117-131='assert(locked)'): BMC: Assertion violation happens here.
