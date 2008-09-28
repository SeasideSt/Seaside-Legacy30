initialization
initializeOn: aHandler
	super initializeOn: aHandler.
	aHandler configuration isNil ifFalse: [
		configurationEditor := aHandler configuration configurationComponent.
		configurationEditor onAnswer: [ self answer ] ].