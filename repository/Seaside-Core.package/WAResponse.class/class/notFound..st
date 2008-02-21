instance creation
notFound: locationString 
	^ self new
		notFound ;
		nextPutAll: '<h1> Error: "' ;
		nextPutAll: locationString ;
		nextPutAll: '" not found. </h1>' ;
		yourself