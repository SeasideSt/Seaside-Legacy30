instance creation
notFound: locationString
	^ self new
		notFound;
		nextPutAll: '<h1> Error: "', locationString, '" not found. </h1>';
		yourself