as yet unclassified
initialize
	super initialize.
	children := JQFunctionalTest allSubclasses 
		asSortedCollection: [ :a :b | a name < b name ].
	children := children collect: [ :each | each new ]