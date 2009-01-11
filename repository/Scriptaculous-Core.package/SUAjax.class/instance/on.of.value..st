callbacks
on: aSelector of: anObject value: anotherObject
	self
		callback: (WADelayedSend receiver: anObject selector: aSelector)
		value: anotherObject