transformations
handleRequest
	| rewriteRule |
	rewriteRule := ParseTreeRewriter new
       replaceMethod: 'handleRequest: `aContext | `@temps | `@.statements' withValueFrom: [ :node |
			| argument oldName |
			argument := node arguments first.
			node selector: #responseForContext:.
			oldName := argument name.
			argument name: 'aRequestContext'.
               ParseTreeRewriter new
                       replace: oldName with: 'aRequestContext request';
                       executeTree: node body ].
	^self new
		name: 'WARequestHandler >> #handleRequest: ';
		rewriteUsing: rewriteRule;
		yourself