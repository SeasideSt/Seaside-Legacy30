actions
internalError: anError
	"This method should not call #handleDefault: because subclasses
	want to modify the behaviour for Warnings and Errors without
	changing the simple internal error behaviour."
	^ WAResponse internalError: anError