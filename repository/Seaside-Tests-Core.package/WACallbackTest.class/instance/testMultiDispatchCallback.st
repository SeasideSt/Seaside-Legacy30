testing-callbacks
testMultiDispatchCallback
	| key key1 key2 |
	key := registry store: WAMultiDispatchCallback new.
	key1 := registry store: (WAValueCallback on: 
			[ :v | 
			log
				add: 1;
				add: v ]).
	key2 := registry store: (WAValueCallback on: 
			[ :v | 
			log
				add: 2;
				add: v ]).

	" an empty callback "
	self 
		shouldnt: 
			[ self request: (GRSmallDictionary new
					at: key
						put: nil;
					yourself) ]
		raise: WARenderNotification.
	self assertLog: #().

	" another empty callback "
	self 
		shouldnt: 
			[ self request: (GRSmallDictionary new
					at: key
						put: '';
					yourself) ]
		raise: WARenderNotification.
	self assertLog: #().

	" the first callback "
	self 
		shouldnt: 
			[ self request: (GRSmallDictionary new
					at: key
						put: key1;
					yourself) ]
		raise: WARenderNotification.
	self assertLog: #(1 '' ).

	" the second callback within array "
	self 
		shouldnt: 
			[ self request: (GRSmallDictionary new
					at: key
						put: (Array with: key2);
					yourself) ]
		raise: WARenderNotification.
	self assertLog: #(2 '' ).

	" the first and second callback "
	self 
		shouldnt: 
			[ self request: (GRSmallDictionary new
					at: key
						put: (Array 
								with: key1
								with: key2);
					yourself) ]
		raise: WARenderNotification.
	self assertLog: #(1 '' 2 '' ).

	" the second and first callback "
	self 
		shouldnt: 
			[ self request: (GRSmallDictionary new
					at: key
						put: (Array 
								with: key2
								with: key1);
					yourself) ]
		raise: WARenderNotification.
	self assertLog: #(1 '' 2 '' )