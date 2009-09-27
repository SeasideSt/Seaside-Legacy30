visiting
visitCollectionAttribute: anAttribute
	| expression |
	expression := self configuration 
		expressionAt: anAttribute key
		ifAbsent: [ ^ self ].
	(expression isKindOf: WAValueExpression)
		ifTrue: [ 
			self html multiSelect
				list: anAttribute options;
				on: #value of: expression ]
		ifFalse: [
			self html multiSelect
				title: 'removals';
				list: anAttribute options;
				on: #removals of: expression.
			self html multiSelect
				title: 'additions';
				list: anAttribute options;
				on: #additions of: expression ]