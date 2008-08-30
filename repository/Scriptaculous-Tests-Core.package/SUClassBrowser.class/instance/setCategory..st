initialization
setCategory: aSymbol
	category := aSymbol.
	self setSelector: (self selectors isEmpty
		ifFalse: [ self selectors first ])