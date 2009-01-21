private
contentsOfResponse: aResponse
	^ (aResponse contentType isBinary
		ifTrue: [ aResponse contents ]
		ifFalse: [ self encode: aResponse stream contents ])
			readStream binary