generated-scanner
scan4
	self step.
	(currentCharacter between: $0 and: $9) 
		ifTrue: 
			[
			[self recordMatch: #(12 ).
			self step.
			currentCharacter between: $0 and: $9] 
					whileTrue.
			^ self reportLastMatch].
	(currentCharacter = $+ or: [currentCharacter = $-]) 
		ifTrue: 
			[self step.
			(currentCharacter between: $0 and: $9) 
				ifTrue: 
					[
					[self recordMatch: #(12 ).
					self step.
					currentCharacter between: $0 and: $9] 
							whileTrue.
					^ self reportLastMatch].
			^ self reportLastMatch].
	^ self reportLastMatch