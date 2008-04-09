convenience
addShortcut: aString 
	self canHaveShortcut ifFalse: 
		[ self error: 'May not assign shortcut on items that are not clickable' ].
	self ensureId.
	self requestContext addLoadScript: (String streamContents: 
			[ :stream | 
			stream
				nextPutAll: 'addShortcut(''';
				nextPutAll: aString;
				nextPutAll: ''', ''';
				nextPutAll: self id;
				nextPutAll: ''')' ])