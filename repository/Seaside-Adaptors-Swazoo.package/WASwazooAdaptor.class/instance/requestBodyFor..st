converting-request
requestBodyFor: aNativeRequest
	aNativeRequest isPost
		ifTrue: [ ^aNativeRequest entityBody ].
	aNativeRequest isPut
		ifTrue: [ ^aNativeRequest putData ].
	^nil