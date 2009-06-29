parsing-internal
parseCharacterHexDigit
	| digit |
	stream atEnd ifFalse: [
		digit := stream next seasideInteger.
		(digit between: 48 "$0" and: 57 "$9")
			ifTrue: [ ^ digit - 48 ].
		(digit between: 65 "$A" and:  70 "$F")
			ifTrue: [ ^ digit - 55 ].
		(digit between: 97 "$a" and: 102 "$f")
			ifTrue: [ ^ digit - 87 ] ].
	self error: 'hex-digit expected'