values
at: aSymbol put: anObject 
	self addValue: ((WAValueExpression key: aSymbol)
			value: anObject;
			yourself)