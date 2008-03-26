parsing
parseQuery: aString
	| input string index |
	input := aString readStream.
	[ input atEnd ] whileFalse: [
		string := input upTo: $&.
		index := string indexOf: $=.
		index > 0
			ifFalse: [ self addParameter: (self decode: string) ]
			ifTrue: [
				self
					addParameter: (self decode: (string copyFrom: 1 to: index - 1))
					value: (self decode: (string copyFrom: index + 1 to: string size)) ] ]