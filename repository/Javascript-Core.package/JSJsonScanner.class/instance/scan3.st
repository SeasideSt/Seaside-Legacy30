generated-scanner
scan3
	
	[self recordMatch: #(12 ).
	self step.
	currentCharacter between: $0 and: $9] 
			whileTrue.
	(currentCharacter = $E or: [currentCharacter = $e]) ifTrue: [^ self scan4].
	currentCharacter = $. 
		ifTrue: 
			[self step.
			(currentCharacter between: $0 and: $9) 
				ifTrue: 
					[
					[self recordMatch: #(12 ).
					self step.
					currentCharacter between: $0 and: $9] 
							whileTrue.
					(currentCharacter = $E or: [currentCharacter = $e]) ifTrue: [^ self scan4].
					^ self reportLastMatch].
			^ self reportLastMatch].
	^ self reportLastMatch