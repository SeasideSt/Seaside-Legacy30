printing
printOn: aStream
	| document |
	document := WAHtmlStreamDocument new.
	document stream: aStream.
	self encodeOn: document usingHtmlEntities: false