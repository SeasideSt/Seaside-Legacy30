as yet unclassified
testCloneApplication
	| app handler key clone |
	app := (WADispatcher named: 'root') register: (WAApplication named: 'app').
	handler := WARequestHandler new.
	key := app ensureKeyForHandler: handler.
	
	clone := app cloneHandler.
	
	self assert: key = (app ensureKeyForHandler: handler).
	self deny: key = (clone ensureKeyForHandler: handler).