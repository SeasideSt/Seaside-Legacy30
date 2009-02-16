private
createService
	^(HttpService on: self port)
		name: 'seaside-', self port seasideString;
		plug: self;
		yourself