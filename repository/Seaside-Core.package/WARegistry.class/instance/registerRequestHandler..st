private
registerRequestHandler: anObject
	| key |
	key := WAExternalID new: 16.
	self shouldCollectHandlers
		ifTrue: [ self unregisterExpiredHandlers ].
	self mutex critical: [
		handlersByKey at: key put: anObject.
		keysByHandler at: anObject put: key ].
	^ key