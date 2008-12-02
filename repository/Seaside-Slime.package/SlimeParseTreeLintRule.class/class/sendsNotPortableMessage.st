seaside-portability
sendsNotPortableMessage
	| matcher |
	matcher := ParseTreeSearcher new.
	matcher
		matchesAnyOf: (Slime notPortableSelectors asArray
			collect: [ :each | '`@object' , (self genericPatternForSelector: each) ]) , 
			#('Dictionary withAll: `@args')
		do: [ :node :answer | node ].
	^ self new
		matcher: matcher;
		name: 'Sends not portable message';
		rationale: 'Some methods are not portable accross different Smalltalk dialects.'