testing
testEmptyPathConsumption
	| dispatcher |
	dispatcher := WADispatcher named: ''.
	handler := WANextUnconsumedPathElementRequestHandler named: 'tweets'.
	dispatcher register: handler.
	[ dispatcher handle: self requestContext ]
		on: WAResponseNotification
		do: [ :notification | "everything is fine" ].
	self assert: handler nextUnconsumedPathElement = 'tweets'.