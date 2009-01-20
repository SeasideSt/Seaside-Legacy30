testing
testNotImplemented
	| context |
	#('OPTIONS' 'HEAD' 'PUT' 'DELETE' 'TRACE' 'CONNECT') do: [ :each |
		request := self requestWithMethod: each.
		context := WARequestContext request: request.
		[ handler handleFiltered: context ]
			on: WAResponseNotification
			do: [ :notification | ].
		self assert: context response status = 501 ].
	
	#('GET' 'POST') do: [ :each |
		request := self requestWithMethod: each.
		context := WARequestContext request: request.
		[ handler handleFiltered: context ]
			on: WAResponseNotification
			do: [ :notification | ].
		self assert: context response status ~= 501 ]