accessing
requestContext
	"Answer the current request context, instance of WARequestContext."

	| context |
	context := WACurrentRequestContext value.
	^ context isNil
		ifTrue: [ WARequestContextNotFound raiseSignal ]
		ifFalse: [ context ]