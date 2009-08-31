testing
testPathConsumption
	| dispatcher |
	dispatcher := WADispatcher named: 'tweets'.
	handler := WANextUnconsumedPathElementRequestHandler named: 'kentbeck'.
	dispatcher register: handler.
	[ dispatcher handle: self requestContext ]
		on: WAResponseNotification
		do: [ :notification | "everything is fine" ].
	self assert: handler nextUnconsumedPathElement = 'kentbeck'.