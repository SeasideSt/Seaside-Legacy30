initialization
initialize
	super initialize.
	self matcher
		matches: '`html `msg with: ``@arg'
		do: [ :node :answer | 
			(answer isNil 
				and: [ node parent isCascade
				and: [ (node parent messages last = node) not 
				and: [ WASlime isBrushSelector: node receiver selector ] ] ]) 
					ifTrue: [ node ] ]