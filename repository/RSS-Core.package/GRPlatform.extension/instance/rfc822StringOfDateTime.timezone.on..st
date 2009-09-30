*rss-core
rfc822StringOfDateTime: aDateAndTime timezone: aString on: aStream 
	"Print the given DateAndTime with the given timezone string on the given stream. Pay attention that you use English and not localized month and week day names."
	aStream
		nextPutAll: (aDateAndTime dayOfWeekName first: 3);
		nextPutAll: ', ';
		nextPutAll: (aDateAndTime dayOfMonth 
				printPaddedWith: $0
				to: 2);
		nextPut: Character space;
		nextPutAll: (aDateAndTime monthName first: 3);
		nextPut: Character space;
		nextPutAll: aDateAndTime year greaseString;
		nextPut: Character space;
		nextPutAll: (aDateAndTime hour24 
				printPaddedWith: $0
				to: 2);
		nextPut: $:;
		nextPutAll: (aDateAndTime minute 
				printPaddedWith: $0
				to: 2);
		nextPut: $:;
		nextPutAll: (aDateAndTime second 
				printPaddedWith: $0
				to: 2);
		nextPut: Character space;
		nextPutAll: aString