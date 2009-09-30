convenience
decode: aString
	| readStream writeStream |
	readStream := self decoderFor: aString readStream.
	writeStream := WriteStream on: (String new: aString size).
	[ readStream atEnd ]
		whileFalse: [ writeStream nextPutAll: (readStream next: 1024) ].
	^ writeStream contents