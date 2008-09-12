callbacks
on: aSymbol of: anObject
	self callback: (MessageSend receiver: anObject selector: aSymbol).
	self with: (self labelForSelector: aSymbol of: anObject)