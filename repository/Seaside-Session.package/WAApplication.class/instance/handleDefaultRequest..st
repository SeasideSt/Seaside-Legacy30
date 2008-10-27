request handling
handleDefaultRequest: aRequestContext
	| session |
	session := self sessionClass new.
	self register: session.
	^ session handleRequest: aRequestContext