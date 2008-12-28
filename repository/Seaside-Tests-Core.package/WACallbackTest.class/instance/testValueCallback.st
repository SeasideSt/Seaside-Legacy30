testing-callbacks
testValueCallback
	| key1 key2 |
	key1 := registry registerValueCallback: [ :v | log add: 1; add: v ].
	key2 := registry registerValueCallback: [ :v | log add: 2; add: v ].
	
	" a single value callback with nil "
	self
		shouldnt: [ self request: (WASmallDictionary new at: key1 put: nil; yourself) ]
		raise: WARenderNotification.
	self assertLog: #(1 '').
	
	" a single value callback with an empty string "
	self
		shouldnt: [ self request: (WASmallDictionary new at: key1 put: ''; yourself) ]
		raise: WARenderNotification.
	self assertLog: #(1 '').
	
	" a single value callback with a string "
	self
		shouldnt: [ self request: (WASmallDictionary new at: key1 put: 'foo'; yourself) ]
		raise: WARenderNotification.
	self assertLog: #(1 'foo').
	
	" a single value callback with an empty collection "
	self
		shouldnt: [ self request: (WASmallDictionary new at: key1 put: #(); yourself) ]
		raise: WARenderNotification.
	self assertLog: #(1 '').
	
	" a single value callback with a collection with nil "
	self
		shouldnt: [ self request: (WASmallDictionary new at: key1 put: #(nil); yourself) ]
		raise: WARenderNotification.
	self assertLog: #(1 '').
	
	" a single value callback with an filled collection "
	self
		shouldnt: [ self request: (WASmallDictionary new at: key1 put: #('foo' 'bar'); yourself) ]
		raise: WARenderNotification.
	self assertLog: #(1 'foo').

	" two callbacks in order "
	self
		shouldnt: [ self request: (WASmallDictionary new at: key1 put: 'b'; at: key2 put: 'c'; yourself) ]
		raise: WARenderNotification.
	self assertLog: #(1 'b' 2 'c').

	" two callbacks not in order "
	self
		shouldnt: [ self request: (WASmallDictionary new at: key2 put: 'c'; at: key1 put: 'b'; yourself) ]
		raise: WARenderNotification.
	self assertLog: #(1 'b' 2 'c')
