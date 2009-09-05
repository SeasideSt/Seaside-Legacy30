registration
register: anEntryPoint at: aString
	aString ifNil: [ WAError signal: 'Unable to add unnamed entry point.' ].
	entryPoints
		at:  aString
		put: (anEntryPoint setParent: self).
	^ anEntryPoint