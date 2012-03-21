testing
isFileSelector: aSymbol
	| isContentMethod |
	
	isContentMethod := aSymbol endsWith: #Content.
	^ isContentMethod not  and:  [ super isFileSelector: aSymbol ]