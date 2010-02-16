accessing
gofersFor: aCollectionOfPackages
	"Answer a collection of gofer instances for each repository within aCollectionOfPackages."
	
	| goferClass repositoryToPackage gofers gofer |
	goferClass := (Smalltalk classNamed: #Gofer)
		ifNil: [ self error: 'Please install Gofer.' ].
	repositoryToPackage := Dictionary new.
	aCollectionOfPackages do: [ :package |
		(repositoryToPackage at: package url ifAbsentPut: [ Set new ])
			add: package name ].
	gofers := OrderedCollection new.
	repositoryToPackage keysAndValuesDo: [ :url :packages |
		gofers add: (gofer := goferClass new).
		gofer repository: (self httpRepositoryWithUrlString: url).
		packages do: [ :package | gofer package: package ] ].
	^ gofers