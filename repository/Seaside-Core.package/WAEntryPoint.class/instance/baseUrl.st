public
baseUrl
	^ WAUrl new
		addToPath: self basePath;
		yourself