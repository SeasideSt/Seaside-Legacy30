accessing
browserEnvironment
	"Answer a browser environment of all loaded Seaside code."
	"self browserEnvironment open"
	
	| browserEnvironmentClass browserEnvironment |
	browserEnvironmentClass := (Smalltalk classNamed: #BrowserEnvironment)
		ifNil: [ self error: 'Please install the Smalltalk Refactoring Browser.' ].
	browserEnvironment := browserEnvironmentClass new 
		forPackageNames: (self packages collect: [ :each | each packageName ]).
	^ browserEnvironment label: 'Seaside Packages'