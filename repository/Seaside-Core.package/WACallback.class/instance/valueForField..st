converting
valueForField: anObject
	^ anObject
		ifNil: ['']
		ifNotNil:
			[(anObject isCollection and: [anObject isString not])
					ifTrue: [anObject isEmpty
								ifTrue: ['']
								ifFalse: [anObject first]]
					ifFalse: [anObject]]