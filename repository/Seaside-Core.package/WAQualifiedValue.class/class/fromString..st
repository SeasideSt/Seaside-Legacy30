instance creation
fromString: aString
	^Array streamContents: [ :stream |
		| values |
		values := aString findTokens: ','.
		values do: [ :each |
			| value quality |
			(each includes: $;)
				ifTrue: [
					value := self valueClass fromString: (each copyUpTo: $;) trimBlanks.
					quality := Float readFrom: ((each copyAfter: $;) copyAfter: $=) readStream ]
				ifFalse: [
					value := self valueClass fromString: each trimBlanks.
					quality := Float infinity ].
			stream nextPut: (self value: value quality: quality) ] ]