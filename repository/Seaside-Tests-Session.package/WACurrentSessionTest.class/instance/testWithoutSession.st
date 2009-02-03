testing
testWithoutSession
	| context |
	context := WARequestContext request: nil response: nil.
	[ self assert: WACurrentSession value isNil ]
			on: WARequestContextRequest
			do: [ :n | n resume: context ]