testing
testBalancedContextContinuations
	"Cause the ensure blocks in WAContext to fire - use balanced nesting and things work fine"
	| x session alternateSession tertiarySession quatenarySession context |
	session := WASession new.
	alternateSession := WASession new.
	tertiarySession := WASession new.
	quatenarySession := WASession new.
	context := WARequestContext request: nil response: nil.
	WACurrentRequestContext 
		use: context
		during: 
			[ WACurrentRequestContext value 
				push: tertiarySession
				while: 
					[ self assert: WACurrentRequestContext value session == tertiarySession.
					WACurrentRequestContext value 
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
									self assert: WACurrentRequestContext value session == quatenarySession ] ].
					x == 0 ifTrue: 
						[ self assert: WACurrentRequestContext value session == tertiarySession ].
					x == 1 ifTrue: 
						[ self assert: WACurrentRequestContext value session == alternateSession ] ] ].
	x ~~ 1 ifTrue: 
		[ WACurrentRequestContext 
			use: context
			during: 
				[ WACurrentRequestContext value 
					push: alternateSession
					while: 
						[ WACurrentRequestContext value 
							push: quatenarySession
							while: [ savedContinuation value: 1 ] ] ] ]