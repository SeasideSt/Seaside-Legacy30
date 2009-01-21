testing
testContinuationInheritance
	"Verify that continuation inherits it's context from parent process"
	| x session alternateSession context |
	session := WASession new.
	alternateSession := WASession new.
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
					x == 0 
						ifTrue: [ self assert: WACurrentRequestContext value session == session ]
						ifFalse: 
							[ self assert: x = 1.
							self assert: WACurrentRequestContext value session == alternateSession ] ] ].
	x ~~ 1 ifTrue: 
		[ WACurrentRequestContext 
			use: context
			during: 
				[ WACurrentRequestContext value 
					push: alternateSession
					while: [ savedContinuation value: 1 ] ] ]