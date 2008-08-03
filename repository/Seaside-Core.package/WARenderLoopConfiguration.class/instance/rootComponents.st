defaults
rootComponents
	^ (WAPresenter allSubclasses select: [ :each | each canBeRoot ])
		asSortedCollection: [ :a :b | a name <= b name ]