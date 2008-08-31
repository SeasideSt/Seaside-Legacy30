private
expiryString
	^ String streamContents: 
		[ :stream | 
		stream
			nextPutAll: (expiry dayOfWeekName first: 3);
			nextPutAll: ', ';
			nextPutAll: expiry dayOfMonth seasideString;
			nextPut: $-;
			nextPutAll: expiry monthName;
			nextPut: $-;
			nextPutAll: expiry year seasideString;
			space;
			nextPutAll: expiry hour24 seasideString;
			nextPut: $:;
			nextPutAll: expiry minute seasideString;
			nextPut: $:;
			nextPutAll: expiry second seasideString;
			nextPutAll: ' GMT' ]