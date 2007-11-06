accessing
entryPoints
	^ super entryPoints select: [ :each | each isDispatcher or: [ each isApplication ] ]