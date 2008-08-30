private
expiryString
	^ String streamContents: [ :stream |
		stream
			nextPutAll: (expiry dayOfWeekName first: 3);
			nextPutAll: ', ';
			nextPutAll: expiry dayOfMonth toString;
			nextPut: $-;
			nextPutAll: expiry monthName;
			nextPut: $-;
			nextPutAll: expiry year toString;
			space;
			nextPutAll: expiry hour24 toString;
			nextPut: $:;
			nextPutAll: expiry minute toString;
			nextPut: $:;
			nextPutAll: expiry second toString;
			nextPutAll: ' GMT']