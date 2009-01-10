public
retrieve: aStringOrExternalID
	| key object |
	key := aStringOrExternalID seasideExternalID.
	self mutex critical: [
		object := objectsByKey at: key ifAbsent: [ self missStrategy missed: key ] ].
	
	object isNil ifFalse: [
		(self expiryPolicy isExpired: object key: key) ifTrue: [ ^ nil ].
		self notifyRetrieving: object key: key ].
	
	^ object