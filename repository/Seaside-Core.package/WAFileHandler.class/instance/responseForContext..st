processing
responseForContext: aRequestContext 
	| path baseUrl requestUrl |
	baseUrl := WAUrl new
		addAllToPath: self path;
		yourself.
	requestUrl := WAUrl new
		parsePath: aRequestContext request url;
		yourself.
	path := baseUrl relativeTo: requestUrl.
	^ path isEmpty 
		ifTrue: [ self renderListing ]
		ifFalse: 
			[ self 
				responseAt: path
				ifAbsent: [ self notFoundResponseFor: aRequestContext ] ]