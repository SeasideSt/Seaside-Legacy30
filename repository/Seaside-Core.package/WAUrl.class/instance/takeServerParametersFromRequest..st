private
takeServerParametersFromRequest: aRequest
	"Takes the hostname on URL from the given request unless already set.."
	
	self hostname isNil
		ifFalse: [ ^ self ].
	self parseHost: (aRequest 
		headerAt: 'host'
		ifAbsent: [ ^ self ])