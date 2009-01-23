private callbacks
addSecondsCallbackToBrush: aBrush
	self hasCallback ifFalse: [^self].
	aBrush on: #seconds of: self