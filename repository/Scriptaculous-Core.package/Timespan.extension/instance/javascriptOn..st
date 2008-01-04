*scriptaculous-core
javascriptOn: aStream
	Dictionary new
		at: #start put: self start;
		at: #end put: self end;
		javascriptOn: aStream