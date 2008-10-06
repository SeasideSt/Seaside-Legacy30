testing
testWithValue
	| session context |
	session := WASession new.
	context := WARequestContext new.
	WACurrentRequestContext 
		use: context
		during: 
			[ WACurrentRequestContext value 
				push: session
				while: [ self assert: WACurrentSession value = session ] ]