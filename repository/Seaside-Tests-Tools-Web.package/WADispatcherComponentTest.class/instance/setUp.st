running
setUp
	| normalApplication |
	super setUp.
	rootHandler := WADispatcher new.
	rootHandler := rootHandler WADispatcher new at: 'seaside'.
	childHandler := rootHandler register: WADispatcher at: 'child'.
	configApplication := WAAdmin register: WAApplication 
		at: 'config'
		in: rootHandler.
	configApplication configuration addParent: WARenderLoopConfiguration instance.
	configApplication 
		preferenceAt: #rootClass
		put: WAConfigurationBrowser.
	normalApplication := WAApplication 
		register: 'counter'
		in: childHandler.
	normalApplication configuration addParent: WARenderLoopConfiguration instance.
	normalApplication 
		preferenceAt: #rootClass
		put: WAConfigurationBrowser