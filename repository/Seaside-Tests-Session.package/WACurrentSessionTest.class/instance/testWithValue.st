testing
testWithValue
	| session context |
	session := WASession new.
	context := WARequestContext request: nil response: nil.
	[ context
		push: session
		while: [ self assert: WACurrentSession value = session ] ]
			on: WARequestContextRequest
			do: [ :n | n resume: context ]