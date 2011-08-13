parsing
parsePath: aString
	| input part |
	input := aString readStream.
	input peek = $/ 
		ifTrue: [ path := nil ].
	[ input atEnd ] whileFalse: [
		part := input upTo: $/.
		part isEmpty ifFalse: [
			part = '..'
				ifTrue: [ self path isEmpty ifFalse: [ self path removeLast ] ]
				ifFalse: [ part = '.' ifFalse: [ self path addLast: (self decode: part) ] ] ] ].
	slash := aString notEmpty and: [ aString last = $/ ]