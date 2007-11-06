initialization
initialize
	(Smalltalk hasClassNamed: #RFBServer)
		ifTrue: [ self registerAsAuthenticatedApplication: 'tools/vnc' ]