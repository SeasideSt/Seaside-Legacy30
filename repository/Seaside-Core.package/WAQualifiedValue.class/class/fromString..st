instance creation
fromString: aString
	^Array streamContents: [ :stream |
		| values |
		values := aString findTokens: ','.
		values do: [ :each |
			| value quality |
			value := self valueClass fromString: (each copyUpTo: $;) trimBoth.
			quality := (each includes: $;)
				ifTrue: [ Float readFrom: ((each copyAfter: $;) copyAfter: $=) readStream ]
				ifFalse: [ Float infinity ].
			stream nextPut: (self value: value quality: quality) ] ]