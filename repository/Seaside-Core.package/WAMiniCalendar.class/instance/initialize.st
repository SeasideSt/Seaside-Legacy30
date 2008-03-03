initialization
initialize
	super initialize.
	month := WAValueHolder with: Date today month.
	date := WAValueHolder new.
	canSelectBlock := [ :value | true ].
	selectBlock := [ :value | self answer: value ]