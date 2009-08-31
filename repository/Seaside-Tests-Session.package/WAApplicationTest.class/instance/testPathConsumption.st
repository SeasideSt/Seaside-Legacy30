testing
testPathConsumption
	| context request |
	request := self requestWithMethod: 'GET'.
	context := WARequestContext request: request response: WABufferedResponse new.
	self assert: context consumer peek = 'app'.
	[ handler handle: context ]
		on: WAResponseNotification
		do: [ :notification | ].
	self assert: context consumer peek = 'oneo'