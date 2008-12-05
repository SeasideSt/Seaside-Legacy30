testing
testChildApplication
	| context |
	configComponent := WADispatcherEditor on: rootHandler.
	context := self requestContextWithUrl: '/seaside/config/child/counter'.
	self 
		should: [ configComponent initialRequest: context request ]
		raise: WARenderNotification.
	self assert: configComponent handler == childHandler