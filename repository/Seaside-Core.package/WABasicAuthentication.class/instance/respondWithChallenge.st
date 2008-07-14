processing
respondWithChallenge
	self requestContext returnResponse: (WAResponse basicAuthWithRealm: self realm)