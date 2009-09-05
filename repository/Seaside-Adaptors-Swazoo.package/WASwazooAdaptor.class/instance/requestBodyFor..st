converting-request
requestBodyFor: aNativeRequest
	"Answer a String"

	aNativeRequest isPost
		ifTrue: [ ^aNativeRequest entityBody ].
	aNativeRequest isPut
		ifTrue: [ ^aNativeRequest putData asString ].
	^''