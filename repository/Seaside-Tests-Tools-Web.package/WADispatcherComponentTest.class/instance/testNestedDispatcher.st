testing
testNestedDispatcher
	| configComponent |
	configComponent := WAConfigurationBrowser on: rootHandler.
	self requestContextWithUrl: '/seaside/config/child'.
	self requestContext consumer next.
	configComponent initialRequest: self requestContext request.
	self assert: configComponent dispatcher == childHandler