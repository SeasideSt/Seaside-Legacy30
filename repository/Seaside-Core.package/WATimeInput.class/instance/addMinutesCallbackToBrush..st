private callbacks
addMinutesCallbackToBrush: aBrush
	self hasCallback ifFalse: [^self].
	aBrush on: #minutes of: self