private
newEntryPoint
	| child |
	child := WADispatcher new.
	child
		register: WAEntryPoint new at: 'foo';
		register: (WADispatcher new
					register: WAEntryPoint new at: 'baz';
					yourself) at: 'bar'.
	^ child