actions
push: aString
	response isNil
		ifTrue: [ ^ false ].
	[ response nextPutAll: aString; flush ]
		on: Error
		do: [ :err | ^ false ].
	^ true