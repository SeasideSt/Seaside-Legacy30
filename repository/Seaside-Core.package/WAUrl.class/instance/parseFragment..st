parsing
parseFragment: aString
	aString isEmpty ifTrue: [ ^ self ].
	fragment := self decode: aString