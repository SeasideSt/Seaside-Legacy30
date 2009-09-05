registration
register: anEntryPoint
	anEntryPoint name
		ifNil: [ WAError signal: 'Unable to add unnamed entry point.' ].
	entryPoints
		at: anEntryPoint name
		put: (anEntryPoint setParent: self).
	^ anEntryPoint