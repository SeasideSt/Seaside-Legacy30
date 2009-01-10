private
contentsOfResponse: aResponse
	| responseStream |
	self padResponse: aResponse.
	responseStream := aResponse contents.
	^aResponse contentType isBinary
		ifTrue: [ responseStream ]
		ifFalse: [ (self encode: responseStream contents) readStream binary; reset ]