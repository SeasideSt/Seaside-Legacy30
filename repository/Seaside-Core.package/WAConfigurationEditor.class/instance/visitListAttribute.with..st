rendering-visitors
visitListAttribute: anAttribute with: html 
	html select
		beOptional;
		optionalLabel: '(none)';
		list: anAttribute options asArray;
		selected: (configuration valueForAttribute: anAttribute);
		callback: [ :value | (configuration takeValue: value forAttribute: anAttribute ) ]