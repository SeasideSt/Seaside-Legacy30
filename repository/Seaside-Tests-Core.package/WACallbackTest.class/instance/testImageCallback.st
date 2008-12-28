testing-callbacks
testImageCallback
	| key |
	key := registry registerImageCallback: [ log add: 1 ].

	" an invalid callback "
	self
		shouldnt: [ self request: (WASmallDictionary new at: key put: nil; yourself) ]
		raise: WARenderNotification.
	self assertLog: #().

	" a valid callback "
	self
		should: [ self request: (WASmallDictionary new at: key , '.x' put: nil; yourself) ]
		raise: WARenderNotification.
	self assertLog: #(1)