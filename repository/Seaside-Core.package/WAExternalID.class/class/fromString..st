instance-creation
fromString: aString
	| id |
	id := self new: aString size.
	aString keysAndValuesDo: [ :index :each |
		id at: index put: each asInteger ].
	^ id