compatibility
startOn: aNumber
	WAComancheAdaptor startOn: aNumber.
	
	self default ifNotNil: [ self default encoding: self defaultEncoding ]