rendering-visitors
visitListAttribute: anAttribute with: html 
	html select
		beOptional;
		optionalLabel: '(none)';
		list: anAttribute options asArray;
		selected: (self configuration valueForAttribute: anAttribute);
		callback: [ :value | self configuration takeValue: value forAttribute: anAttribute ]