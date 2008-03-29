callbacks
on: aSymbol of: anObject
	self value: (self labelForSelector: aSymbol of: anObject).
	self callback: (MessageSend receiver: anObject selector: aSymbol)