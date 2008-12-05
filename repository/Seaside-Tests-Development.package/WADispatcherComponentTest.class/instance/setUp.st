running
setUp
	| normalApplication |
	super setUp.
	rootHandler := WADispatcher named: 'seaside'.
	childHandler := rootHandler register: (WADispatcher named: 'child').
	configApplication := WAApplication 
		register: 'config'
		in: rootHandler.
	configApplication configuration addParent: WARenderLoopConfiguration instance.
	configApplication 
		preferenceAt: #rootClass
		put: WADispatcherEditor.
	normalApplication := WAApplication 
		register: 'counter'
		in: childHandler.
	normalApplication configuration addParent: WARenderLoopConfiguration instance.
	normalApplication 
		preferenceAt: #rootClass
		put: WADispatcherEditor