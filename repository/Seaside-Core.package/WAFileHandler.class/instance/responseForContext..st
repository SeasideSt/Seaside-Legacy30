processing
responseForContext: aRequestContext 
	| path baseUrl requestUrl |
	baseUrl := WAUrl new
		addAllToPath: self path;
		yourself.
	requestUrl := aRequestContext request url.
	path := baseUrl relativeTo: requestUrl.
	^ self 
		responseAt: path
		ifForbidden: [ self forbiddenResponseFor: aRequestContext ]
		ifAbsent: [ self notFoundResponseFor: aRequestContext ]