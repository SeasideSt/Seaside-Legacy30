accessing
gofer
	"Answer a gopher instance."
	
	| goferClass gofer |
	goferClass := (Smalltalk classNamed: #Gofer)
		ifNil: [ self error: 'Please install Gofer.' ].
	gofer := goferClass new.
	self loadedVersionNames  
		do: [:aName | gofer add: aName ].
	^ gofer