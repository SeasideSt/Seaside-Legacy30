triggers
triggerEvent: aBlock
	"Triggers and serializes a JavaScript event object."

	aBlock fixCallbackTemps.
	self
		callback: [ :value |
			aBlock value: (JSJsonParser
				parse: value 
				startingAt: JSJsonParser startingStateForValue) ]
		value: (JSStream on: 'Object.toJSON(event?event:window.event)')