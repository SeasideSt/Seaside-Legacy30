printing
printString
	^ String streamContents: 
		[ :stream | 
		stream
			nextPutAll: (dateAndTime dayOfWeekName first: 3);
			nextPutAll: ', ';
			nextPutAll: (dateAndTime dayOfMonth 
					printPaddedWith: $0
					to: 2);
			space;
			nextPutAll: (dateAndTime monthName first: 3);
			space;
			nextPutAll: dateAndTime year seasideString;
			space;
			nextPutAll: (dateAndTime hour24 
					printPaddedWith: $0
					to: 2);
			nextPut: $:;
			nextPutAll: (dateAndTime minute 
					printPaddedWith: $0
					to: 2);
			nextPut: $:;
			nextPutAll: (dateAndTime second 
					printPaddedWith: $0
					to: 2);
			space;
			nextPutAll: timezoneString ]