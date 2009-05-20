actions
respond: aBlock
	"Evaluate aBlock by passing in the current response and notify the current response handler to process generated response."

	aBlock value: self response.
	WAResponseNotification signal