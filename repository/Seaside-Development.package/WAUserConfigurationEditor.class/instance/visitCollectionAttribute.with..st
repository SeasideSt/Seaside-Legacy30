rendering-visitors
visitCollectionAttribute: anAttribute with: html
	| expression |
	expression := self configuration 
		expressionAt: anAttribute key
		ifAbsent: [ ^ self ].
	(expression isKindOf: WAValueExpression)
		ifTrue: [ 
			html multiSelect
				list: anAttribute options;
				on: #value of: expression ]
		ifFalse: [
			html multiSelect
				title: 'removals';
				list: anAttribute options;
				on: #removals of: expression.
			html multiSelect
				title: 'additions';
				list: anAttribute options;
				on: #additions of: expression ]