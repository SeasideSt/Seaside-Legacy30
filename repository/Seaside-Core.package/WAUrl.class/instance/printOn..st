printing
printOn: aStream
	| document requestContext codec |
	requestContext :=  [ self requestContext ]
		on: WARequestContextNotFound
		do: [ nil ].
	codec := requestContext isNil
		ifTrue: [ WANullCodec new ]
		ifFalse: [ requestContext codec ].
	document := WAHtmlDocument on: aStream codec: codec.
	self encodeOn: document usingHtmlEntities: false