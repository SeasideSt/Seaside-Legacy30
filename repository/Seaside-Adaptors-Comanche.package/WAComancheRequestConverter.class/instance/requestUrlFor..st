converting-request
requestUrlFor: aNativeRequest
	^ WAUrl absolute: (String streamContents: [:stream |
		(self pathSegmentsFrom: aNativeRequest)
			do:	[ :each | stream nextPut: $/; nextPutAll: each ] ])