seaside
sendsRenderContentOn
	| matcher |
	matcher := ParseTreeSearcher new.
	matcher
		matches: '`@object renderContentOn: `@html'
		do: [ :node :answer |
			(answer isNil
				and: [ (node receiver isVariable and: [ node receiver name = 'super' ]) not
				and: [ (#( visitPainter: ) includes: node methodNode selector) not ] ])
					ifTrue: [ node ] ].
	^ self new
		name: 'Sends #renderContentOn:';
		rationale: 'Client code should never send #renderContentOn: directly but only #render:';
		matcher: matcher;
		yourself