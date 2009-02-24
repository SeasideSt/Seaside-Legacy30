initialization
initialize
	super initialize.
	self rewriteRule
		replace: 'expired 
			| `@temps | 
			`@.Statements'
		with: 'unregistered
			| `@temps | 
			`@.Statements'