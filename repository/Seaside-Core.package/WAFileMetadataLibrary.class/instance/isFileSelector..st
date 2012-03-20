testing
isFileSelector: aSymbol
	| isContentMethod |
	
	isContentMethod := aSymbol endsWith: #Content.
	^ (super isFileSelector: aSymbol) and: [ isContentMethod not ]