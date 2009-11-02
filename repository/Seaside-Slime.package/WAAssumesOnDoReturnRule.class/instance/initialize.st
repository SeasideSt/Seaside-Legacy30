initialization
initialize
	super initialize.
	self matcher
		matches: '`@.block on: `@.expr do: `@.handler ' do: [ :node :answer |
			(node isDirectlyUsed 
				and: [ node arguments last isBlock
				and: [ node arguments last arguments notEmpty 
				and: [
					| messages exception |
					exception := node arguments last arguments first.
					node arguments last allChildren noneSatisfy: [ :ea |
						ea isReturn or: [
						ea isMessage and: [
							ea receiver isVariable and: [ 
							(ea receiver = exception) and: [
							self exceptionEscapeSelectors includes: ea selector ] ] ] ] ] ] ] ])
								ifTrue: [ node ]
								ifFalse: [ answer ] ]