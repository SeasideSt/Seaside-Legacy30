accessing
nameOfEntryPoint: anEntryPoint
	"Answer the name of the given entry point. Signal an error the given entry point is not registered in the receiver."
	^ entryPoints keyAtValue: anEntryPoint