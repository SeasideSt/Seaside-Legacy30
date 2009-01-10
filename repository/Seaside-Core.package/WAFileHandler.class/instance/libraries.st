accessing
libraries
	^ self libraryRootClasses gather: [ :each | each allSubclasses ]