handling-helpers
urlKeyFromContext: aRequestContext ifAbsent: absentBlock
	"Answer the key found in the request URL. If none is found, return the result of evaluating absentBlock.
	In some circumstances, HTTP fields are collections of values. In that case we use the first value."
	
	| keyString |
	keyString := aRequestContext request at: self keyField ifAbsent: [ ^ absentBlock value ].
	^ (keyString isString not and: [ keyString isSequenceable ])
		ifTrue: [ 
			keyString isEmpty
				ifTrue: [ absentBlock value ]
				ifFalse: [ keyString first ] ]
		ifFalse: [ keyString ]