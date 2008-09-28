actions
openHandler: aHandler
	super openHandler: aHandler.
	aHandler isApplication
		ifTrue: [ self call: aHandler configurationComponent ]