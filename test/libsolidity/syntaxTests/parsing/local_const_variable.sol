contract Foo {
	function localConst() returns (uint ret)
	{
		uint constant local = 4;
		return local;
	}
}
// ----
// ParserError 2314: (67-75='constant'): Expected ';' but got 'constant'
