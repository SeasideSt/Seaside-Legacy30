testing
testRequestContextRequest
	| resumedValue |
	self should: [ WARequestContextRequest signal ] raise: WARequestContextNotFound.
	
	self
		shouldnt: [
			[ resumedValue := WARequestContextRequest signal ]
				on: WARequestContextRequest
				do: [ :exception | exception resume: 1 ] ]
		raise: WARequestContextNotFound.
	
	self assert: resumedValue == 1