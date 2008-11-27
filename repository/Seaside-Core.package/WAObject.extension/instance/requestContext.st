*Seaside-Core
requestContext
	"Answer the current request context, instance of WARequestContext."

	^ WACurrentRequestContext value ifNil: [ WARequestContextNotFound raiseSignal ]