private-controlling
createService
	^(HttpService on: self port)
		name: 'seaside';
		plug: self;
		yourself