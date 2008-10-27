private
keyFromContext: aRequestContext ifAbsent: aBlock
	| keyString |
	"Under some circumstances, HTTP fields are collections of values"
	^ [	keyString := aRequestContext request at: self handlerField.
		(keyString isString not and: [ keyString isSequenceable ])
			ifTrue: [ keyString first ]
			ifFalse: [ keyString ] ]
				on: Error do: [:e | aBlock value ]