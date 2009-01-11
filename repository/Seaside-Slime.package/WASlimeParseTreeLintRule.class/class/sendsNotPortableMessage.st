seaside-portability
sendsNotPortableMessage
	| matcher |
	matcher := ParseTreeSearcher new.
	matcher 
		matchesAnyOf: (WASlime notPortableSelectors asArray collect: [ :each | '`@object' , (self genericPatternForSelector: each) ]) , #(
				'Dictionary withAll: `@args'
				'``@block on: ``@class do: [ | `@temps | `@.statements ]'
			)
		do: 
			[ :node :answer | 
			" not supported "
			" block argument expected "
			node ].
	^ self new
		matcher: matcher;
		name: 'Sends not portable message';
		rationale: 'Some methods are not portable accross different Smalltalk dialects.'