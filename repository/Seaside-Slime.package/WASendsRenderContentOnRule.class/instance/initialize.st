initialization
initialize
	super initialize.
	self matcher
		matches: '`@object renderContentOn: `@html'
		do: [ :node :answer |
			(answer isNil
				and: [ (node receiver isVariable and: [ node receiver name = 'super' ]) not
				and: [ (#( visitPainter: ) includes: node methodNode selector) not ] ])
					ifTrue: [ node ] ]