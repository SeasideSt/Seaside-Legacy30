initialization
initialize
	super initialize.
	self matcher 
		matchesAnyOf: (
			WASlime notPortableSelectors asArray 
				collect: [ :each | '`@object' , (self genericPatternForSelector: each) ]) , 
			#( 'Dictionary withAll: `@args' )
		do: [ :node :answer | node ].