running
setUp
	| normalApplication |
	
	super setUp.
	rootHanlder := WADispatcher named: 'seaside'.
	childHanlder := rootHanlder register: (WADispatcher named: 'child').
	
	configApplication := WAApplication register: 'config' in: rootHanlder.
	configApplication configuration addParent: WARenderLoopConfiguration instance.
	configApplication preferenceAt: #rootClass put: WADispatcherEditor.
	
	normalApplication := WAApplication register: 'counter' in: childHanlder.
	normalApplication configuration addParent: WARenderLoopConfiguration instance.
	normalApplication preferenceAt: #rootClass put: WADispatcherEditor