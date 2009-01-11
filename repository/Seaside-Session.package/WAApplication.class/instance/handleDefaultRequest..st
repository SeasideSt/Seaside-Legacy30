request handling
handleDefaultRequest: aRequestContext
	| session |
	session := self sessionClass new.
	self register: session.
	^ session handle: aRequestContext