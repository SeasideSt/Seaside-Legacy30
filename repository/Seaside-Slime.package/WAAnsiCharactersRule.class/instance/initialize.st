initialization
initialize
	super initialize.
	self rewriteRule
		replace: 'Character value: ``@expr' with: 'Character codePoint: ``@expr'