initialization
registerAsApplication: aString
	WADispatcher default 
		register: ((RRRssHandler named: aString)
			rootComponentClass: self;
			yourself)