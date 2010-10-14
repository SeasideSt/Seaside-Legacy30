initialization
initialize
	super initialize.
	self rewriteRule
		replace: 'String tab' with: '(String with: Character tab)';
		replace: 'String cr' with: '(String with: Character cr)';
		replace: 'String lf' with: '(String with: Character lf)';
		replace: 'String crlf' with: '(String with: Character cr with: Character lf)';
		replace: 'String space' with: '(String with: Character space)';
		replace: '``@string findTokens: ``@arg' withValueFrom: [ :node |
			| argument |
			argument := node arguments first.
			argument isLiteral ifTrue: [ 
				argument value isArray
					ifTrue: [ argument replaceWith: (RBLiteralNode value: (String withAll: argument value)) ].
				argument value isCharacter
					ifTrue: [ argument replaceWith: (RBLiteralNode value: (String with: argument value)) ] ].
			node
				selector: #subStrings:;
				yourself ]