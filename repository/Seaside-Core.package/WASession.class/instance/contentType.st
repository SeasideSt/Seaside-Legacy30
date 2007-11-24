http
contentType
	^ (WAMimeType fromString: self mimeType)
		charset: self charSet;
		yourself