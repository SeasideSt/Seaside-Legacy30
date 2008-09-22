defaults
defaultValueForContentType
	^ self defaultValueForMimeType seasideMimeType
		charset: self defaultValueForCharSet;
		yourself