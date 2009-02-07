private
contentsOfResponse: aResponse
	^ (aResponse contentType isBinary
		ifTrue: [ aResponse contents ]
		ifFalse: [ self codec encode: aResponse stream contents ])
			readStream binary