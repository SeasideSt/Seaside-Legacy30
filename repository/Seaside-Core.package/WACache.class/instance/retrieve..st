public
retrieve: aString
	| object |
	self mutex critical: [
		object := objectsByKey at: aString ifAbsent: [ self missStrategy missed: aString ] ].
	
	object isNil ifFalse: [
		(self expiryPolicy isExpired: object key: aString) ifTrue: [ ^ nil ].
		self notifyRetrieved: object key: aString ].
	
	^ object