parsing-internal
parseCharacterHexDigit
	| digit |
	stream atEnd ifFalse: 
		[ digit := stream next greaseInteger.
		(digit 
			between: 48
			and: 57) ifTrue: 
			[ "$0"
			"$9"
			^ digit - 48 ].
		(digit 
			between: 65
			and: 70) ifTrue: 
			[ "$A"
			"$F"
			^ digit - 55 ].
		(digit 
			between: 97
			and: 102) ifTrue: 
			[ "$a"
			"$f"
			^ digit - 87 ] ].
	self error: 'hex-digit expected'