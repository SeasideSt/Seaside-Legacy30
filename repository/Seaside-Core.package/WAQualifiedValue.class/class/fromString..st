instance creation
fromString: aString
	| result |
	result := Array streamContents: [ :stream |
		| values |
		values := aString findTokens: ','.
		values do: [ :each |
			| value quality |
			(each includes: $;)
				ifTrue: [
					value := self valueClass fromString: (each copyUpTo: $;) trimBoth.
					quality := Float readFrom: ((each copyAfter: $;) copyAfter: $=) readStream ]
				ifFalse: [
					value := self valueClass fromString: each trimBoth.
					quality := Float infinity ].
			stream nextPut: (self value: value quality: quality) ] ].
	^result asSortedCollection: [ :a :b |
		(a <= b) not ]