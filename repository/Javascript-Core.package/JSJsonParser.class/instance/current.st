private
current
	currentPosition > toParse size
		ifTrue: [ self syntaxError: 'premature end' ].
	^toParse at: currentPosition
	
