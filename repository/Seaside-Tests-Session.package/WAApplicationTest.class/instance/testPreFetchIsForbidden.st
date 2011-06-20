tests
testPreFetchIsForbidden
	| context request |

	request := self requestWithMethod: 'GET'.
	request headers at: 'x-moz' put: 'prefetch'.
		
	context := WARequestContext request: request response: WABufferedResponse new.
	[ handler handle: context ]
		on: WAResponseNotification
		do: [ :notification | ].
	self assert: context response status = WAResponse statusForbidden.