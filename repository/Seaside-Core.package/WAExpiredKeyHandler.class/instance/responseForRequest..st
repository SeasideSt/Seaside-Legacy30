processing
responseForRequest: aRequest
	| url |
	aRequest isXmlHttpRequest ifTrue: [ ^ WAResponse new forbidden ].
	url := WAUrl new.
	url addToPath: aRequest url.
	url takeServerParametersFromRequest: aRequest.
	aRequest isGet ifTrue: 
		[ aRequest fields keysAndValuesDo: 
			[ :key :value | 
			(url isSeasideField: key) ifFalse: 
				[ url 
					addParameter: key
					value: value ] ] ].
	^ WAResponse redirectTo: url seasideString