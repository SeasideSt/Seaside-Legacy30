testing
testChildApplication
	| context |
	configComponent := WADispatcherEditor on: rootHanlder.
	
	context := self requestContextWithUrl: '/seaside/config/child/counter'.
	
	configComponent initialRequest: context request.
	self assert: configComponent handler == childHanlder