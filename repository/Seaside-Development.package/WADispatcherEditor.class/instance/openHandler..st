actions
openHandler: aHandler
	super openHandler: aHandler.
	aHandler isApplication
		ifTrue: [ self show: aHandler configurationComponent ]