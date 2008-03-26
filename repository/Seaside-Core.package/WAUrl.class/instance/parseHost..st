parsing
parseHost: aString
	| string index |
	string := aString.
	index := string indexOf: $@.
	index > 1 ifTrue: [
		username := string copyFrom: 1 to: index - 1.
		string := string copyFrom: index + 1 to: string size.
		index := username indexOf: $:.
		index > 0 
			ifFalse: [ username := self decode: username ]
			ifTrue: [
				password := self decode: (username copyFrom: index + 1 to: username size).
				username := self decode: (username copyFrom: 1 to: index - 1) ] ].
	index := string lastIndexOf: $:.
	index > 0 ifTrue: [
		port := string copyFrom: index + 1 to: string size.
		port := (port allSatisfy: [ :each | each isDigit ])
			ifTrue: [ port asInteger ].
		string := string copyFrom: 1 to: index - 1 ].
	hostname := self decode: string