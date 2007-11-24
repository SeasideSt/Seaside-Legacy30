libraries
writeLibrariesToDisk
	"Write to disk all the librares of the receiver in a subfolder of the Smalltalk image folder.
	see WALibrary >> writeToDisk for more information."
	self libraries do:[ :each |
		each deployFiles ]