contract C {
    function f(mapping(uint => uint)[] storage) external pure {
    }
}
// ----
// TypeError 6651: (28-59='mapping(uint => uint)[] storage'): Data location must be "memory" or "calldata" for parameter in external function, but "storage" was given.
