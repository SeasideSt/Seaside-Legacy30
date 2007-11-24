defaults
defaultValueForContentType
	^(WAMimeType fromString: self defaultValueForMimeType)
		charset: self defaultValueForCharSet;
		yourself