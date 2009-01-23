printing
printOn: aStream
	| document |
	document := WAHtmlDocument on: aStream.
	self encodeOn: document usingHtmlEntities: false