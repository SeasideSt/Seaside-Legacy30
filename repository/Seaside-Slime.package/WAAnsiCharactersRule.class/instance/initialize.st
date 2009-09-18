initialization
initialize
	super initialize.
	self rewriteRule
		replace: 'Character value: ``@expr' with: 'Character codePoint: ``@expr';
		replace: 'String tab' with: '(String with: Character tab)';
		replace: 'String cr' with: '(String with: Character cr)';
		replace: 'String lf' with: '(String with: Character lf)';
		replace: 'String space' with: '(String with: Character space)'