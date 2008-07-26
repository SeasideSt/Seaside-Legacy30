processing
performRequest: aRequest
	| key continuation |
	key := aRequest fields
		at: self actionField
		ifAbsent: [ ^ self start: aRequest ].
	((aRequest fields includesKey: self checkCookiesField)
		and: [ aRequest cookies isEmpty ])
			ifTrue: [ cookiesEnabled := false ].
	(key isKindOf: OrderedCollection)
		ifTrue: [ key := key first ].
	continuation := continuations
		at: key
		ifAbsent: [ ^ self unknownRequest: aRequest ].
	^ continuation value: aRequest