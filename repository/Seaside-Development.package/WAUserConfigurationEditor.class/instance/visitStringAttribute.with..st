rendering-visitors
visitStringAttribute: anAttribute with: html 
	html textInput
		callback: [ :value | self configuration takeValueFromString: value forAttribute: anAttribute ];
		value: (self valueForAttribute: anAttribute)