evaluating
value
	"Resume processing of a request. To ensure valid application state restore all registered states."

	states ifNotNil: [ states restore ].
	self withUnregisteredHandlerDo: [ self handleRequest ]