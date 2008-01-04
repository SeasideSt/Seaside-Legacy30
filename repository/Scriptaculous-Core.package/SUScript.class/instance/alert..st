conveniance
alert: anObject
	self add: (SUStream new
		nextPutAll: 'alert';
		argument: anObject;
		yourself)