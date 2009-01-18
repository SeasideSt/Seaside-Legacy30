public
peekFor: aCharacter
	^self atEnd not
		and: [ (string at: position) = aCharacter
		and: [ 
			position := position + 1.
			true ] ]