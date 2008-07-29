values
at: aSymbol put: anObject 
	self addValue: ((WAOverrideValue key: aSymbol)
			value: anObject;
			yourself)