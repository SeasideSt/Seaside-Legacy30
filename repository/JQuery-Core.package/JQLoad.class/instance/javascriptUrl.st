accessing-urls
javascriptUrl
	^ selector isNil
		ifTrue: [ super javascriptUrl ]
		ifFalse: [
			super javascriptUrl
				nextPutAll: '+" "+';
				javascript: selector;
				yourself ]