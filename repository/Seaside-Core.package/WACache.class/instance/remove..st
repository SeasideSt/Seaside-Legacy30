public
remove: anObject
	| key |
	self mutex critical: [
		key := keysByObject at: anObject ifAbsent: [ nil ].
		key isNil ifFalse: [
			keysByObject removeKey: anObject ifAbsent: [ nil ].
			objectsByKey removeKey: key ifAbsent: [ nil ] ] ].
	
	key isNil ifFalse: [ self notifyReaped: anObject key: key ].
	
	^ anObject