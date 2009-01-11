deprecated
description
	self
		seasideDeprecatedApi: 'WARequestHandler>>description'
		details: 'Use WAEntryPoint class>>description'.
		
	^ (self isKindOf: WAEntryPoint)
		ifTrue: [ self class description ]
		ifFalse: [ String new ]