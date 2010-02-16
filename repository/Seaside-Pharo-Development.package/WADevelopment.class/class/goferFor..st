accessing
goferFor: aCollectionOfPackages
	"Answer a gopher instance for aCollectionOfPackages."
	
	| goferClass gofer |
	goferClass := (Smalltalk classNamed: #Gofer)
		ifNil: [ self error: 'Please install Gofer.' ].
	gofer := goferClass new.
	(self repositoriesFor: aCollectionOfPackages)
		do: [ :each | gofer repository: each ].
	aCollectionOfPackages
		do: [ :package | gofer package: package name ].
	^ gofer