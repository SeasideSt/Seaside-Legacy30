private
defaultResponse
	^ WAResponse new 
		contentType: self defaultContentType;
		doNotCache