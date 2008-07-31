attributes
allDecorationClasses
	^ WADecoration allSubclasses asSortedCollection: [ :a :b | a name < b name ]