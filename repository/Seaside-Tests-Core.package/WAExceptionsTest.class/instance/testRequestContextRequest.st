testing
testRequestContextRequest
	| resumedValue |
	self should: [ WARequestContextRequest raiseSignal ] raise: WARequestContextNotFound.
	
	self
		shouldnt: [
			[ resumedValue := WARequestContextRequest raiseSignal ]
				on: WARequestContextRequest
				do: [ :exception | exception resume: 1 ] ]
		raise: WARequestContextNotFound.
	
	self assert: resumedValue == 1