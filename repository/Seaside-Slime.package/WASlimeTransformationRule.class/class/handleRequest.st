transformations
handleRequest
	| rewriteRule |
	rewriteRule := ParseTreeRewriter new
		replaceMethod: 'handleRequest: `aRequest | `@temps | `@.statements' withValueFrom: [ :node |
			ParseTreeRewriter new
				replace: node arguments first name with: 'aRequestContext';
				executeTree: node.
			ParseTreeRewriter new
				replace: 'aRequestContext' with: 'aRequestContext request';
				executeTree: node body.
			node
				selector: #handleFiltered:;
				arguments: (Array with: (RBVariableNode named: 'aRequestContext'));
				yourself ].
	^ self new
		name: 'Rename WARequestHandler>>#handleRequest: to #handleFiltered:';
		rewriteUsing: rewriteRule;
		yourself