actions
deployFile: aSymbol
	"Writes the file to a subfolder named like the classname of the receiver in a subfolder of Smalltalk image folder."
	(self isFileSelector: aSymbol) ifTrue: [
		| filename |
		filename := self asFilename: aSymbol.
		GRPlatform current 
			write: (self perform: aSymbol)
			toFile: filename
			inFolder: self name.
		self class storeDeployedFile: (self name , '/' , filename) at: aSymbol ].