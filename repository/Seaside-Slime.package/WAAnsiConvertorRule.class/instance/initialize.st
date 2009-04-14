initialization
initialize
	super initialize.
	self rewriteRule
		replace: '``@object asString' with: '``@object seasideString';
		replace: '``@object asInteger' with: '``@object seasideInteger'