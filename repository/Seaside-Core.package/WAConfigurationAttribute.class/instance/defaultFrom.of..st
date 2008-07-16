initialization
defaultFrom: aSelector of: anObject
	self default: (MessageSend receiver: anObject selector: aSelector)