compatibility
startOn: aNumber
	super startOn: aNumber.
	
	self default ifNotNil: [ self default encoding: 'utf-8' ]