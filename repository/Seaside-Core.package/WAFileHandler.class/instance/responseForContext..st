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
		forContext: aRequestContext