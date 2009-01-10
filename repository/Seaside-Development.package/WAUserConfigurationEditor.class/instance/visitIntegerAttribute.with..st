rendering-visitors
visitIntegerAttribute: anAttribute with: html 
	html textInput
		size: 5;
		callback: [ :value | self configuration takeValueFromString: value forAttribute: anAttribute ];
		value: (self valueForAttribute: anAttribute)