transformations
handleRequest
	| rewriteRule |
	rewriteRule := ParseTreeRewriter new
		replaceMethod: 'handleRequest: `aContext | `@temps | `@.statements' withValueFrom: [ :node |
			ParseTreeRewriter new
				replace: node arguments first name with: 'aRequestContext';
				executeTree: node.
			ParseTreeRewriter new
				replace: 'aRequestContext' with: 'aRequestContext request';
				executeTree: node body.
			node
				selector: #responseForContext:;
				arguments: (Array with: (RBVariableNode named: 'aRequestContext'));
				yourself ].
	^ self new
		name: 'WARequestHandler >> #handleRequest: ';
		rewriteUsing: rewriteRule;
		yourself