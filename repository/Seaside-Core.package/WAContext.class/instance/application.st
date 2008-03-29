accessing
application
	^requestHandlers
		detect: [ :each | each isKindOf: WAApplication ]