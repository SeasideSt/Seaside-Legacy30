development
reloadApplications
	WADispatcher clearDefault.
	WAEntryPoint allSubclasses do: [ :each | each initialize ].
	WAComponent allSubclasses do: [ :each | each initialize ].