public
removeKey: aStringOrExternalID
	| key object |
	key := aStringOrExternalID seasideExternalID.
	self mutex critical: [
		object := objectsByKey removeKey: key ifAbsent: [ nil ].
		keysByObject removeKey: object ifAbsent: [ nil ] ].
	
	object isNil ifFalse: [ self reap: object key: key ].
	
	^ object