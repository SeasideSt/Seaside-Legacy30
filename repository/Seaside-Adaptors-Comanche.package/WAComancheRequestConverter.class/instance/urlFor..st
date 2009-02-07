converting-internal
urlFor: aNativeRequest
	^ WAUrl absolute: (String streamContents: [:stream |
		(self pathSegmentsFrom: aNativeRequest)
			do:	[ :each |
				stream nextPut: $/.
				stream nextPutAll: each ] ])