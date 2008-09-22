protocol
expired: anObject key: anExternalID
	(anObject respondsTo: #unregistered) ifTrue: [ anObject unregistered ]
	