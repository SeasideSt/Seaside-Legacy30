as yet unclassified
testCloneApplication
	| app handler key clone |
	app := (WADispatcher named: 'root') register: (WAApplication named: 'app').
	handler := WARequestHandler new.
	key := app register: handler.
	
	clone := app cloneHandler.
	
	self assert: key = (app keyFor: handler).
	self should: [ clone keyFor: handler ] raise: Error.