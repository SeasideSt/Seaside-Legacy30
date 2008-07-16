processing
respondWithChallenge
	self session returnResponse: (WAResponse basicAuthWithRealm: self realm)