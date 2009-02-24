initialization
initialize
	super initialize.
	self rewriteRule
		replaceMethod: 'handleRequest: `aRequest | `@temps | `@.statements'
		withValueFrom: [ :node |
			ParseTreeRewriter new
				replace: node arguments first name with: 'aRequestContext';
				executeTree: node.
			ParseTreeRewriter new
				replace: 'aRequestContext' with: 'aRequestContext request';
				executeTree: node body.
			node
				selector: #handleFiltered:;
				arguments: (Array with: (RBVariableNode named: 'aRequestContext'));
				yourself ]