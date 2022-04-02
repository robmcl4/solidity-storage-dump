/// @a&b test
contract C {
	/// @custom:x^y test2
	function f() public pure {}
	/// @custom:
	function g() public pure {}
	/// @custom:abcDEF
	function h() public pure {}
	/// @custom:abc-def
	function i() public pure {}
	/// @custom
	function j() public pure {}
}
// ----
// DocstringParsingError 6546: (0-14='/// @a&b test'): Documentation tag @a&b not valid for contracts.
// DocstringParsingError 2968: (28-49='/// @custom:x^y test2'): Invalid character in custom tag @custom:x^y. Only lowercase letters and "-" are permitted.
// DocstringParsingError 6564: (80-92='/// @custom:'): Custom documentation tag must contain a chosen name, i.e. @custom:mytag.
// DocstringParsingError 2968: (123-141='/// @custom:abcDEF'): Invalid character in custom tag @custom:abcDEF. Only lowercase letters and "-" are permitted.
// DocstringParsingError 6564: (222-233='/// @custom'): Custom documentation tag must contain a chosen name, i.e. @custom:mytag.
