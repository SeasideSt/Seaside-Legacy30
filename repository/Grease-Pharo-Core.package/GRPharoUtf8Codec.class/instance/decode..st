decoding
decode: aString
	| readStream writeStream |
	readStream := self decoderFor: aString asByteArray readStream.
	writeStream := WriteStream on: (String new: aString size).
	[ readStream atEnd ]
		whileFalse: [ writeStream nextPutAll: (readStream next: 16rFFF) ].
	^ writeStream contents