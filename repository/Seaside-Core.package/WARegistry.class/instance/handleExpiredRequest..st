private
handleExpiredRequest: aRequest
	| url |
	aRequest isXmlHttpRequest
		ifTrue: [ ^ WAResponse new forbidden ].
	url := WAUrl new.
	url addToPath: (self expiryPathFor: aRequest).
	url takeServerParametersFromRequest: aRequest.
	aRequest isGet ifTrue: [
		aRequest fields keysAndValuesDo: [ :key :value |
			(url isSeasideField: key)
				ifFalse: [ url addParameter: key value: value ] ] ].
	^ self redirectResponseFor: url