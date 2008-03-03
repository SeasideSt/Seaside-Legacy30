instance creation
forbidden: locationString
	^ self new
		forbidden;
		nextPutAll: '<h1> Error: you are forbidden to access "', locationString, '". </h1>';
		yourself