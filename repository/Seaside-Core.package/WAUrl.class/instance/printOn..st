printing
printOn: aStream
	| document |
	document := WAHtmlStreamDocument on: aStream.
	self encodeOn: document usingHtmlEntities: false