initialization
initialize
	super initialize.
	self rewriteRule
		replace: 'String tab' with: '(String with: Character tab)';
		replace: 'String cr' with: '(String with: Character cr)';
		replace: 'String lf' with: '(String with: Character lf)';
		replace: 'String crlf' with: '(String with: Character cr with: Character lf)';
		replace: 'String space' with: '(String with: Character space)';
		replace: '``@string findTokens: ``@arg'
			withValueFrom: [ :node | 
				(node arguments first isLiteral and: [
					node arguments first token value isCharacter ]) ifTrue: [
						node arguments: (Array with: (RBLiteralNode value:
									(String with: node arguments first token value))) ].
				node
					selector: #subStrings:;
					yourself ]