accessing
actionUrlForKey: aString
	^ self url
		addParameter: self actionField value: aString;
		yourself