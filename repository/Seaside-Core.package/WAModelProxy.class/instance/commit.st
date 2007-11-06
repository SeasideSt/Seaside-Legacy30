forwarding
commit
	cache keysAndValuesDo:
		[:key :value |
		self performRealWrite: key with: value].

	cache := Dictionary new