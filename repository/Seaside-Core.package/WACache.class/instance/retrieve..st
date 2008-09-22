public
retrieve: aStringOrExternalID
	| key object |
	key := aStringOrExternalID seasideExternalID.
	self mutex critical: [
		object := objectsByKey at: key ifAbsent: [ missStrategy missed: key ] ].
	object isNil ifFalse: [ self notifyRetrieving: object key: key ].
	^ object