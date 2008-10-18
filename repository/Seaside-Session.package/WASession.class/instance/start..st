processing
start: aRequest
	self useSessionCookie ifTrue: [ self testSessionCookie ].
	^ self mainClass new start: aRequest