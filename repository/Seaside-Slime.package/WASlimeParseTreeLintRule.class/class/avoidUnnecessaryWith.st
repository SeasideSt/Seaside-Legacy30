seaside
avoidUnnecessaryWith
	| matcher |
	matcher := ParseTreeSearcher new.
	matcher 
		matches: '`html `msg with: ``@arg'
		do: 
			[ :node :answer | 
			(answer isNil and: 
				[ node parent isCascade not and: 
					[ (WASlime isBrushSelector: node receiver selector) and: 
						[ (WASlime isBrushSelector: node receiver selector , ':') and: [ (WASlime isBrushSelector: node methodNode selector) not ] ] ] ]) ifTrue: [ node ] ].
	^ self new
		name: 'Avoid unnecessary #with:';
		rationale: 'Sending #with: is only required if attributes are specified too.';
		matcher: matcher;
		yourself