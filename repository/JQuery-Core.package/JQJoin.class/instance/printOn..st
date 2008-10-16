as yet unclassified
printOn: aStream
	| normal special |
	normal := self collection select: [ :each | each isString or: [ each isVariableBinding ] ].
	special := self collection reject: [ :each | each isString or: [ each isVariableBinding ] ].
	aStream nextPutAll: JQuery functionName; nextPutAll: '.extend({'.
	normal 
		do: [ :each |
			each isString
				ifTrue: [ aStream javascript: each; nextPut: $:; javascript: nil ]
				ifFalse: [ aStream javascript: each key; nextPut: $:; javascript: each value ] ]
		separatedBy: [ aStream nextPut: $, ].
	aStream nextPut: $}.
	special do: [ :each | aStream nextPut: $,; javascript: each ].
	aStream nextPut: $)