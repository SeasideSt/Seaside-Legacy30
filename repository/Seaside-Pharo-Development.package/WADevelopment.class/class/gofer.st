accessing
gofer
	"Answer a gopher instance."
	"self gofer update; recompile"
	
	| goferClass gofer |
	goferClass := (Smalltalk classNamed: #Gofer)
		ifNil: [ self error: 'Please install Gofer.' ].
	gofer := goferClass new.
	gofer repository: self defaultRepository.
	GRPackage packages do: [ :package |
		package isMIT 
			ifTrue: [ gofer package: package name ] ].
	^ gofer