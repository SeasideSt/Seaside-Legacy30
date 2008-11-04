accessing
itemsFor: aString
	^ (WAObject allSubclasses 
		select: [ :each | each name includesSubstring: aString caseSensitive: false ])
		asSortedCollection: [ :a :b | a name < b name ]