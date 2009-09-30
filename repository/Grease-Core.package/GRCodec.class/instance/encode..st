convenience
encode: aString
	| writeStream |
	writeStream := self encoderFor: (WriteStream
		on: (String new: aString size)).
	writeStream nextPutAll: aString.
	^ writeStream contents