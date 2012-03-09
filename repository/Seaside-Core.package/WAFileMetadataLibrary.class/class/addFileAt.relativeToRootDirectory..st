private
addFileAt: aPath relativeToRootDirectory: relativeRootDirectory
	| relativeFilepath |
	relativeFilepath := aPath allButFirst: relativeRootDirectory size.
	
	(relativeFilepath first = GRPlatform current pathSeparator first) 
		ifTrue: [ relativeFilepath := relativeFilepath allButFirst ].

	self 
		addFileNamed: relativeFilepath
		contents: (GRPlatform current 
				contentsOfFile: aPath
				binary: (self isBinaryAt: aPath))