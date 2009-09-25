visiting
visitCollectionAttributeTest: anAttribute
	| listSize |
	self configuration 
		expressionAt: anAttribute key
		ifAbsent: [ ^ self ].
	listSize := (anAttribute options size min: 10) max: 2.
	self html select
			size: listSize;
			title: 'Current';
			list: (self configuration at: anAttribute key)