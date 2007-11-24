instance creation
fromString: aString
	| language country |
	language := aString copyUpTo: $-.
	country := aString copyAfter: $-.
	country isEmpty ifTrue: [ country := nil ].
	^self
		language: language
		country: country