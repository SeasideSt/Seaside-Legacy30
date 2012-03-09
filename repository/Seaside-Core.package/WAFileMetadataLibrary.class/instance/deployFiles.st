actions
deployFiles
	"Write to disk the files that the receiver use to serve as methods.
	The files are stored in a subfolder named like the classname of the receiver in a subfolder of Smalltalk image folder."
	GRPlatform current ensureExistenceOfFolder: self name.
	self fileSelectors do: [ :each | 
		| folder filename |
		filename := self asFilename: each.
		folder := self name, GRPlatform current pathSeparator, (filename copyUpToLast: $/).
		GRPlatform current ensureExistenceOfFolder: folder.
		
		GRPlatform current 
			write: (self fileResourceOf: each) contents
			toFile:  (GRPlatform current localNameOf: filename)
			inFolder: folder ]