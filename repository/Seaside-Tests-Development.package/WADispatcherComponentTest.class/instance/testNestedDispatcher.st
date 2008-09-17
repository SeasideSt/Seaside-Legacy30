testing
testNestedDispatcher
	| context |
	configComponent := WADispatcherEditor on: rootHanlder.
	context := self requestContextWithUrl: '/seaside/config/child'.
	
	configComponent initialRequest: context request.
	self assert: configComponent handler == childHanlder