generated-scanner
scanForToken
	self step.
	((currentCharacter between: $A and: $Z) 
		or: [currentCharacter = $_ or: [currentCharacter between: $a and: $z]]) 
			ifTrue: 
				[
				[self recordMatch: #(10 ).
				self step.
				(currentCharacter between: $0 and: $9) or: 
						[(currentCharacter between: $A and: $Z) 
							or: [currentCharacter = $_ or: [currentCharacter between: $a and: $z]]]] 
						whileTrue.
				^ self reportLastMatch].
	(currentCharacter between: $0 and: $9) ifTrue: [^ self scan3].
	((currentCharacter between: Character tab and: Character cr) 
		or: [currentCharacter = Character space]) 
			ifTrue: 
				[
				[self recordMatch: #whitespace.
				self step.
				(currentCharacter between: Character tab and: Character cr) 
					or: [currentCharacter = Character space]] 
						whileTrue.
				^ self reportLastMatch].
	currentCharacter = $" ifTrue: [^ self scan1].
	currentCharacter = $' ifTrue: [^ self scan2].
	currentCharacter = $, ifTrue: [^ self recordAndReportMatch: #(3 )].
	currentCharacter = $- 
		ifTrue: 
			[self step.
			(currentCharacter between: $0 and: $9) ifTrue: [^ self scan3].
			^ self reportLastMatch].
	currentCharacter = $/ 
		ifTrue: 
			[self step.
			currentCharacter = $* ifTrue: [^ self recordAndReportMatch: #scanComment].
			currentCharacter = $/ 
				ifTrue: 
					[
					[self recordMatch: #comment.
					self step.
					currentCharacter <= Character tab or: 
							[(currentCharacter between: (Character value: 11) and: Character newPage) 
								or: [currentCharacter >= (Character value: 14)]]] 
							whileTrue.
					currentCharacter = Character lf 
						ifTrue: [^ self recordAndReportMatch: #comment].
					currentCharacter = Character cr 
						ifTrue: 
							[self recordMatch: #comment.
							self step.
							currentCharacter = Character lf 
								ifTrue: [^ self recordAndReportMatch: #comment].
							^ self reportLastMatch].
					^ self reportLastMatch].
			^ self reportLastMatch].
	currentCharacter = $: ifTrue: [^ self recordAndReportMatch: #(4 )].
	currentCharacter = $[ ifTrue: [^ self recordAndReportMatch: #(8 )].
	currentCharacter = $] ifTrue: [^ self recordAndReportMatch: #(9 )].
	currentCharacter = ${ ifTrue: [^ self recordAndReportMatch: #(5 )].
	currentCharacter = $} ifTrue: [^ self recordAndReportMatch: #(2 )].
	^ self reportLastMatch