actions
push: aString
	"Push aString to the receiver. Answer true, if the connection is still valid."

	response isNil
		ifTrue: [ ^ false ].
	^ [ response nextPutAll: aString; flushComet ]
		on: Error do: [ :err | ^ false ]