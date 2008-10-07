testing
testCopyRegistry
	| stored key copy stored2 key2 |
	stored := WARequestHandler new.
	key := handler ensureKeyForHandler: stored.

	copy := handler copy.
	
	self assert: key = (handler ensureKeyForHandler: stored).
	self assert: key = (copy ensureKeyForHandler: stored).
	
	stored2 := WARequestHandler new.
	key2 := handler ensureKeyForHandler: stored2.
	self assert: key2 = (handler ensureKeyForHandler: stored2).
	self deny: key2 = (copy ensureKeyForHandler: stored2).
	
	copy clearHandlers.
	self assert: key = (handler ensureKeyForHandler: stored).