type MyAddress is address;
type MyUInt8 is uint8;

function f() pure {
    MyAddress.wrap(address(5));
    MyUInt8.wrap(5);
    MyUInt8.wrap(50);
}
// ----
// Warning 6133: (75-101='MyAddress.wrap(address(5))'): Statement has no effect.
// Warning 6133: (107-122='MyUInt8.wrap(5)'): Statement has no effect.
// Warning 6133: (128-144='MyUInt8.wrap(50)'): Statement has no effect.
