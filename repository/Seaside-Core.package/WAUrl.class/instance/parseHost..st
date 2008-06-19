parsing
parseHost: aString
	| string temp index |
	aString isEmpty 
		ifTrue: [ ^ self ].
	string := aString.
	index := string indexOf: $@.
	index > 1 ifTrue: [
		temp := string copyFrom: 1 to: index - 1.
		string := string copyFrom: index + 1 to: string size.
		index := temp indexOf: $:.
		index > 0 
			ifFalse: [ self username: (self decode: temp) ]
			ifTrue: [
				self username: (self decode: (temp copyFrom: 1 to: index - 1)).
				self password: (self decode: (temp copyFrom: index + 1 to: temp size)) ] ].
	index := string lastIndexOf: $:.
	index > 0 ifTrue: [
		temp := string copyFrom: index + 1 to: string size.
		string := string copyFrom: 1 to: index - 1.
		self port: ((temp notEmpty and: [ temp allSatisfy: [ :each | each isDigit ] ])
			ifTrue: [ temp asInteger ]) ].
	self hostname: (self decode: string)