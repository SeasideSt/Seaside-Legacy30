printing
encodeOn: aDocument
	aDocument
		nextPutAll: (dateAndTime dayOfWeekName first: 3);
		nextPutAll: ', ';
		nextPutAll: (dateAndTime dayOfMonth printPaddedWith: $0 to: 2);
		nextPut: Character space;
		nextPutAll: (dateAndTime monthName first: 3);
		nextPut: Character space;
		nextPutAll: dateAndTime year seasideString;
		nextPut: Character space;
		nextPutAll: (dateAndTime hour24 printPaddedWith: $0 to: 2);
		nextPut: $:;
		nextPutAll: (dateAndTime minute printPaddedWith: $0 to: 2);
		nextPut: $:;
		nextPutAll: (dateAndTime second printPaddedWith: $0 to: 2);
		nextPut: Character space;
		nextPutAll: timezoneString