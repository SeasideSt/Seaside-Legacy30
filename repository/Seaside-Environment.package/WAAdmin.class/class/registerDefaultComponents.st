registration
registerDefaultComponents
	WAPresenter allSubclasses do: [ :each |
		(each class includesSelector: #initialize)
			ifTrue: [ each initialize ] ]