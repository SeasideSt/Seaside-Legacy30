development
reloadApplications
	WADispatcher resetDefault.
	WASystemConfiguration clearAllDescriptions.
	self registerDefaultRequestHandlers.
	WAComponent allSubclasses do: [ :each |
		(each class includesSelector: #initialize)
			ifTrue: [ each initialize ] ]