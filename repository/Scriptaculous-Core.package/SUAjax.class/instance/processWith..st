processing
processWith: argumentString
	| context |
	context := self requestContext.
	context response doNotCache; contentType: self defaultContentType.
	self processOn: context response contents with: argumentString.
	context respond