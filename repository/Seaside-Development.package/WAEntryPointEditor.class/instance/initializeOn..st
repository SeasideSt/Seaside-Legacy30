initialization
initializeOn: aHandler
	super initializeOn: aHandler.
	aHandler configuration isNil ifTrue: [ ^self ].
	
	configurationEditor := aHandler configuration configurationComponent.
	configurationEditor onAnswer: [ self answer ]