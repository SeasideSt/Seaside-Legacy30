protocol
reaped: anObject key: aString
	(anObject respondsTo: #unregistered) ifTrue: [ anObject unregistered ]
	