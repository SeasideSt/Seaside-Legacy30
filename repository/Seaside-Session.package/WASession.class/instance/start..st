processing
start: aRequest
	self useSessionCookie
		ifTrue: [ self redirectWithCookie: self sessionCookie ].
	^ self mainClass new start: aRequest