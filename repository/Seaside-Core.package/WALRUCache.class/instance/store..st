callbacks
store: anObject
	| key |
	key := self nextKey.
	self at: key put: anObject.
	^ key