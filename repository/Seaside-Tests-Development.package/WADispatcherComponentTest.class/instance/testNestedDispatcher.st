testing
testNestedDispatcher
	| context |
	configComponent := WADispatcherEditor on: rootHandler.
	context := self requestContextWithUrl: '/seaside/config/child'.
	configComponent initialRequest: context request.
	self assert: configComponent handler == childHandler