private
takeServerParametersFromRequest: aRequest
	self hostname isNil
		ifFalse: [ ^ self ].
	self parseHost: (aRequest 
		headerAt: 'host'
		ifAbsent: [ ^ self ])