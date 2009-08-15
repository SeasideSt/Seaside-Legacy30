private
baseUrlWithSlash: aBoolean
	^self application baseUrl
		addToPath: self class name seasideString;
		addParameter: 'slash' value: aBoolean seasideString;
		slash: aBoolean;
		yourself