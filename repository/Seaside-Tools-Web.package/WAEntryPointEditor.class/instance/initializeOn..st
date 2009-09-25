initialization
initializeOn: aHandler
	super initializeOn: aHandler.
	aHandler configuration isNil ifFalse: [
		configurationEditor := aHandler configuration configurationComponent.
		configurationEditor parent: self.
		configurationEditor onAnswer: [ self answer ] ]