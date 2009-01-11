actions
run: aRule selectors: aSelectorCollection 
	self 
		run: aRule
		selectors: aSelectorCollection
		in: (Array 
			with: WASlimeMockComponent
			with: WASlimeMockObject
			with: WASlimeMockSession
			with: WASlimeMockWAObject)