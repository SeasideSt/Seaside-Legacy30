testing
testChildApplication
	| context |
	configComponent := WADispatcherEditor on: rootHanlder.
	
	context := self requestContextWithUrl: '/seaside/config/child/counter'.
	
	self
		should: [ configComponent initialRequest: context request ]
		raise: WARenderNotification.
	
	self assert: configComponent handler == childHanlder
	