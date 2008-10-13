generated-scanner
scan1
	
	[self step.
	currentCharacter <= $! 
		or: [(currentCharacter between: $# and: $[) or: [currentCharacter >= $]]]] 
			whileTrue.
	currentCharacter = $" ifTrue: [^ self recordAndReportMatch: #(11 )].
	currentCharacter = $\ 
		ifTrue: 
			[self step.
			currentCharacter <= $ÿ ifTrue: [^ self scan1].
			^ self reportLastMatch].
	^ self reportLastMatch