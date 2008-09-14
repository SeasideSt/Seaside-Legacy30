development
reloadApplications
	WADispatcher resetDefault.
	WASystemConfiguration clearAllDescriptions.
	WAEntryPoint allSubclasses do: [ :each | 
		(each class includesSelector: #initialize)
			ifTrue: [ each initialize ] ].
	WAComponent allSubclasses do: [ :each |
		(each class includesSelector: #initialize)
			ifTrue: [ each initialize ] ]