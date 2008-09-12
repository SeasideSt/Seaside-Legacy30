creational
newContext
	^ WARenderingContext new
		session: self session;
		actionUrl: self url;
		yourself