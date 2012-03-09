file addition
recursivelyAddAllFilesIn: aPathString 
	"adds all files in the directory specified by aPathString to the current file library - 
	*does* recurse into sub-directories"
	self recursivelyAddAllFilesIn: aPathString relativeToRootDirectory: aPathString