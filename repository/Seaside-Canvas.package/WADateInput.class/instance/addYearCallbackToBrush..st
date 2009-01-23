private callbacks
addYearCallbackToBrush: aBrush
	self hasCallback ifFalse: [^self].
	aBrush on: #year of: self