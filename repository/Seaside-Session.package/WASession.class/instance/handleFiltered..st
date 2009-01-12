processing
handleFiltered: aRequestContext
	| key continuation |
	^ WACurrentRequestContext use: aRequestContext during: [
		key := aRequestContext request fields
			at: self actionField
			ifAbsent: [ ^ self start ].
		(key isString not and: [ key isSequenceable ])
			ifTrue: [ key := key first ].
			
		continuation := continuations
			at: key
			ifAbsent: [ ^ self unknownRequest ].
		continuation value ]