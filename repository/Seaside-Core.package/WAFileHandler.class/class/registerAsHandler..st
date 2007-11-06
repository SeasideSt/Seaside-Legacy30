initialization
registerAsHandler: aString
	^ WADispatcher default register: (self named: aString)