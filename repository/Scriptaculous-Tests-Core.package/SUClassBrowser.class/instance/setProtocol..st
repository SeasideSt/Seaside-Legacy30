initialization
setProtocol: aSymbol 
	protocol := aSymbol.
	self setSelector: (self selectors isEmpty ifFalse: [ self selectors first ])