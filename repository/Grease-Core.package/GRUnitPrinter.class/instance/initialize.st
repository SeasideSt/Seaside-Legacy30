initialization
initialize
	super initialize.
	integerPrinter := GRNumberPrinter new precision: 0.
	fractionPrinter := GRNumberPrinter new precision: 1