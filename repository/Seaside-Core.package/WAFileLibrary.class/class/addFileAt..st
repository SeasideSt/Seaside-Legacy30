file addition
addFileAt: aPath 
	"adds the file specified by aFilename to the current file library"
	self 
		addFileAt: aPath
		contents: (GRPlatform current 
				contentsOfFile: aPath
				binary: (self isBinaryAt: aPath))