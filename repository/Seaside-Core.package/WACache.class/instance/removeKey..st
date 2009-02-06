public
removeKey: aString
	| object |
	self mutex critical: [
		object := objectsByKey removeKey: aString ifAbsent: [ nil ].
		keysByObject removeKey: object ifAbsent: [ nil ] ].
	
	object isNil ifFalse: [ self notifyRemoved: object key: aString ].
	
	^ object