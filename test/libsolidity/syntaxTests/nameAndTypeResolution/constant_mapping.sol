contract C {
    mapping(uint => uint) constant x;
}
// ----
// TypeError 9259: (17-49='mapping(uint => uint) constant x'): Only constants of value type and byte array type are implemented.
