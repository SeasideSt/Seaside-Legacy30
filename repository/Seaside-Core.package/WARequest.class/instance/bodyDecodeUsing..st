accessing
bodyDecodeUsing: aCharSetName

	body == nil ifTrue: [ self error: 'No request body' ].
	^(WACodec forEncoding: aCharSetName) decode: body