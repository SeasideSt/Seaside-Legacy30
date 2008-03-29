callbacks
on: aSymbol of: anObject
	self callback: [ anObject perform: aSymbol ].
	self with: (self labelForSelector: aSymbol of: anObject)