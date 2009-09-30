file library
convertToSmalltalkNewlines: aString
	"Convert any line endings (CR, CRLF, LF) to CR."
	
	aString isNil ifTrue: [ ^ nil ].
	^ String streamContents: [ :writeStream |
		| readStream |
		readStream := aString readStream.
		[ readStream atEnd ] whileFalse: [
			| next |
			next := readStream next.
			next = Character cr
				ifTrue: [
					readStream peek = Character lf
						ifTrue: [ readStream skip: 1 ].
					writeStream nextPut: Character cr ]
				ifFalse: [
					next = Character lf
						ifTrue: [ writeStream nextPut: Character cr ]
						ifFalse: [ writeStream nextPut: next ] ] ] ]