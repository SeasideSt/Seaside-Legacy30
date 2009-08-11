converting-request
requestUrlFor: aNativeRequest
	^ WAUrl absolute: (String streamContents: [ :stream |
		(self pathSegmentsFrom: aNativeRequest)
			do:	[ :each | stream nextPut: $/; nextPutAll: each ].
		(aNativeRequest rawUrl notEmpty and: [ aNativeRequest rawUrl last = $/ ])
			ifTrue: [ stream nextPut: $/ ] ])