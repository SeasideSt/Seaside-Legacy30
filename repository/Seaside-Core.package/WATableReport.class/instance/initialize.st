accessing
initialize
	super initialize.
	isReversed := false.
	columns := #().
	sortColumn := WAValueHolder new.
	rowColors := #('white' 'lightyellow').
	rowPeriod := 3