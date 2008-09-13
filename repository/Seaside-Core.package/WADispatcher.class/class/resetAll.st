initialization
resetAll
	"To have this todo list somewhere,
	May be used in the WADispatcher tests"
	
	default := nil.
	WAEntryPoint allSubclasses do: [ :each | each initialize ].
	WAComponent allSubclasses do: [ :each | each initialize ].