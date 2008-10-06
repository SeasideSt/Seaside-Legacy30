utilities
assertFile: aString contentType: aMimeType handler: aHandler symbol: aSymbol library: aLibrary
	| context response |
	context := self requestContextWithUrl: '/seaside/files/', aLibrary name ,'/', aString.
	response := aHandler handleRequest: context.
	self assert: response status = 200.
	self assert: response contentType = aMimeType.
	self assert: response stream contents = (aLibrary perform: aSymbol)