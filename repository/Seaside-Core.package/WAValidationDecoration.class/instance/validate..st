request processing
validate: anObject
	[validationBlock value: anObject.
	message contents: nil.
	^ true]
		on: self exceptionClass
		do: [:e | message contents: e messageText].
	^ false