configuration
contentType
	^ self mimeType seasideMimeType
		charset: self charSet;
		yourself