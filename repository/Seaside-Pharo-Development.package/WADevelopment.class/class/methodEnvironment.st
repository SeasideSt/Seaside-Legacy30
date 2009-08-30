accessing
methodEnvironment
	"Answer a browser environment of all Seaside methods. Note that this is a pretty slow operation, especially when opening a browser on the resulting model."
	"self methodEnvironment open"
	
	| browserClass browserEnvironment |
	browserClass := (Smalltalk classNamed: #SelectorEnvironment)
		ifNil: [ self error: 'Please install the Smalltalk Refactoring Browser.' ].
	browserEnvironment := browserClass new label: 'Seaside Methods'.
	self packages do: [ :package |
		package methods
			do: [ :method | browserEnvironment addClass: method actualClass selector: method methodSymbol ] ].
	^ browserEnvironment