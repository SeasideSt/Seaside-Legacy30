visiting
visitCollectionAttribute: anAttribute
	| expression listSize |
	expression := self configuration 
		expressionAt: anAttribute key
		ifAbsent: [ ^ self ].
	listSize := (anAttribute options size min: 10) max: 2.
	(expression isKindOf: WAValueExpression)
		ifTrue: [ "its an override"
			self html multiSelect
				list: anAttribute options;
				size: listSize;
				on: #value of: expression ]
		ifFalse: ["addition and removals, how to get the inherited ones"
			self html multiSelect
				size: listSize;
				title: 'Removals';
				list: anAttribute options;
				on: #removals of: expression.
			self html multiSelect
				size: listSize;
				title: 'Additions';
				list: anAttribute options;
				on: #additions of: expression ]