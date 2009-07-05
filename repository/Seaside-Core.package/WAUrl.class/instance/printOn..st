printing
printOn: aStream
	| document codec |
	codec :=  [ self requestContext codec ]
		on: WARequestContextNotFound
		do: [ WANullCodec new ].
	document := WAHtmlDocument on: aStream codec: codec.
	self encodeOn: document usingHtmlEntities: false