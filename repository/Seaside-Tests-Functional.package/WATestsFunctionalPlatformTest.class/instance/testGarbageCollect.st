tests
testGarbageCollect
	self
		shouldnt: [ WAPlatform current garbageCollect ]
		raise: MessageNotUnderstood
