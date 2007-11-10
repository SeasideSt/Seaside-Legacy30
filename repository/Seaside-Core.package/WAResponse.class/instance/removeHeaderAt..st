accessing-headers
removeHeaderAt: aString
	headers isNil ifTrue: [
		^self ].	

	headers := self headers reject: [ :each |
		each key = aString ]