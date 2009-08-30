accessing
classEnvironment
	"Answer a browser environment of all Seaside classes."
	"self classEnvironment open"
	
	| browserClass browserEnvironment |
	browserClass := (Smalltalk classNamed: #ClassEnvironment)
		ifNil: [ self error: 'Please install the Smalltalk Refactoring Browser.' ].
	browserEnvironment := browserClass new label: 'Seaside Classes'.
	self packages do: [ :package |
		package classesAndMetaClasses
			do: [ :class | browserEnvironment addClass: class ] ].
	^ browserEnvironment