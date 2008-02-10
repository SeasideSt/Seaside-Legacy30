registration
unregister: anEntryPoint
	entryPoints removeKey: anEntryPoint name ifAbsent: [ ^ nil ].
	^ anEntryPoint unregistered