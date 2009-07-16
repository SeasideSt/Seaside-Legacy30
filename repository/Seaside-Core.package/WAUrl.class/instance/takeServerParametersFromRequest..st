private
takeServerParametersFromRequest: aRequest
	"Takes the hostname on URL from the given request unless already set."

	"aRequest headers
		at: 'base'
		ifPresent: [ :value | self parsePath: value ]."
	self hostname isNil ifTrue: [
		aRequest headers
			at: 'host'
			ifPresent: [ :value | self parseHost: value ] ].
	aRequest scheme isNil ifFalse: [ self scheme: aRequest scheme ].