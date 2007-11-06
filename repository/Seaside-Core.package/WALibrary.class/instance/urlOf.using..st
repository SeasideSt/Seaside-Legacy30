accessing
urlOf: aSymbol using: aHandler
	^ aHandler baseUrl
		addToPath: self className;
		addToPath: (self asFilename: aSymbol);
		yourself