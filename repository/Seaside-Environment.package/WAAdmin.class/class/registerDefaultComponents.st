registration
registerDefaultComponents
	WAComponent allSubclasses do: [ :each |
		(each class includesSelector: #initialize)
			ifTrue: [ each initialize ] ]