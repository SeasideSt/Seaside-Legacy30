testing
testSimpleContinuation
	"verify that continuation reuses the process variable from the current process."
	| x continuation session context |
	session := WASession new.
	context := WARequestContext new.
	WACurrentRequestContext 
		use: context
		during: 
			[ WACurrentRequestContext value 
				push: session
				while: 
					[ x := WAContinuation currentDo: 
						[ :cc | 
						continuation := cc.
						false ].
					self assert: WACurrentSession value = session.
					x ifFalse: [ continuation value: true ].
					self assert: x ] ]