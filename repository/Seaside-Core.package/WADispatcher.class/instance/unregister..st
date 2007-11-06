registration
unregister: anEntryPoint
	entryPoints removeKey: anEntryPoint name ifAbsent: [ ^ nil ].
	self announceChangeOf: #entryPoint with: #add->anEntryPoint.
	^ anEntryPoint unregistered