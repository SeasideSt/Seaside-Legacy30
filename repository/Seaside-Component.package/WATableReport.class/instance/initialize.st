initialize
initialize
	super initialize.
	isReversed := false.
	rows := #().
	columns := #().
	sortColumn := WAValueHolder new.
	rowColors := #('white' 'lightyellow').
	rowPeriod := 3