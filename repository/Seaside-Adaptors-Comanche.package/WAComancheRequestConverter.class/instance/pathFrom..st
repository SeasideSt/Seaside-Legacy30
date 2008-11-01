private
pathFrom: aKomRequest
	^ String streamContents: [:stream |
		(self pathSegmentsFrom: aKomRequest)
			do:	[ :each |
				stream nextPut: $/.
				stream nextPutAll: each ] ]