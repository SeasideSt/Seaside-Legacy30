instance creation
forbidden: locationString
	^ self new
		forbidden;
		nextPutAll: '<h1> Error: you are forbidden to access "';
		nextPutAll: locationString;
		nextPutAll: '". </h1>';
		yourself