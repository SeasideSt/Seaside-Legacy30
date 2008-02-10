processing
processRequest: aRequest
	| path |
	path := self pathForRequest: aRequest.
	^ (self listing and: [ path endsWith: '/' ])
		ifTrue: [ self processDirectory: path request: aRequest ]
		ifFalse: [ self processFile: path request: aRequest ]