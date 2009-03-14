testing
testNestedDispatcher
	configComponent := WAConfigurationBrowser on: rootHandler.
	self requestContextWithUrl: '/seaside/config/child'.
	configComponent initialRequest: self requestContext request.
	self assert: configComponent dispatcher == childHandler