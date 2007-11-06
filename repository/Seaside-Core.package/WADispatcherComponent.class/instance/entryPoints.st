accessing
entryPoints
	"Answer a dictionary with the visible entry points of the dispatcher."

	^ self dispatcher entryPoints select: [ :each | each isEntryPoint ]