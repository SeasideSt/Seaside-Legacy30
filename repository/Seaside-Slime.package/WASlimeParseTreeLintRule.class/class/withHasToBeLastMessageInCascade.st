seaside
withHasToBeLastMessageInCascade
	| matcher |
	matcher := ParseTreeSearcher new.
	matcher 
		matches: '`html `msg with: ``@arg'
		do: 
			[ :node :answer | 
			(answer isNil and: 
				[ node parent isCascade and: 
					[ (node parent messages last = node) not and: [ WASlime isBrushSelector: node receiver selector ] ] ]) ifTrue: [ node ] ].
	^ self new
		name: '#with: has to be last message in cascade';
		rationale: 'Sending #with: triggers serialization of the brush attributes, any attribute being specified afterwards has no effect.';
		matcher: matcher;
		yourself