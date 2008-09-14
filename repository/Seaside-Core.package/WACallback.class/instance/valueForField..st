converting
valueForField: anObject
	^ anObject isNil
		ifTrue: [ String new ]
		ifFalse: [
			anObject isString
				ifTrue: [ anObject ]
				ifFalse: [
					anObject isEmpty
						ifTrue: [ String new ]
						ifFalse: [ anObject first ] ] ]