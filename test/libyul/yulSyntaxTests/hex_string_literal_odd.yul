{
    let name := hex"abc"
}
// ====
// dialect: evm
// ----
// ParserError 1465: (18-24='hex"ab'): Illegal token: Expected even number of hex-nibbles.
