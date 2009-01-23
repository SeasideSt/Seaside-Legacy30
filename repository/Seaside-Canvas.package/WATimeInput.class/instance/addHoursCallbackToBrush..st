private callbacks
addHoursCallbackToBrush: aBrush
	self hasCallback ifFalse: [^self].
	aBrush on: #hours of: self