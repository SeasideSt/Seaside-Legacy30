tests
testGarbageCollect
	self 
		shouldnt: [ GRPlatform current garbageCollect ]
		raise: MessageNotUnderstood