evaluating
value: aRequest
	"Resume processing of aRequest. To ensure valid application state restore all registered states."

	states ifNotNil: [ states restore ].
	self handleRequest: aRequest