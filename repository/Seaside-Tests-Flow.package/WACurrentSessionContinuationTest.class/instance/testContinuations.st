testing
testContinuations
	"verify that process variable not copied by continuation."
	| x session context |
	session := WASession new.
	context := WARequestContext request: nil response: nil.
	WACurrentRequestContext 
		use: context
		during: 
			[ WACurrentRequestContext value 
				push: session
				while: 
					[ x := WAContinuation currentDo: 
						[ :cc | 
						savedContinuation := cc.
						0 ].
					x == 0 ifTrue: 
						[ self assert: WACurrentSession value == session.
						"invoke continuation for the first time - reuse process variables"
						savedContinuation value: 1 ].
					x == 1 ifTrue: 
						[ self assert: WACurrentSession value = session.
						WACurrentRequestContext reset.
						"invoke continuation for the second time - process variables reset"
						savedContinuation value: 2 ].
					"no value for WACurrentSession after continuation invoked for second time"
					self assert: x = 2.
					self assert: WACurrentSession value isNil ] ]