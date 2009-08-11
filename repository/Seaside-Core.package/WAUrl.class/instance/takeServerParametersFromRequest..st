private
takeServerParametersFromRequest: aRequest
	"Retrieves scheme, hostname and basepath from the request unless already set."

	scheme isNil
		ifTrue: [ self scheme: aRequest url scheme ].
	hostname isNil 
		ifTrue: [ aRequest headers at: 'host' ifPresent: [ :value | self parseHost: value ] ].
	path isNil
		ifTrue: [ aRequest headers at: 'base' ifPresent: [ :value | self parsePath: value ] ]