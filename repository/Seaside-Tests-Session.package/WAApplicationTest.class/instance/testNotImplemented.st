testing
testNotImplemented
	| context response |
	#('OPTIONS' 'HEAD' 'PUT' 'DELETE' 'TRACE' 'CONNECT') do: [ :each |
		request := self requestWithMethod: each.
		context := WARequestContext request: request.
		response := handler handleFiltered: context.
		self assert: response status = 501 ].
	
	#('GET' 'POST') do: [ :each |
		request := self requestWithMethod: each.
		context := WARequestContext request: request.
		response := handler handleFiltered: context.
		self assert: response status ~= 501 ]