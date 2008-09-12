displaying
seasideString
	^ String streamContents: 
		[ :stream | 
		username isNil ifFalse: 
			[ stream
				nextPutAll: username;
				nextPutAll: ' <' ].
		stream nextPutAll: address.
		username isNil ifFalse: [ stream nextPut: $> ] ]