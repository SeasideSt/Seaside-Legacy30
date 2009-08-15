converting-request
requestUrlFor: aNativeRequest
	^ WAUrl absolute: (String streamContents: [ :stream |
		(self pathSegmentsFrom: aNativeRequest)
			do:	[ :each | stream nextPut: $/; nextPutAll: each ].
		(aNativeRequest url notEmpty and: [ aNativeRequest url last = $/ ])
			ifTrue: [ stream nextPut: $/ ] ])