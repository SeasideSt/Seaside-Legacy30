compatibility
startOn: aNumber
	WAComancheAdaptor startOn: aNumber.
	self default ifNotNil: [ self default codec: self default defaultCodec ]