private
takeServerParametersFromRequest: aRequest
	"Takes the hostname on URL from the given request unless already set."

	hostname isNil ifTrue: [
		aRequest headers at: 'host' ifPresent: [ :value |
			scheme isNil
				ifTrue: [ self scheme: aRequest url scheme ].
			self parseHost: value ] ]