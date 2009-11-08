accessing
gofer
	"Answer a gopher instance."
	"self gofer update; recompile"
	
	| goferClass gofer |
	goferClass := (Smalltalk classNamed: #Gofer)
		ifNil: [ self error: 'Please install Gofer.' ].
	gofer := goferClass new.
	GRPackage packages do: [ :package |
		gofer repository: (package isMIT
			ifTrue: [ self defaultRepository ]
			ifFalse: [ self defaultLGPLRepository ]).
		gofer addPackage: package name ].
	^ gofer