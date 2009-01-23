private callbacks
addDayCallbackToBrush: aBrush
	self hasCallback ifFalse: [^self].
	aBrush on: #day of: self