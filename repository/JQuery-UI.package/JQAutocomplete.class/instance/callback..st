convenience
callback: aBlock
	"Answer a collection of items that match the argument passed into a block."

	aBlock fixCallbackTemps.
	self url: (owner canvas jQuery ajax
		text: [ :stream |
			| query limit items |
			query := owner canvas requestContext request
				at: 'q' ifAbsent: [ String new ].
			limit := owner canvas requestContext request
				at: 'limit' ifAbsent: [ 
					self options at: 'max' ifAbsent: [ 10 ] ].
			limit := limit asInteger.
			items := aBlock valueWithPossibleArgs: (Array with: query with: limit).
			items := items size > limit 
				ifTrue: [ items asArray first: limit ]
				ifFalse: [ items asArray ].
			items
				do: [ :each | stream nextPutAll: each seasideString ]
				separatedBy: [ stream nextPut: Character lf ] ];
		fullUrl)