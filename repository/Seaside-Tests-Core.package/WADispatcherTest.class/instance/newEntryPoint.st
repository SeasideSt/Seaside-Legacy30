private
newEntryPoint
	| child |
	child := WADispatcher named: 'child'.
	child
		register: (WAEntryPoint named: 'foo');
		register: ((WADispatcher named: 'bar')
					register: (WAEntryPoint named: 'baz');
					yourself).
	
	^ child