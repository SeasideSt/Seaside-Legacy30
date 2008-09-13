development
reloadApplications
	WADispatcher resetDefault.
	WAEntryPoint allSubclasses do: [ :each | each initialize ].
	WAComponent allSubclasses do: [ :each | each initialize ].