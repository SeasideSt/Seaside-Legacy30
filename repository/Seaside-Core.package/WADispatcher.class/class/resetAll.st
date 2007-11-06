initialization
resetAll
	"To have this todo list somewhere,
	May be used in the WADispatcher tests"
	default := nil.
	WAFileHandler initialize.
	WAFileHandler default.
	WAComponent allSubclasses do: [:ea | ea initialize]