public
store: anObject
	| key |
	key := self newKey.
	self mutex critical: [
		objectsByKey at: key put: anObject.
		keysByObject at: anObject put: key ].
	
	self notifyStoring: anObject key: key.
	
	^ key