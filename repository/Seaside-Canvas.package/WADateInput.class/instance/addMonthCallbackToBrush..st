private callbacks
addMonthCallbackToBrush: aBrush
	self hasCallback ifFalse: [^self].
	aBrush on: #month of: self