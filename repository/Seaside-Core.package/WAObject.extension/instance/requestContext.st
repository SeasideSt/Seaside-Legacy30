*seaside-core
requestContext
	"Answer the current request context, instance of WARequestContext."

	^ WACurrentRequestContext value ifNil: [ WARequestContextRequest raiseSignal ]