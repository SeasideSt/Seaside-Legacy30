accessing
entryPoints
	"Answer a dictionary of the visible entry points."

	^ self handler entryPoints select: [ :each | each isEntryPoint ]