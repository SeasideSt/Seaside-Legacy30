rendering-visitors
visitListAttribute: anAttribute with: html
	html select
		list: (Array with: nil), anAttribute options asArray;
		selected: (configuration valueForAttribute: anAttribute);
		callback: [ :value | (configuration takeValue: value forAttribute: anAttribute ) ];
		labels: [ :each | each ifNil: ['None'] ifNotNil: [ each displayString] ]