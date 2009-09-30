private
baseUrlWithSlash: aBoolean 
	^ self application baseUrl
		addToPath: self class name greaseString;
		addParameter: 'slash'
			value: aBoolean greaseString;
		slash: aBoolean;
		yourself