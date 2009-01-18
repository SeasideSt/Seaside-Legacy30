testing-callbacks
testMapCallback
	| key |
	key := registry registerMapCallback: [ :v | log add: v ].
	
	" valid "
	self
		shouldnt: [ self request: (WASmallDictionary new at: key put: '?1,2'; yourself) ]
		raise: WARenderNotification.
	self assertLog: (Array with: 1 @ 2).
	self
		shouldnt: [ self request: (WASmallDictionary new at: key put: (WAGemStoneMockString on: '?1,2'); yourself) ]
		raise: WARenderNotification.
	self assertLog: (Array with: 1 @ 2).
	
	" valid "
	self
		shouldnt: [ self request: (WASmallDictionary new at: key put: '?1,23'; yourself) ]
		raise: WARenderNotification.
	self assertLog: (Array with: 1 @ 23).
	self
		shouldnt: [ self request: (WASmallDictionary new at: key put: (WAGemStoneMockString on: '?1,23'); yourself) ]
		raise: WARenderNotification.
	self assertLog: (Array with: 1 @ 23).
	
	" valid "
	self
		shouldnt: [ self request: (WASmallDictionary new at: key put: '?12,34'; yourself) ]
		raise: WARenderNotification.
	self assertLog: (Array with: 12 @ 34).
	self
		shouldnt: [ self request: (WASmallDictionary new at: key put: (WAGemStoneMockString on: '?12,34'); yourself) ]
		raise: WARenderNotification.
	self assertLog: (Array with: 12 @ 34).
	
	" invalid: no value "
	self
		shouldnt: [ self request: (WASmallDictionary new at: key put: nil; yourself) ]
		raise: WARenderNotification.
	self assertLog: #().

	" invalid: empty string "
	self
		shouldnt: [ self request: (WASmallDictionary new at: key put: ''; yourself) ]
		raise: WARenderNotification.
	self assertLog: #().
	self
		shouldnt: [ self request: (WASmallDictionary new at: key put: (WAGemStoneMockString on: ''); yourself) ]
		raise: WARenderNotification.
	self assertLog: #().
	
	" invalid: invalid syntax "
	self
		shouldnt: [ self request: (WASmallDictionary new at: key put: '1,2'; yourself) ]
		raise: WARenderNotification.
	self assertLog: #().
	self
		shouldnt: [ self request: (WASmallDictionary new at: key put: (WAGemStoneMockString on: '1,2'); yourself) ]
		raise: WARenderNotification.
	self assertLog: #().
	
	" invalid: invalid syntax "
	self
		shouldnt: [ self request: (WASmallDictionary new at: key put: '?1'; yourself) ]
		raise: WARenderNotification.
	self assertLog: #().
	self
		shouldnt: [ self request: (WASmallDictionary new at: key put: (WAGemStoneMockString on: '?1'); yourself) ]
		raise: WARenderNotification.
	self assertLog: #().
	
	" invalid: invalid syntax "
	self
		shouldnt: [ self request: (WASmallDictionary new at: key put: '?1,'; yourself) ]
		raise: WARenderNotification.
	self
		shouldnt: [ self request: (WASmallDictionary new at: key put: (WAGemStoneMockString on: '?1,'); yourself) ]
		raise: WARenderNotification.
	self assertLog: #().
	
	" invalid: invalid syntax "
	self
		shouldnt: [ self request: (WASmallDictionary new at: key put: '?1x2'; yourself) ]
		raise: WARenderNotification.
	self assertLog: #().
	self
		shouldnt: [ self request: (WASmallDictionary new at: key put: (WAGemStoneMockString on: '?1x2'); yourself) ]
		raise: WARenderNotification.
	self assertLog: #().
	
	" invalid: invalid syntax "
	self
		shouldnt: [ self request: (WASmallDictionary new at: key put: '?a,b'; yourself) ]
		raise: WARenderNotification.
	self assertLog: #().
	self
		shouldnt: [ self request: (WASmallDictionary new at: key put: (WAGemStoneMockString on: '?a,b'); yourself) ]
		raise: WARenderNotification.
	self assertLog: #()