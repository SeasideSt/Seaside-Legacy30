file addition
addAllFilesIn: aPathString
	"adds all files in the directory specified by aPathString to the current file library"
	(SeasidePlatformSupport filesIn: aPathString)
		do: [ :each | self addFileAt: each ]