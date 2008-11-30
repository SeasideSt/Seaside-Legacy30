instance-creation
fromString: aString
	| language country delimeter |
	delimeter := (aString includes: $_)
		ifTrue: [ $_ ]
		ifFalse: [ $- ].
	language := aString copyUpTo: delimeter.
	country := aString copyAfter: delimeter.
	country isEmpty ifTrue: [ country := nil ].
	^self
		language: language
		country: country