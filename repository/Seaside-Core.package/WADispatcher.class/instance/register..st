registration
register: anEntryPoint
	anEntryPoint name
		ifNil: [ self error: 'Unable to add unnamed entry point.' ].
	entryPoints
		at: anEntryPoint name
		put: (anEntryPoint setParent: self).
	self announceChangeOf: #entryPoint with: #add -> anEntryPoint.
	^ anEntryPoint