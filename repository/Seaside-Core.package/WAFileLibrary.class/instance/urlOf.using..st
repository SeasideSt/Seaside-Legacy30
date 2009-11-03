accessing
urlOf: aSymbol using: aHandler
	^ aHandler url
		addToPath: self className;
		addToPath: (self asFilename: aSymbol);
		yourself