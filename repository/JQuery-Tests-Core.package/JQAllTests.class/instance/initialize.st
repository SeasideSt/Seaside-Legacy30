as yet unclassified
initialize
	super initialize.
	children := JQFunctionalTest allSubclasses collect: [ :each | each new ]