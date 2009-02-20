handling-helpers
urlKeyFromContext: aRequestContext ifAbsent: absentBlock
	"Answer the key found in the request URL. If none is found, return the result of evaluating absentBlock.
	In some circumstances, HTTP fields are collections of values. In that case we use the first value."
	
	| keyString |
	^ [	keyString := aRequestContext request at: self keyField.
		(keyString isString not and: [ keyString isSequenceable ])
			ifTrue: [ keyString first ]
			ifFalse: [ keyString ] ]
				on: Error do: [:e | absentBlock value ]