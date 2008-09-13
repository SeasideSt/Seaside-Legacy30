processing
responseForContext: aRequestContext 
	| url |
	aRequestContext request isXmlHttpRequest 
		ifTrue: [ ^ WAResponse new forbidden ].
	url := WAUrl new.
	url addToPath: aRequestContext request url.
	url takeServerParametersFromRequest: aRequestContext request.
	aRequestContext request isGet ifTrue: [ 
		aRequestContext request fields keysAndValuesDo: [ :key :value | 
			(url isSeasideField: key) ifFalse: [ 
				url 
					addParameter: key
					value: value ] ] ].
	^ WAResponse redirectTo: url seasideString