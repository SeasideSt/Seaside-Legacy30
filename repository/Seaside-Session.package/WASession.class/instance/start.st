request handling
start
	self useSessionCookie ifTrue: [ self testSessionCookie ].
	^ self mainClass new start