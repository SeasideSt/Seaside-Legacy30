private
expiryString
	^ String streamContents:
		[:s |
		s
			nextPutAll: (expiry dayOfWeekName first: 3);
			nextPutAll: ', ';
			nextPutAll: expiry dayOfMonth displayString;
			nextPut: $-;
			nextPutAll: expiry monthName;
			nextPut: $-;
			nextPutAll: expiry year displayString;
			space;
			nextPutAll: expiry hour24 displayString;
			nextPut: $:;
			nextPutAll: expiry minute displayString;
			nextPut: $:;
			nextPutAll: expiry second displayString;
			nextPutAll: ' GMT']