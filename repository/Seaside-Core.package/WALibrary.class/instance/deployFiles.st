actions
deployFiles
	"Write to disk the files that the receiver use to serve as methods.
	The files are stored in a subfolder named like the classname of the receiver in a subfolder of Smalltalk image folder."
	SeasidePlatformSupport ensureExistenceOfFolder: self name.
	self fileSelectors do: [ :each |
		SeasidePlatformSupport
			write: (self perform: each)
			toFile: (self asFilename: each)
			inFolder: self name ]