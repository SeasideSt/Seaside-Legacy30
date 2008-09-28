rendering-visitors
visitNumberAttribute: anAttribute with: html 
	html textInput
		size: 5;
		callback: [ :value | self configuration takeValueFromString: value forAttribute: anAttribute ];
		value: (self configuration valueForAttribute: anAttribute)