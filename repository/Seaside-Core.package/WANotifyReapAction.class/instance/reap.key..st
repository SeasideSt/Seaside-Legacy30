protocol
reap: anObject key: anExternalID
	(anObject respondsTo: #unregistered) ifTrue: [ anObject unregistered ]
	