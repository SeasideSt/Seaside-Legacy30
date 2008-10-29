accessing
codec
	codec isNil ifTrue: [ codec := self defaultCodec ].
	^codec