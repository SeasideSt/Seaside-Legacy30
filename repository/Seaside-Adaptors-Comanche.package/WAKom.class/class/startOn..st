compatibility
startOn: aNumber
	WAComancheAdaptor startOn: aNumber.
	self default isNil
		ifFalse: [ self default codec: self default defaultCodec ]