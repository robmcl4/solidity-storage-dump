contract C {
	constructor() internal {}
}
// ----
// DeclarationError 1845: (14-39='constructor() internal {}'): Non-abstract contracts cannot have internal constructors. Remove the "internal" keyword and make the contract abstract to fix this.
